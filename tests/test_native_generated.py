import hashlib
import os
from pathlib import Path

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import native
from amd_strix_halo_kernels.api import explicit_mm
from amd_strix_halo_kernels.metadata import (
    Epilogue,
    GemmLayout,
    KernelSchedule,
    OperandDType,
    ScaleMode,
    ScaleSpec,
)
from amd_strix_halo_kernels.native import dispatch_runtime_status, hsaco_dir, native_library_path
from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major, pack_rhs_subchannel_scales
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import LaunchShape, representative_generation_shape
from amd_strix_halo_kernels.torch_ops import register_torch_ops, torch_gemm


STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3


def stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def _native_test_root() -> Path | None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    if configured:
        return Path(configured)
    library = native_library_path()
    return library.parent if library.exists() else None


@pytest.fixture(autouse=True)
def _use_configured_native_root(monkeypatch) -> None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    if configured:
        root = Path(configured)
        if not (root / native.NATIVE_LIBRARY_NAME).exists():
            pytest.fail(f"AMD_STRIX_HALO_NATIVE_ROOT has no {native.NATIVE_LIBRARY_NAME}: {root}")
        monkeypatch.setattr(native, "package_root", lambda: root)


def require_native_generated_kernels(*, root: Path | None = None) -> Path:
    if not torch.cuda.is_available() or torch.version.hip is None:
        pytest.skip("native generated kernels require a ROCm torch device")
    library = native_library_path(root=root)
    if not library.exists() or not hsaco_dir(root=root).exists():
        pytest.skip("native generated kernels are only available from built wheels")
    status = dispatch_runtime_status(library)
    if not status.has_linked_kernels:
        pytest.skip("native dispatch library was built without linked HSACO/HIP support")
    return library.parent


def scale_tensors(kernel, shape):
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.05, 0.15, shape.m, dtype=torch.bfloat16)
        b_scale = torch.linspace(0.15, 0.05, b_cols, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = kernel.scale.subchannel_size or 1
    scale_cols = (shape.k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.05, 0.15, shape.m * scale_cols, dtype=torch.bfloat16).reshape(
        shape.m, scale_cols
    )
    b_scale_logical = torch.linspace(0.15, 0.05, b_cols * scale_cols, dtype=torch.bfloat16).reshape(
        b_cols, scale_cols
    )
    b_scale = pack_rhs_subchannel_scales(b_scale_logical)
    return a_scale, b_scale


def validation_tolerances(kernel):
    return STRICT_RTOL, STRICT_ATOL


def assert_reference_has_signal(expected) -> None:
    max_abs = float(expected.float().abs().max())
    assert max_abs >= 10 * STRICT_ATOL, f"reference signal is too small: max_abs={max_abs}"


def kernel_args_from_logical(a_q, b_q, kernel):
    a_trans = kernel.layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = kernel.layout in {GemmLayout.NT, GemmLayout.TT}
    if kernel.a_dtype is OperandDType.INT4:
        a_arg = (
            pack_int4_k_major(a_q).transpose(0, 1).contiguous()
            if a_trans
            else pack_int4_k_major(a_q)
        )
        b_arg = (
            pack_int4_k_major(b_q.transpose(0, 1))
            if b_trans
            else pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
        )
        return a_arg, b_arg
    a_arg = a_q.transpose(0, 1).contiguous() if a_trans else a_q
    b_arg = b_q.transpose(0, 1).contiguous() if b_trans else b_q
    return a_arg, b_arg


@pytest.mark.parametrize("kernel", default_registry.all(), ids=lambda kernel: kernel.kernel_id)
def test_native_generated_kernel_matches_fake_quant_reference(kernel) -> None:
    require_native_generated_kernels()
    shape = representative_generation_shape(kernel)
    torch.manual_seed(stable_seed(kernel.kernel_id))
    bits = 4 if kernel.a_dtype is OperandDType.INT4 else 8
    a_bf16 = torch.randn((shape.m, shape.k), dtype=torch.bfloat16) * 0.1
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    b_bf16 = torch.randn((shape.k, b_cols), dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=bits, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=bits, scale=0.1)
    a_arg, b_arg = kernel_args_from_logical(a_q, b_q, kernel)
    a_scale, b_scale = scale_tensors(kernel, shape)

    expected = explicit_mm(
        a_arg,
        b_arg,
        kernel=kernel,
        a_scale=a_scale,
        b_scale=b_scale,
        use_reference=True,
    )
    assert_reference_has_signal(expected)
    actual = explicit_mm(
        a_arg.to("cuda"),
        b_arg.to("cuda"),
        kernel=kernel,
        a_scale=a_scale.to("cuda"),
        b_scale=b_scale.to("cuda"),
    )
    torch.cuda.synchronize()

    expected_dtype = torch.float32 if kernel.tile.split_k > 1 else torch.bfloat16
    assert actual.dtype == expected_dtype
    rtol, atol = validation_tolerances(kernel)
    torch.testing.assert_close(actual.cpu(), expected, rtol=rtol, atol=atol)


def test_torch_custom_op_dispatches_packaged_generated_kernel() -> None:
    require_native_generated_kernels()
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )
    shape = representative_generation_shape(kernel)
    torch.manual_seed(stable_seed(f"{kernel.kernel_id}-custom-op-random"))
    a_bf16 = torch.randn((shape.m, shape.k), dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((shape.k, shape.n), dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.1)
    a = pack_int4_k_major(a_q)
    b = pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
    a_scale, b_scale = scale_tensors(kernel, shape)
    expected = explicit_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, use_reference=True)
    assert_reference_has_signal(expected)

    register_torch_ops()
    assert hasattr(torch.ops.amd_strix_halo_kernels, "gemm")
    out = torch_gemm(a.to("cuda"), b.to("cuda"), kernel=kernel, a_scale=a_scale.to("cuda"), b_scale=b_scale.to("cuda"))
    torch.cuda.synchronize()

    assert out.dtype == torch.bfloat16
    rtol, atol = validation_tolerances(kernel)
    torch.testing.assert_close(out.cpu(), expected, rtol=rtol, atol=atol)


@pytest.mark.parametrize(
    ("layout", "scale", "schedule", "split_k", "contraction"),
    [
        pytest.param(
            GemmLayout.NN,
            ScaleSpec(ScaleMode.PER_CHANNEL),
            KernelSchedule.STANDARD,
            1,
            32,
            id="standard-nn-pc-sk1",
        ),
        pytest.param(
            GemmLayout.NT,
            ScaleSpec(ScaleMode.SUBCHANNEL, 32),
            KernelSchedule.STANDARD,
            1,
            128,
            id="standard-nt-sc32-sk1",
        ),
        pytest.param(
            GemmLayout.TN,
            ScaleSpec(ScaleMode.PER_CHANNEL),
            KernelSchedule.STANDARD,
            2,
            64,
            id="standard-tn-pc-sk2",
        ),
        pytest.param(
            GemmLayout.NN,
            ScaleSpec(ScaleMode.SUBCHANNEL, 32),
            KernelSchedule.PERSISTENT,
            1,
            128,
            id="persistent-nn-sc32-sk1",
        ),
    ],
)
def test_native_dense_int4_cudagraph_replays_dynamic_operands_and_scales(
    layout,
    scale,
    schedule,
    split_k,
    contraction,
) -> None:
    require_native_generated_kernels(root=_native_test_root())

    rows, cols = 64, 512
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=rows,
        n=cols,
        k=contraction,
        layout=layout,
        split_k=split_k,
        schedule=schedule,
    )
    torch.manual_seed(stable_seed(f"{kernel.kernel_id}-cudagraph"))
    logical_inputs = [
        (
            torch.randint(-8, 8, (rows, contraction), dtype=torch.int8),
            torch.randint(-8, 8, (contraction, cols), dtype=torch.int8),
        )
        for _ in range(2)
    ]
    packed_inputs = [kernel_args_from_logical(a_q, b_q, kernel) for a_q, b_q in logical_inputs]
    base_a_scale, base_b_scale = scale_tensors(kernel, LaunchShape(rows, cols, contraction))
    replay_scales = [
        (base_a_scale, base_b_scale),
        ((base_a_scale * 0.75).to(torch.bfloat16), (base_b_scale * 1.125).to(torch.bfloat16)),
    ]

    a = packed_inputs[0][0].to("cuda")
    b = packed_inputs[0][1].to("cuda")
    a_scale = replay_scales[0][0].to("cuda")
    b_scale = replay_scales[0][1].to("cuda")

    def run():
        return explicit_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale)

    run()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = run()

    observed = []
    for replay_index in (0, 1, 1):
        a_host, b_host = packed_inputs[replay_index]
        a_scale_host, b_scale_host = replay_scales[replay_index]
        a.copy_(a_host)
        b.copy_(b_host)
        a_scale.copy_(a_scale_host)
        b_scale.copy_(b_scale_host)
        graph.replay()
        torch.cuda.synchronize()
        expected = explicit_mm(
            a_host,
            b_host,
            kernel=kernel,
            a_scale=a_scale_host,
            b_scale=b_scale_host,
            use_reference=True,
        )
        assert_reference_has_signal(expected)
        actual = captured.cpu().clone()
        rtol, atol = validation_tolerances(kernel)
        torch.testing.assert_close(actual, expected, rtol=rtol, atol=atol)
        observed.append(actual)

    assert not torch.equal(observed[0], observed[1])
    torch.testing.assert_close(observed[1], observed[2], rtol=0.0, atol=0.0)

import hashlib

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels.api import explicit_mm
from amd_strix_halo_kernels.metadata import Epilogue, GemmLayout, OperandDType, ScaleMode, ScaleSpec
from amd_strix_halo_kernels.native import dispatch_runtime_status, hsaco_dir, native_library_path
from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major, pack_rhs_subchannel_scales
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import representative_generation_shape
from amd_strix_halo_kernels.torch_ops import register_torch_ops, torch_gemm


def stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def require_native_generated_kernels() -> None:
    if not torch.cuda.is_available() or torch.version.hip is None:
        pytest.skip("native generated kernels require a ROCm torch device")
    library = native_library_path()
    if not library.exists() or not hsaco_dir().exists():
        pytest.skip("native generated kernels are only available from built wheels")
    status = dispatch_runtime_status(library)
    if not status.has_linked_kernels:
        pytest.skip("native dispatch library was built without linked HSACO/HIP support")


def scale_tensors(kernel, shape):
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, shape.m, dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, b_cols, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = kernel.scale.subchannel_size or 1
    scale_cols = (shape.k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.80, 1.20, shape.m * scale_cols, dtype=torch.bfloat16).reshape(shape.m, scale_cols)
    b_scale_logical = torch.linspace(1.15, 0.85, b_cols * scale_cols, dtype=torch.bfloat16).reshape(
        b_cols, scale_cols
    )
    b_scale = pack_rhs_subchannel_scales(b_scale_logical)
    return a_scale, b_scale


def validation_tolerances(kernel):
    if kernel.output_dtype == "bfloat16":
        return 8.0e-3, 1.0e-2
    atol = 1.0e-2 if kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} else 1.0e-3
    return 1.0e-4, atol


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

    register_torch_ops()
    assert hasattr(torch.ops.amd_strix_halo_kernels, "gemm")
    out = torch_gemm(a.to("cuda"), b.to("cuda"), kernel=kernel, a_scale=a_scale.to("cuda"), b_scale=b_scale.to("cuda"))
    torch.cuda.synchronize()

    assert out.dtype == torch.bfloat16
    rtol, atol = validation_tolerances(kernel)
    torch.testing.assert_close(out.cpu(), expected, rtol=rtol, atol=atol)

import hashlib
from types import SimpleNamespace

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels.metadata import Epilogue, GemmLayout, OperandDType, ScaleMode, ScaleSpec
from amd_strix_halo_kernels.quant import (
    fake_quant_int,
    pack_int4_k_major,
    pack_rhs_subchannel_scales,
    unpack_int4_k_major,
)
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import representative_generation_shape
from amd_strix_halo_kernels.api import explicit_mm, fused_swiglu_up_gate, mm


def test_fake_quant_int_rejects_non_positive_scale() -> None:
    x = torch.ones((2,), dtype=torch.bfloat16)
    with pytest.raises(ValueError, match="scale must be positive"):
        fake_quant_int(x, bits=4, scale=0.0)
    with pytest.raises(ValueError, match="scale must be positive"):
        fake_quant_int(x, bits=4, scale=-0.1)


def test_fake_quant_int_rejects_non_scalar_scale() -> None:
    x = torch.ones((2,), dtype=torch.bfloat16)
    with pytest.raises(TypeError, match="scalar"):
        fake_quant_int(x, bits=4, scale=torch.ones((2,)))


def test_int4_pack_unpack_roundtrip() -> None:
    x = torch.tensor([[-8, -1, 0, 7], [3, -4, 5, -6]], dtype=torch.int8)
    packed = pack_int4_k_major(x)
    assert packed.dtype is torch.uint8
    torch.testing.assert_close(unpack_int4_k_major(packed), x)


def test_int4_pack_pads_odd_k_with_zero() -> None:
    x = torch.tensor([[1, -2, 3]], dtype=torch.int8)
    packed = pack_int4_k_major(x)

    torch.testing.assert_close(unpack_int4_k_major(packed), torch.tensor([[1, -2, 3, 0]], dtype=torch.int8))


def test_pack_rhs_subchannel_scales_swaps_trailing_axes() -> None:
    logical = torch.arange(2 * 3 * 4, dtype=torch.bfloat16).reshape(2, 3, 4)
    packed = pack_rhs_subchannel_scales(logical)

    assert tuple(packed.shape) == (2, 4, 3)
    torch.testing.assert_close(packed, logical.transpose(-2, -1).contiguous())


def test_reference_mm_matches_integer_matmul() -> None:
    a = torch.tensor([[1, -2, 3, -4], [5, 6, -7, 0]], dtype=torch.int8)
    b = torch.tensor([[1, 2], [-3, 4], [5, -6], [7, 0]], dtype=torch.int8)
    ap = pack_int4_k_major(a)
    bp = pack_int4_k_major(b.transpose(0, 1)).transpose(0, 1).contiguous()
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )
    out = explicit_mm(
        ap,
        bp,
        kernel=kernel,
        use_reference=True,
    )
    expected = torch.matmul(a.to(torch.int32), b.to(torch.int32)).to(torch.float32)
    torch.testing.assert_close(out, expected.to(out.dtype))


def scale_tensors(kernel, shape):
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, shape.m, dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, b_cols, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = kernel.scale.subchannel_size or 1
    scale_cols = (shape.k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.80, 1.20, shape.m * scale_cols, dtype=torch.bfloat16).reshape(shape.m, scale_cols)
    b_scale = torch.linspace(1.15, 0.85, b_cols * scale_cols, dtype=torch.bfloat16).reshape(scale_cols, b_cols)
    return a_scale, b_scale


def manual_scaled_reference(a_q, b_q, kernel, a_scale, b_scale, gate=None):
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        expected = torch.matmul(a_q.to(torch.int32), b_q.to(torch.int32)).to(torch.float32)
        expected = expected * a_scale[:, None] * b_scale[None, :]
    else:
        subchannel = kernel.scale.subchannel_size or 1
        expected = torch.zeros((a_q.shape[0], b_q.shape[1]), dtype=torch.float32)
        for group_index, k0 in enumerate(range(0, a_q.shape[1], subchannel)):
            k1 = min(k0 + subchannel, a_q.shape[1])
            partial = torch.matmul(a_q[:, k0:k1].to(torch.int32), b_q[k0:k1, :].to(torch.int32)).to(torch.float32)
            expected += partial * a_scale[:, group_index, None] * b_scale[group_index, :][None, :]
    if kernel.epilogue is Epilogue.SWIGLU:
        assert expected.shape[1] % 2 == 0
        up, gate_values = expected.split(expected.shape[1] // 2, dim=1)
        expected = up * (gate_values / (1.0 + torch.exp(-gate_values)))
    elif kernel.epilogue is Epilogue.RELU2:
        expected = torch.relu(expected).square()
    return expected


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


def stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


@pytest.mark.parametrize("kernel", default_registry.all(), ids=lambda kernel: kernel.kernel_id)
def test_reference_mm_matches_fake_quant_bf16_for_all_registered_kernels(kernel) -> None:
    shape = representative_generation_shape(kernel)
    torch.manual_seed(stable_seed(kernel.kernel_id))
    a_bf16 = torch.randn((shape.m, shape.k), dtype=torch.bfloat16) * 0.1
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    b_bf16 = torch.randn((shape.k, b_cols), dtype=torch.bfloat16) * 0.1
    bits = 4 if kernel.a_dtype is OperandDType.INT4 else 8
    a_q = fake_quant_int(a_bf16, bits=bits, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=bits, scale=0.1)
    a_arg, b_arg = kernel_args_from_logical(a_q, b_q, kernel)
    a_scale, b_scale = scale_tensors(kernel, shape)
    out = explicit_mm(
        a_arg,
        b_arg,
        kernel=kernel,
        a_scale=a_scale,
        b_scale=b_scale,
        use_reference=True,
    )
    expected = manual_scaled_reference(a_q, b_q, kernel, a_scale, b_scale)

    torch.testing.assert_close(out, expected.to(out.dtype))


def test_swiglu_reference_rejects_external_gate() -> None:
    kernel = next(kernel for kernel in default_registry.all() if kernel.epilogue is Epilogue.SWIGLU)
    shape = representative_generation_shape(kernel)
    a = torch.zeros((shape.m, shape.k), dtype=torch.int8)
    b = torch.zeros((shape.k, shape.n * 2), dtype=torch.int8)
    if kernel.a_dtype is OperandDType.INT4:
        a = pack_int4_k_major(a)
        b = pack_int4_k_major(b.transpose(0, 1)).transpose(0, 1).contiguous()
    a_scale, b_scale = scale_tensors(kernel, shape)

    with pytest.raises(ValueError, match="fused up/gate"):
        explicit_mm(
            a,
            b,
            kernel=kernel,
            a_scale=a_scale,
            b_scale=b_scale,
            gate=torch.zeros((shape.m, shape.n), dtype=torch.float32),
            use_reference=True,
        )


def test_surface_mm_rejects_swiglu_epilogue() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    torch.manual_seed(stable_seed("surface-mm-rejects-swiglu"))
    a = fake_quant_int(torch.randn((64, 32), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    b = fake_quant_int(torch.randn((32, 512), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)

    with pytest.raises(ValueError, match="fused_swiglu_up_gate"):
        mm(a, b, dtype=OperandDType.INT8, scale=scale, epilogue=Epilogue.SWIGLU, use_reference=True)


def test_surface_apis_accept_generated_transposed_layouts_and_reject_tt() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    torch.manual_seed(stable_seed("surface-layout-reject"))
    a = fake_quant_int(torch.randn((64, 32), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    b = fake_quant_int(torch.randn((32, 512), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    b_nt = b.transpose(0, 1).contiguous()
    a_tn = a.transpose(0, 1).contiguous()

    out_nt = mm(a, b_nt, dtype=OperandDType.INT8, layout=GemmLayout.NT, scale=scale, use_reference=True)
    out_tn = mm(a_tn, b, dtype=OperandDType.INT8, layout=GemmLayout.TN, scale=scale, use_reference=True)
    out_nn = mm(a, b, dtype=OperandDType.INT8, layout=GemmLayout.NN, scale=scale, use_reference=True)
    torch.testing.assert_close(out_nt, out_nn)
    torch.testing.assert_close(out_tn, out_nn)

    with pytest.raises(ValueError, match="unsupported GEMM layout"):
        fused_swiglu_up_gate(a, b, dtype=OperandDType.INT8, layout=GemmLayout.TT, scale=scale, use_reference=True)


def test_surface_mm_relu2_reference_accepts_regular_b() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    torch.manual_seed(stable_seed("surface-mm-relu2-random"))
    a = fake_quant_int(torch.randn((64, 32), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    b = fake_quant_int(torch.randn((32, 512), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    a_scale, b_scale = scale_tensors(
        default_registry.select_reference(dtype=OperandDType.INT8, scale=scale, epilogue=Epilogue.RELU2),
        SimpleNamespace(m=64, n=512, k=32),
    )

    out = mm(
        a,
        b,
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=OperandDType.INT8,
        scale=scale,
        epilogue=Epilogue.RELU2,
        use_reference=True,
    )
    gemm = torch.matmul(a.to(torch.int32), b.to(torch.int32)).to(torch.float32) * a_scale[:, None] * b_scale[None, :]
    expected = torch.relu(gemm).square()

    torch.testing.assert_close(out, expected.to(out.dtype), rtol=1.0e-4, atol=1.0e-3)


def test_fused_swiglu_up_gate_reference_accepts_2d_b() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    torch.manual_seed(stable_seed("fused-swiglu-up-gate-random"))
    a = fake_quant_int(torch.randn((64, 32), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    b_up_gate = fake_quant_int(torch.randn((32, 1024), dtype=torch.bfloat16) * 0.1, bits=8, scale=0.1)
    a_scale, b_scale = scale_tensors(
        default_registry.select(dtype=OperandDType.INT8, scale=scale, epilogue=Epilogue.SWIGLU, m=64, n=512, k=32),
        SimpleNamespace(m=64, n=512, k=32),
    )

    out = fused_swiglu_up_gate(
        a,
        b_up_gate,
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=OperandDType.INT8,
        scale=scale,
        use_reference=True,
    )
    gemm = torch.matmul(a.to(torch.int32), b_up_gate.to(torch.int32)).to(torch.float32)
    gemm = gemm * a_scale[:, None] * b_scale[None, :]
    up_out, gate_out = gemm.split(512, dim=1)
    expected = up_out * (gate_out / (1.0 + torch.exp(-gate_out)))

    torch.testing.assert_close(out, expected.to(out.dtype), rtol=1.0e-4, atol=1.0e-3)

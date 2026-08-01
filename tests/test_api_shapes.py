import hashlib

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels.api import fused_swiglu_up_gate, mm
from amd_strix_halo_kernels.metadata import Epilogue, OperandDType, OutputDType, ScaleMode, ScaleSpec
from amd_strix_halo_kernels.quant import (
    QuantizedInt4Tensor,
    dynamic_lhs_int4_scales,
    fake_quant_int4_with_scales,
    fake_quant_int,
    pack_int4_k_major,
    pack_rhs_subchannel_scales,
    quantize_int4_output,
)
from amd_strix_halo_kernels.registry import mixed_dtype_registry


def stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def scale_tensors(scale: ScaleSpec, *, m: int, n: int, k: int):
    if scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, m, dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, n, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = scale.subchannel_size or 1
    scale_cols = (k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.80, 1.20, m * scale_cols, dtype=torch.bfloat16).reshape(m, scale_cols)
    b_scale_logical = torch.linspace(1.15, 0.85, n * scale_cols, dtype=torch.bfloat16).reshape(n, scale_cols)
    b_scale = pack_rhs_subchannel_scales(b_scale_logical)
    return a_scale, b_scale


def manual_scaled_reference(a_q, b_q, scale: ScaleSpec, a_scale, b_scale, epilogue=Epilogue.NONE, gate=None):
    if scale.mode is ScaleMode.PER_CHANNEL:
        expected = torch.matmul(a_q.to(torch.int32), b_q.to(torch.int32)).to(torch.float32)
        expected = expected * a_scale[:, None] * b_scale[None, :]
    else:
        subchannel = scale.subchannel_size or 1
        expected = torch.zeros((a_q.shape[0], b_q.shape[1]), dtype=torch.float32)
        for group_index, k0 in enumerate(range(0, a_q.shape[1], subchannel)):
            k1 = min(k0 + subchannel, a_q.shape[1])
            partial = torch.matmul(a_q[:, k0:k1].to(torch.int32), b_q[k0:k1, :].to(torch.int32)).to(torch.float32)
            expected += partial * a_scale[:, group_index, None] * b_scale[group_index, :][None, :]
    if gate is not None:
        expected = expected * (gate / (1.0 + torch.exp(-gate)))
    if epilogue is Epilogue.RELU2:
        expected = torch.relu(expected).square()
    return expected


@pytest.mark.parametrize("epilogue", [Epilogue.NONE, Epilogue.RELU2])
def test_dense_int4_output_reference_matches_representation_oracle(epilogue) -> None:
    m, n, k = 32, 256, 64
    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 32)
    torch.manual_seed(stable_seed(f"dense-int4-output-{epilogue.value}"))
    a_q = torch.randint(-4, 5, (m, k), dtype=torch.int8)
    b_q = torch.randint(-4, 5, (k, n), dtype=torch.int8)
    a_scale, b_scale = scale_tensors(scale, m=m, n=n, k=k)
    expected = manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale, epilogue)
    expected_quantized = quantize_int4_output(expected)
    packed_out = torch.empty((m, n // 2), dtype=torch.uint8)
    scale_out = torch.empty((m, n // 256), dtype=torch.bfloat16)

    actual = mm(
        pack_int4_k_major(a_q),
        pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous(),
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=epilogue,
        output_dtype=OutputDType.INT4,
        out=packed_out,
        out_scale=scale_out,
        use_reference=True,
    )

    assert isinstance(actual, QuantizedInt4Tensor)
    assert actual.packed is packed_out
    assert actual.scale is scale_out
    torch.testing.assert_close(actual.packed, expected_quantized.packed, rtol=0, atol=0)
    torch.testing.assert_close(actual.scale, expected_quantized.scale, rtol=0, atol=0)
    torch.testing.assert_close(actual.dequantize(), expected_quantized.dequantize(), rtol=1.0e-3, atol=1.0e-3)


def test_fused_swiglu_int4_output_reference_matches_representation_oracle() -> None:
    m, n, k = 32, 256, 64
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    torch.manual_seed(stable_seed("dense-swiglu-int4-output"))
    a_q = torch.randint(-4, 5, (m, k), dtype=torch.int8)
    b_q = torch.randint(-4, 5, (k, n * 2), dtype=torch.int8)
    a_scale, b_scale = scale_tensors(scale, m=m, n=n * 2, k=k)
    gemm = manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale)
    up, gate = gemm.chunk(2, dim=-1)
    expected = quantize_int4_output(up * torch.nn.functional.silu(gate))

    actual = fused_swiglu_up_gate(
        pack_int4_k_major(a_q),
        pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous(),
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=OperandDType.INT4,
        scale=scale,
        output_dtype=OutputDType.INT4,
        use_reference=True,
    )

    torch.testing.assert_close(actual.packed, expected.packed, rtol=0, atol=0)
    torch.testing.assert_close(actual.scale, expected.scale, rtol=0, atol=0)


def test_mixed_bf16_int4_output_reference_uses_dynamic_lhs_quantization() -> None:
    m, n, k = 32, 256, 64
    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 32)
    torch.manual_seed(stable_seed("mixed-bf16-int4-output"))
    a = torch.randn((m, k), dtype=torch.bfloat16) * 0.1
    b_q = torch.randint(-4, 5, (k, n), dtype=torch.int8)
    _, b_scale = scale_tensors(scale, m=m, n=n, k=k)

    actual = mm(
        a,
        pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous(),
        b_scale=b_scale,
        a_dtype=OperandDType.BF16,
        b_dtype=OperandDType.INT4,
        scale=scale,
        output_dtype=OutputDType.INT4,
        registry=mixed_dtype_registry,
        use_reference=True,
    )
    a_scale = dynamic_lhs_int4_scales(a, scale)
    a_q = fake_quant_int4_with_scales(a, a_scale, scale)
    expected = quantize_int4_output(
        manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale)
    )

    torch.testing.assert_close(actual.packed, expected.packed, rtol=0, atol=0)
    torch.testing.assert_close(actual.scale, expected.scale, rtol=0, atol=0)


def test_dense_output_dtype_rejects_split_k_and_shape_incompatibilities() -> None:
    a = torch.zeros((32, 32), dtype=torch.uint8)
    b = torch.zeros((32, 256), dtype=torch.uint8)
    a_scale = torch.ones((32,), dtype=torch.bfloat16)
    b_scale = torch.ones((256,), dtype=torch.bfloat16)
    kwargs = dict(a_scale=a_scale, b_scale=b_scale, dtype=OperandDType.INT4, use_reference=True)

    with pytest.raises(ValueError, match="requires split_k=1"):
        mm(a, b, output_dtype=OutputDType.INT4, split_k=2, **kwargs)
    with pytest.raises(ValueError, match="BF16 output requires split_k=1"):
        mm(a, b, output_dtype=OutputDType.BF16, split_k=2, **kwargs)
    with pytest.raises(ValueError, match="FP32 dense output requires split_k>1"):
        mm(a, b, output_dtype=OutputDType.FLOAT32, split_k=1, **kwargs)
    with pytest.raises(ValueError, match="subchannel-256"):
        mm(
            a,
            b,
            output_dtype=OutputDType.INT4,
            output_scale=ScaleSpec(ScaleMode.SUBCHANNEL, 128),
            **kwargs,
        )
    with pytest.raises(ValueError, match="width to be divisible by 256"):
        mm(a, b[:, :128], output_dtype=OutputDType.INT4, **kwargs)


@pytest.mark.parametrize(
    ("dtype", "scale", "epilogue", "shape"),
    [
        (OperandDType.INT4, ScaleSpec(ScaleMode.PER_CHANNEL), Epilogue.NONE, (128, 512, 64)),
        (OperandDType.INT4, ScaleSpec(ScaleMode.PER_CHANNEL), Epilogue.RELU2, (128, 512, 64)),
        (OperandDType.INT4, ScaleSpec(ScaleMode.SUBCHANNEL, 128), Epilogue.NONE, (128, 1024, 128)),
        (OperandDType.INT8, ScaleSpec(ScaleMode.PER_CHANNEL), Epilogue.RELU2, (64, 512, 48)),
        (OperandDType.INT8, ScaleSpec(ScaleMode.SUBCHANNEL, 64), Epilogue.NONE, (128, 1024, 64)),
    ],
)
def test_surface_mm_reference_matches_manual_scaled_quantized_shapes(dtype, scale, epilogue, shape) -> None:
    m, n, k = shape
    torch.manual_seed(stable_seed(f"{dtype.value}-{scale.label}-{epilogue.value}-{shape}"))
    bits = 4 if dtype is OperandDType.INT4 else 8
    a_q = fake_quant_int(torch.randn((m, k), dtype=torch.bfloat16) * 0.1, bits=bits, scale=0.1)
    b_q = fake_quant_int(torch.randn((k, n), dtype=torch.bfloat16) * 0.1, bits=bits, scale=0.1)
    a_arg = a_q
    b_arg = b_q
    if dtype is OperandDType.INT4:
        a_arg = pack_int4_k_major(a_q)
        b_arg = pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
    a_scale, b_scale = scale_tensors(scale, m=m, n=n, k=k)
    gate = torch.randn((m, n), dtype=torch.float32) * 0.1 if epilogue is Epilogue.SWIGLU else None

    actual = mm(
        a_arg,
        b_arg,
        a_scale=a_scale,
        b_scale=b_scale,
        gate=gate,
        dtype=dtype,
        scale=scale,
        epilogue=epilogue,
        use_reference=True,
    )
    expected = manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale, epilogue, gate)

    torch.testing.assert_close(actual, expected.to(actual.dtype), rtol=1.0e-4, atol=1.0e-3)


def test_subchannel_rhs_scale_rejects_logical_output_kgroup_layout() -> None:
    m, n, k = 32, 128, 64
    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 32)
    a_q = torch.zeros((m, k), dtype=torch.int8)
    b_q = torch.zeros((k, n), dtype=torch.int8)
    a_scale = torch.ones((m, 2), dtype=torch.bfloat16)
    b_scale_logical = torch.ones((n, 2), dtype=torch.bfloat16)

    with pytest.raises(ValueError, match="weight-matched layout"):
        mm(
            pack_int4_k_major(a_q),
            pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous(),
            a_scale=a_scale,
            b_scale=b_scale_logical,
            dtype=OperandDType.INT4,
            scale=scale,
            use_reference=True,
        )


def test_surface_mm_reference_accepts_ragged_int4_shape_with_padded_k() -> None:
    m, n, k = 17, 129, 65
    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 32)
    torch.manual_seed(stable_seed("ragged-int4-reference"))
    a_q = fake_quant_int(torch.randn((m, k), dtype=torch.bfloat16) * 0.1, bits=4, scale=0.1)
    b_q = fake_quant_int(torch.randn((k, n), dtype=torch.bfloat16) * 0.1, bits=4, scale=0.1)
    a_arg = pack_int4_k_major(a_q)
    b_arg = pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
    a_scale, b_scale = scale_tensors(scale, m=m, n=n, k=k)

    actual = mm(
        a_arg,
        b_arg,
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=OperandDType.INT4,
        scale=scale,
        use_reference=True,
    )
    expected = manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale)

    torch.testing.assert_close(actual, expected.to(actual.dtype), rtol=1.0e-4, atol=1.0e-3)


@pytest.mark.parametrize(
    ("dtype", "scale", "shape"),
    [
        (OperandDType.INT4, ScaleSpec(ScaleMode.SUBCHANNEL, 32), (64, 512, 66)),
        (OperandDType.INT8, ScaleSpec(ScaleMode.PER_CHANNEL), (64, 512, 48)),
        (OperandDType.INT8, ScaleSpec(ScaleMode.SUBCHANNEL, 256), (64, 512, 272)),
    ],
)
def test_fused_swiglu_up_gate_reference_matches_manual_scaled_quantized_shapes(dtype, scale, shape) -> None:
    m, n, k = shape
    torch.manual_seed(stable_seed(f"{dtype.value}-{scale.label}-fused_swiglu_up_gate-{shape}"))
    bits = 4 if dtype is OperandDType.INT4 else 8
    a_q = fake_quant_int(torch.randn((m, k), dtype=torch.bfloat16) * 0.1, bits=bits, scale=0.1)
    b_q = fake_quant_int(torch.randn((k, n * 2), dtype=torch.bfloat16) * 0.1, bits=bits, scale=0.1)
    a_arg = a_q
    b_arg = b_q
    if dtype is OperandDType.INT4:
        a_arg = pack_int4_k_major(a_q)
        b_arg = pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
    a_scale, b_scale = scale_tensors(scale, m=m, n=n * 2, k=k)

    actual = fused_swiglu_up_gate(
        a_arg,
        b_arg,
        a_scale=a_scale,
        b_scale=b_scale,
        dtype=dtype,
        scale=scale,
        use_reference=True,
    )
    gemm = manual_scaled_reference(a_q, b_q, scale, a_scale, b_scale)
    up, gate = gemm.split(n, dim=1)
    expected = up * (gate / (1.0 + torch.exp(-gate)))

    torch.testing.assert_close(actual, expected.to(actual.dtype), rtol=1.0e-4, atol=1.0e-3)

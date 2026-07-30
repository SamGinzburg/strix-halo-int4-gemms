from __future__ import annotations

from typing import Any

from .metadata import ScaleMode, ScaleSpec


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for quantization helpers") from exc
    return torch


def fake_quant_int(x: Any, *, bits: int, scale: float) -> Any:
    """Return signed integer quantization codes for a positive scalar scale.

    The result is an int8 tensor containing clipped int4/int8 codes, not a
    dequantized BF16 tensor. Pack int4 codes with pack_int4_k_major(...).
    """
    torch = _torch()
    if bits not in (4, 8):
        raise ValueError("bits must be 4 or 8")
    if isinstance(scale, bool) or not isinstance(scale, (int, float)):
        raise TypeError("scale must be a positive Python int or float scalar")
    if scale <= 0:
        raise ValueError("scale must be positive")
    qmin = -(1 << (bits - 1))
    qmax = (1 << (bits - 1)) - 1
    return torch.clamp(torch.round(x.float() / scale), qmin, qmax).to(torch.int8)


def dynamic_lhs_int4_scales(a: Any, scale: ScaleSpec, *, eps: float = 1.0e-12) -> Any:
    """Compute BF16 signed-int4 activation scales for logical LHS rows.

    The returned scales use the same physical shape as dense GEMM ``a_scale``:
    ``(M,)`` for per-channel and ``(M, ceil(K / subchannel))`` for
    subchannel scaling. The scale is ``max(abs(a)) / 7`` with a small positive
    floor so all-zero rows quantize to zero without division by zero.
    """

    torch = _torch()
    if scale.mode is ScaleMode.PER_CHANNEL:
        row_amax = a.to(torch.float32).abs().amax(dim=-1).clamp_min(eps)
        return (row_amax / 7.0).to(torch.bfloat16).contiguous()

    subchannel = scale.subchannel_size
    if subchannel is None:
        raise ValueError("subchannel scale mode requires subchannel_size")
    scale_cols = (int(a.shape[-1]) + subchannel - 1) // subchannel
    cols = []
    a_f32 = a.to(torch.float32)
    for group_index in range(scale_cols):
        k0 = group_index * subchannel
        k1 = min(k0 + subchannel, int(a.shape[-1]))
        cols.append(a_f32[..., k0:k1].abs().amax(dim=-1).clamp_min(eps) / 7.0)
    return torch.stack(cols, dim=-1).to(torch.bfloat16).contiguous()


def fake_quant_int4_with_scales(a: Any, a_scale: Any, scale: ScaleSpec) -> Any:
    """Quantize logical BF16/FP tensor ``a`` to signed int4 codes using ``a_scale``."""

    torch = _torch()
    if scale.mode is ScaleMode.PER_CHANNEL:
        denom = a_scale.to(torch.float32)[..., None]
        return torch.clamp(torch.round(a.to(torch.float32) / denom), -8, 7).to(torch.int8)

    subchannel = scale.subchannel_size
    if subchannel is None:
        raise ValueError("subchannel scale mode requires subchannel_size")
    out = torch.empty_like(a, dtype=torch.int8)
    a_f32 = a.to(torch.float32)
    scale_f32 = a_scale.to(torch.float32)
    scale_cols = (int(a.shape[-1]) + subchannel - 1) // subchannel
    for group_index in range(scale_cols):
        k0 = group_index * subchannel
        k1 = min(k0 + subchannel, int(a.shape[-1]))
        denom = scale_f32[..., group_index, None]
        out[..., k0:k1] = torch.clamp(torch.round(a_f32[..., k0:k1] / denom), -8, 7).to(torch.int8)
    return out


def pack_int4_k_major(x: Any) -> Any:
    torch = _torch()
    if x.shape[-1] % 2 != 0:
        x = torch.nn.functional.pad(x, (0, 1))
    even = x[..., 0::2].to(torch.int16) & 0xF
    odd = x[..., 1::2].to(torch.int16) & 0xF
    return ((odd << 4) | even).to(torch.uint8).contiguous()


def unpack_int4_k_major(x_packed: Any) -> Any:
    torch = _torch()
    low = (x_packed & 0xF).to(torch.int8)
    high = ((x_packed >> 4) & 0xF).to(torch.int8)
    low = torch.where(low >= 8, low - 16, low)
    high = torch.where(high >= 8, high - 16, high)
    out_shape = (*x_packed.shape[:-1], x_packed.shape[-1] * 2)
    out = torch.empty(out_shape, device=x_packed.device, dtype=torch.int8)
    out[..., 0::2] = low
    out[..., 1::2] = high
    return out


def quantize_attention_qk_int4(x: Any, *, block_size: int = 16) -> tuple[Any, Any, int]:
    """Quantize attention Q/K rows and pack the head dimension for INT4 MMA.

    ``x`` must have logical shape ``(..., sequence, head_dim)``. The returned
    tuple is ``(packed, scale, head_dim)`` where ``packed`` is zero-padded to a
    multiple of ``block_size`` along the head dimension and ``scale`` has shape
    ``(..., sequence)``. Dequantization is ``codes * scale[..., None]``.
    """

    torch = _torch()
    if not torch.is_tensor(x):
        raise TypeError("x must be a torch.Tensor")
    if x.ndim < 2:
        raise ValueError("attention Q/K tensors must have at least two dimensions")
    if not x.dtype.is_floating_point:
        raise ValueError(f"attention Q/K quantization requires a floating tensor; got {x.dtype}")
    if isinstance(block_size, bool) or not isinstance(block_size, int):
        raise TypeError("block_size must be a positive multiple-of-16 Python int")
    if block_size <= 0 or block_size % 16 != 0:
        raise ValueError("block_size must be a positive multiple of 16")
    head_dim = int(x.shape[-1])
    if head_dim <= 0:
        raise ValueError("attention head_dim must be positive")
    scale = dynamic_lhs_int4_scales(x, ScaleSpec(ScaleMode.PER_CHANNEL))
    codes = fake_quant_int4_with_scales(x, scale, ScaleSpec(ScaleMode.PER_CHANNEL))
    padded_head_dim = ((head_dim + block_size - 1) // block_size) * block_size
    if padded_head_dim != head_dim:
        codes = torch.nn.functional.pad(codes, (0, padded_head_dim - head_dim))
    return pack_int4_k_major(codes), scale, head_dim


def quantize_attention_value_int4(value: Any, *, group_size: int = 16) -> tuple[Any, Any]:
    """Quantize and sequence-pack V for the packed-value attention path.

    ``value`` uses logical shape ``(..., sequence, value_dim)``. Quantization
    scales each ``group_size``-token chunk independently for every value
    channel. The packed result has shape ``(..., padded_sequence / 2,
    value_dim)`` and scales have shape ``(..., ceil(sequence / group_size),
    value_dim)``. ``group_size=16`` matches the optimized BF16 P@V tile's
    scale-reuse granularity.
    """

    torch = _torch()
    if not torch.is_tensor(value):
        raise TypeError("value must be a torch.Tensor")
    if value.ndim < 2:
        raise ValueError("attention value tensors must have at least two dimensions")
    if not value.dtype.is_floating_point:
        raise ValueError(f"attention value quantization requires a floating tensor; got {value.dtype}")
    if isinstance(group_size, bool) or not isinstance(group_size, int):
        raise TypeError("group_size must be the Python int 16")
    if group_size != 16:
        raise ValueError("group_size must be 16 for the optimized packed-V attention kernel")
    sequence = int(value.shape[-2])
    value_dim = int(value.shape[-1])
    if sequence <= 0 or value_dim <= 0:
        raise ValueError("attention sequence and value dimensions must be positive")
    padded_sequence = ((sequence + group_size - 1) // group_size) * group_size
    value_f32 = value.to(torch.float32)
    if padded_sequence != sequence:
        value_f32 = torch.nn.functional.pad(value_f32, (0, 0, 0, padded_sequence - sequence))
    grouped = value_f32.reshape(*value_f32.shape[:-2], padded_sequence // group_size, group_size, value_dim)
    scales = (grouped.abs().amax(dim=-2).clamp_min(1.0e-12) / 7.0).to(torch.bfloat16)
    codes = torch.clamp(
        torch.round(grouped / scales.to(torch.float32).unsqueeze(-2)),
        -8,
        7,
    ).to(torch.int8)
    codes = codes.reshape(*value_f32.shape[:-2], padded_sequence, value_dim)
    even = codes[..., 0::2, :].to(torch.int16) & 0xF
    odd = codes[..., 1::2, :].to(torch.int16) & 0xF
    packed = ((odd << 4) | even).to(torch.uint8).contiguous()
    return packed, scales.contiguous()


def pack_rhs_subchannel_scales(b_scale: Any) -> Any:
    """Convert logical RHS subchannel scales to weight-matched layout.

    Logical RHS subchannel scales are commonly produced as ``(..., N,
    scale_cols)``. Native subchannel kernels require the physical layout
    ``(..., scale_cols, N)`` so each K-group can load the output-column scale
    vector contiguously alongside the RHS weight tile.
    """

    if b_scale.ndim < 2:
        raise ValueError("b_scale must have at least 2 dimensions to pack RHS subchannel scales")
    return b_scale.transpose(-2, -1).contiguous()


def pack_ragged_rhs_subchannel_scales(b_scale: Any) -> Any:
    """Convert ragged RHS subchannel scales from ``(G, N, S)`` to ``(G, S, N)``."""

    if b_scale.ndim != 3:
        raise ValueError("ragged b_scale must have shape (G, N, scale_cols)")
    return pack_rhs_subchannel_scales(b_scale)


def apply_scales(result: Any, a_scale: Any | None, b_scale: Any | None) -> Any:
    if a_scale is not None:
        result = result * a_scale[..., :, None]
    if b_scale is not None:
        result = result * b_scale[..., None, :]
    return result

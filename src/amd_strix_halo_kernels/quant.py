from __future__ import annotations

from typing import Any


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

from __future__ import annotations

import math
from dataclasses import dataclass
from functools import lru_cache
from typing import Any


@dataclass(frozen=True, slots=True)
class Int4AttentionConfig:
    """Launch configuration for fused scaled-dot-product attention."""

    block_m: int = 16
    block_n: int = 16
    num_warps: int = 4
    num_stages: int = 1
    decode_splits: int = 1

    def __post_init__(self) -> None:
        for name, value in (
            ("block_m", self.block_m),
            ("block_n", self.block_n),
            ("num_warps", self.num_warps),
            ("num_stages", self.num_stages),
            ("decode_splits", self.decode_splits),
        ):
            if isinstance(value, bool) or not isinstance(value, int):
                raise TypeError(f"{name} must be a positive Python int")
            if value <= 0:
                raise ValueError(f"{name} must be positive")
        if self.block_m & (self.block_m - 1):
            raise ValueError("block_m must be a power of two")
        if self.block_n < 16 or self.block_n & (self.block_n - 1):
            raise ValueError("block_n must be a power of two greater than or equal to 16")
        if self.decode_splits & (self.decode_splits - 1):
            raise ValueError("decode_splits must be a power of two")


@dataclass(frozen=True, slots=True)
class Int4AttentionBackwardConfig:
    """Launch configuration for fused attention backward kernels."""

    block_m: int = 32
    block_n: int = 16
    num_warps: int = 2
    num_stages: int = 1
    dkv_block_m: int = 32
    dkv_block_n: int = 16
    dkv_num_warps: int = 2
    dkv_num_stages: int = 1

    def __post_init__(self) -> None:
        for name, value in (
            ("block_m", self.block_m),
            ("block_n", self.block_n),
            ("num_warps", self.num_warps),
            ("num_stages", self.num_stages),
            ("dkv_block_m", self.dkv_block_m),
            ("dkv_block_n", self.dkv_block_n),
            ("dkv_num_warps", self.dkv_num_warps),
            ("dkv_num_stages", self.dkv_num_stages),
        ):
            if isinstance(value, bool) or not isinstance(value, int):
                raise TypeError(f"{name} must be a positive Python int")
            if value <= 0:
                raise ValueError(f"{name} must be positive")
        if self.block_m < 16 or self.block_m & (self.block_m - 1):
            raise ValueError("block_m must be a power of two greater than or equal to 16")
        if self.block_n < 16 or self.block_n & (self.block_n - 1):
            raise ValueError("block_n must be a power of two greater than or equal to 16")
        if self.dkv_block_m < 16 or self.dkv_block_m & (self.dkv_block_m - 1):
            raise ValueError("dkv_block_m must be a power of two greater than or equal to 16")
        if self.dkv_block_n < 16 or self.dkv_block_n & (self.dkv_block_n - 1):
            raise ValueError("dkv_block_n must be a power of two greater than or equal to 16")


def _default_attention_config(
    *,
    qk_int4: bool,
    pv_int4: bool,
    query_length: int,
    key_length: int,
    window: tuple[int, int] | None,
) -> Int4AttentionConfig:
    if query_length == 1:
        return Int4AttentionConfig(
            block_m=16,
            block_n=16 if pv_int4 else 64,
            num_warps=4,
            num_stages=1,
            decode_splits=8 if key_length >= 512 else 1,
        )
    if pv_int4:
        # BN16 aligns one P@V tile with one value-scale group and avoids
        # duplicating scale loads. Small query batches need a smaller BM;
        # the measured 512-token BF16-QK path prefers BM32, while INT4-QK
        # and 2,048-token training workloads have enough work to favor BM64.
        if query_length < 64:
            block_m = 16
        elif query_length < 1024 and not qk_int4:
            block_m = 32
        else:
            block_m = 64
        return Int4AttentionConfig(block_m=block_m, block_n=16)
    if qk_int4 and window is not None and query_length >= 1024:
        return Int4AttentionConfig(block_m=32, block_n=32, num_warps=2)
    block_n = 32 if window is not None and not qk_int4 and query_length < 1024 else 64
    return Int4AttentionConfig(block_m=64 if query_length >= 64 else 16, block_n=block_n)


def _default_attention_backward_config(
    *,
    window: tuple[int, int] | None,
) -> Int4AttentionBackwardConfig:
    """Return measured backward defaults for full or bounded attention."""

    # This compact query tile is the measured winner for both full and local
    # attention. It is spill-free on gfx1151; the former 64x64 dQ tile spilled
    # 260 bytes per thread and was 28% slower on the training profile.
    return Int4AttentionBackwardConfig()


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for attention APIs") from exc
    return torch


def _triton() -> tuple[Any, Any]:
    try:
        import triton
        import triton.language as tl
    except ImportError as exc:
        raise RuntimeError("triton is required for optimized attention") from exc
    return triton, tl


def _cdiv(value: int, divisor: int) -> int:
    return (value + divisor - 1) // divisor


def _next_power_of_two(value: int) -> int:
    return 1 << (value - 1).bit_length()


def _require_tensor(torch: Any, name: str, tensor: Any) -> None:
    if not torch.is_tensor(tensor):
        raise TypeError(f"{name} must be a torch.Tensor")
    if tensor.device.type != "cuda":
        raise ValueError(f"{name} must be on a CUDA/HIP device; got {tensor.device}")


def _shares_storage(left: Any, right: Any) -> bool:
    left_storage = left.untyped_storage()
    right_storage = right.untyped_storage()
    return (
        left_storage.nbytes() > 0
        and right_storage.nbytes() > 0
        and left_storage.data_ptr() == right_storage.data_ptr()
    )


def _normalize_window(window_size: int | tuple[int, int] | None) -> tuple[int, int] | None:
    if window_size is None:
        return None
    if isinstance(window_size, bool):
        raise TypeError("window_size must be an int, a (left, right) tuple, or None")
    if isinstance(window_size, int):
        if window_size < 0:
            raise ValueError("window_size must be non-negative")
        return window_size, window_size
    if not isinstance(window_size, tuple) or len(window_size) != 2:
        raise TypeError("window_size must be an int, a (left, right) tuple, or None")
    left, right = window_size
    if any(isinstance(value, bool) or not isinstance(value, int) for value in window_size):
        raise TypeError("window_size entries must be Python ints")
    if left < 0 or right < 0:
        raise ValueError("window_size entries must be non-negative")
    return left, right


def _softmax_scale(scale: float | None, head_dim: int) -> float:
    if scale is None:
        return 1.0 / math.sqrt(head_dim)
    if isinstance(scale, bool) or not isinstance(scale, (int, float)):
        raise TypeError("scale must be a Python float or None")
    resolved = float(scale)
    if not math.isfinite(resolved) or resolved <= 0.0:
        raise ValueError("scale must be finite and positive")
    return resolved


def _mask_shape_and_strides(
    torch: Any,
    attn_mask: Any | None,
    *,
    device: Any,
    target_shape: tuple[int, int, int, int],
) -> tuple[Any, int, tuple[int, int, int, int]]:
    if attn_mask is None:
        # Native launch ABIs require every pointer argument to be non-null even
        # when MASK_KIND=0 makes the kernel ignore the value.
        return torch.empty((1,), device=device, dtype=torch.bool), 0, (0, 0, 0, 0)
    _require_tensor(torch, "attn_mask", attn_mask)
    if attn_mask.device != device:
        raise ValueError(f"attn_mask must be on device {device}; got {attn_mask.device}")
    if attn_mask.ndim > 4:
        raise ValueError("attn_mask must have at most four dimensions")
    if attn_mask.dtype == torch.bool:
        mask_kind = 1
    elif attn_mask.dtype in {torch.bfloat16, torch.float32}:
        mask_kind = 2
    else:
        raise ValueError("attn_mask must have bool, bfloat16, or float32 dtype")
    padded_shape = (1,) * (4 - attn_mask.ndim) + tuple(int(value) for value in attn_mask.shape)
    padded_strides = (0,) * (4 - attn_mask.ndim) + tuple(int(value) for value in attn_mask.stride())
    resolved_strides = []
    for actual, target, stride in zip(padded_shape, target_shape, padded_strides, strict=True):
        if actual not in {1, target}:
            raise ValueError(
                f"attn_mask shape {tuple(attn_mask.shape)} is not broadcastable to {target_shape}"
            )
        resolved_strides.append(0 if actual == 1 else stride)
    return attn_mask, mask_kind, tuple(resolved_strides)  # type: ignore[return-value]


def _validate_inputs(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    head_dim: int | None,
    enable_gqa: bool,
) -> tuple[bool, bool, int, int, int, int, int, int]:
    if not isinstance(enable_gqa, bool):
        raise TypeError("enable_gqa must be a Python bool")
    if head_dim is not None:
        if isinstance(head_dim, bool) or not isinstance(head_dim, int):
            raise TypeError("head_dim must be a positive Python int or None")
        if head_dim <= 0:
            raise ValueError("head_dim must be positive")
    for name, tensor in (("query", query), ("key", key), ("value", value)):
        _require_tensor(torch, name, tensor)
        if tensor.ndim != 4:
            raise ValueError(f"{name} must have shape (B, H, S, D); got {tuple(tensor.shape)}")
        if not tensor.is_contiguous():
            raise ValueError(f"{name} must be contiguous")
    if query.device != key.device or query.device != value.device:
        raise ValueError("query, key, and value must be on the same device")
    if query.dtype != key.dtype or query.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("query and key must both be bfloat16 or both be packed-int4 uint8")
    qk_int4 = query.dtype == torch.uint8
    pv_int4 = value.dtype == torch.uint8
    if not pv_int4 and value.dtype != torch.bfloat16:
        raise ValueError("value must be bfloat16 or grouped packed-int4 uint8")

    batch, query_heads, query_length = (int(query.shape[i]) for i in range(3))
    key_batch, kv_heads, key_length = (int(key.shape[i]) for i in range(3))
    if batch != key_batch or batch != int(value.shape[0]):
        raise ValueError("query, key, and value batch dimensions must match")
    if kv_heads != int(value.shape[1]):
        raise ValueError("key and value head dimensions must match")
    if query_heads != kv_heads:
        if not enable_gqa:
            raise ValueError("query and key/value heads differ; pass enable_gqa=True")
        if kv_heads == 0 or query_heads % kv_heads != 0:
            raise ValueError("enable_gqa requires query_heads to be divisible by key/value heads")

    if qk_int4:
        if int(query.shape[-1]) != int(key.shape[-1]):
            raise ValueError("packed query and key head capacities must match")
        capacity = int(query.shape[-1]) * 2
        logical_head_dim = capacity if head_dim is None else int(head_dim)
        if logical_head_dim <= 0 or logical_head_dim > capacity:
            raise ValueError(f"head_dim must be in [1, {capacity}]; got {logical_head_dim}")
        if capacity % 16 != 0:
            raise ValueError("packed query/key capacity must be a multiple of 16 logical values")
        for name, tensor, shape in (
            ("query_scale", query_scale, (batch, query_heads, query_length)),
            ("key_scale", key_scale, (batch, kv_heads, key_length)),
        ):
            _require_tensor(torch, name, tensor)
            if tensor.device != query.device or tensor.dtype != torch.bfloat16:
                raise ValueError(f"{name} must be BF16 on device {query.device}")
            if tuple(tensor.shape) != shape:
                raise ValueError(f"{name} must have shape {shape}; got {tuple(tensor.shape)}")
            if not tensor.is_contiguous():
                raise ValueError(f"{name} must be contiguous")
    else:
        if query_scale is not None or key_scale is not None:
            raise ValueError("query_scale and key_scale must be omitted for BF16 query/key")
        logical_head_dim = int(query.shape[-1])
        if int(key.shape[-1]) != logical_head_dim:
            raise ValueError("BF16 query and key head dimensions must match")
        if head_dim is not None and int(head_dim) != logical_head_dim:
            raise ValueError(f"head_dim must match BF16 query/key dimension {logical_head_dim}")

    if pv_int4:
        value_dim = int(value.shape[-1])
        expected_groups = (key_length + 15) // 16
        expected_packed_tokens = expected_groups * 8
        if int(value.shape[-2]) != expected_packed_tokens:
            raise ValueError(
                "packed INT4 value must have shape "
                f"(B, Hkv, {expected_packed_tokens}, Dv) for key length {key_length}"
            )
        _require_tensor(torch, "value_scale", value_scale)
        expected_scale_shape = (batch, kv_heads, expected_groups, value_dim)
        if value_scale.device != query.device or value_scale.dtype != torch.bfloat16:
            raise ValueError(f"value_scale must be BF16 on device {query.device}")
        if tuple(value_scale.shape) != expected_scale_shape:
            raise ValueError(
                f"value_scale must have shape {expected_scale_shape}; got {tuple(value_scale.shape)}"
            )
        if not value_scale.is_contiguous():
            raise ValueError("value_scale must be contiguous")
    else:
        if value_scale is not None:
            raise ValueError("value_scale must be omitted for BF16 value")
        if int(value.shape[-2]) != key_length:
            raise ValueError("BF16 key and value sequence lengths must match")
        value_dim = int(value.shape[-1])

    if min(batch, query_heads, kv_heads, logical_head_dim, value_dim) <= 0:
        raise ValueError("batch, head counts, head_dim, and value_dim must be positive")
    return qk_int4, pv_int4, batch, query_heads, kv_heads, query_length, key_length, value_dim


def _unpack_qk(torch: Any, packed: Any, logical_head_dim: int) -> Any:
    low = (packed & 0xF).to(torch.int8)
    high = ((packed >> 4) & 0xF).to(torch.int8)
    low = torch.where(low >= 8, low - 16, low)
    high = torch.where(high >= 8, high - 16, high)
    codes = torch.empty(
        (*packed.shape[:-1], packed.shape[-1] * 2),
        device=packed.device,
        dtype=torch.int8,
    )
    codes[..., 0::2] = low
    codes[..., 1::2] = high
    return codes[..., :logical_head_dim]


def _unpack_value(torch: Any, packed: Any) -> Any:
    low = (packed & 0xF).to(torch.int8)
    high = ((packed >> 4) & 0xF).to(torch.int8)
    low = torch.where(low >= 8, low - 16, low)
    high = torch.where(high >= 8, high - 16, high)
    codes = torch.empty(
        (*packed.shape[:-2], packed.shape[-2] * 2, packed.shape[-1]),
        device=packed.device,
        dtype=torch.int8,
    )
    codes[..., 0::2, :] = low
    codes[..., 1::2, :] = high
    return codes


def _materialize_score_mask(
    torch: Any,
    attn_mask: Any | None,
    *,
    device: Any,
    shape: tuple[int, int, int, int],
    is_causal: bool,
    window: tuple[int, int] | None,
    query_position_offset: int,
) -> tuple[Any, Any | None]:
    batch, heads, query_length, key_length = shape
    allowed = torch.ones((query_length, key_length), device=device, dtype=torch.bool)
    query_positions = torch.arange(query_length, device=allowed.device) + query_position_offset
    key_positions = torch.arange(key_length, device=allowed.device)
    if is_causal:
        allowed &= key_positions[None, :] <= query_positions[:, None]
    if window is not None:
        left, right = window
        allowed &= key_positions[None, :] >= query_positions[:, None] - left
        allowed &= key_positions[None, :] <= query_positions[:, None] + right
    allowed = allowed.reshape(1, 1, query_length, key_length).expand(batch, heads, -1, -1)
    additive = None
    if attn_mask is not None:
        expanded = torch.broadcast_to(attn_mask, shape)
        if attn_mask.dtype == torch.bool:
            allowed = allowed & expanded
        else:
            additive = expanded.to(torch.float32)
    return allowed, additive


def reference_scaled_dot_product_attention(
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    attn_mask: Any | None = None,
    is_causal: bool = False,
    scale: float | None = None,
    enable_gqa: bool = False,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    head_dim: int | None = None,
    output_dtype: Any | None = None,
) -> Any:
    """Torch oracle for the package's quantized attention arithmetic."""

    torch = _torch()
    if not isinstance(is_causal, bool):
        raise TypeError("is_causal must be a Python bool")
    if attn_mask is not None and is_causal:
        raise ValueError("attn_mask and is_causal cannot both be set")
    if isinstance(query_position_offset, bool) or not isinstance(query_position_offset, int):
        raise TypeError("query_position_offset must be a non-negative Python int")
    if query_position_offset < 0:
        raise ValueError("query_position_offset must be non-negative")
    window = _normalize_window(window_size)
    qk_int4, pv_int4, batch, query_heads, kv_heads, query_length, key_length, value_dim = _validate_inputs(
        torch,
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        enable_gqa=enable_gqa,
    )
    logical_head_dim = int(head_dim) if head_dim is not None else (
        int(query.shape[-1]) * 2 if qk_int4 else int(query.shape[-1])
    )
    softmax_scale = _softmax_scale(scale, logical_head_dim)
    _mask_shape_and_strides(
        torch,
        attn_mask,
        device=query.device,
        target_shape=(batch, query_heads, query_length, key_length),
    )
    if qk_int4:
        q_codes = _unpack_qk(torch, query, logical_head_dim).to(torch.float32)
        k_codes = _unpack_qk(torch, key, logical_head_dim).to(torch.float32)
        if enable_gqa and query_heads != kv_heads:
            repeat = query_heads // kv_heads
            k_codes = k_codes.repeat_interleave(repeat, dim=1)
            key_scale = key_scale.repeat_interleave(repeat, dim=1)
        scores = torch.matmul(q_codes, k_codes.transpose(-2, -1))
        scores *= query_scale.to(torch.float32)[..., :, None]
        scores *= key_scale.to(torch.float32)[..., None, :]
    else:
        logical_key = key
        if enable_gqa and query_heads != kv_heads:
            logical_key = key.repeat_interleave(query_heads // kv_heads, dim=1)
        scores = torch.matmul(query.to(torch.float32), logical_key.to(torch.float32).transpose(-2, -1))
    scores *= softmax_scale
    allowed, additive = _materialize_score_mask(
        torch,
        attn_mask,
        device=query.device,
        shape=(batch, query_heads, query_length, key_length),
        is_causal=is_causal,
        window=window,
        query_position_offset=query_position_offset,
    )
    scores = scores.masked_fill(~allowed, -float("inf"))
    if additive is not None:
        scores = scores + additive
    if not pv_int4:
        logical_value = value
        if enable_gqa and query_heads != kv_heads:
            logical_value = value.repeat_interleave(query_heads // kv_heads, dim=1)
        row_max = scores.amax(dim=-1, keepdim=True)
        unnormalized = torch.exp(scores - row_max).nan_to_num(0.0)
        denominator = unnormalized.sum(dim=-1, keepdim=True)
        numerator = torch.matmul(
            unnormalized.to(torch.bfloat16).to(torch.float32),
            logical_value.to(torch.float32),
        )
        result = torch.where(
            denominator > 0.0,
            numerator / denominator.clamp_min(1.0e-30),
            0.0,
        )
    else:
        value_codes = _unpack_value(torch, value)
        expanded_scale = value_scale.repeat_interleave(16, dim=-2)
        logical_value = (
            value_codes[..., :key_length, :].to(torch.float32)
            * expanded_scale[..., :key_length, :].to(torch.float32)
        ).to(torch.bfloat16)
        if enable_gqa and query_heads != kv_heads:
            repeat = query_heads // kv_heads
            logical_value = logical_value.repeat_interleave(repeat, dim=1)
        row_max = scores.amax(dim=-1, keepdim=True)
        unnormalized = torch.exp(scores - row_max).nan_to_num(0.0)
        denominator = unnormalized.sum(dim=-1, keepdim=True)
        numerator = torch.matmul(
            unnormalized.to(torch.bfloat16).to(torch.float32),
            logical_value.to(torch.float32),
        )
        result = torch.where(
            denominator > 0.0,
            numerator / denominator.clamp_min(1.0e-30),
            0.0,
        )
    dtype = torch.bfloat16 if output_dtype is None else output_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("output_dtype must be torch.bfloat16 or torch.float32")
    return result.to(dtype)


def reference_scaled_dot_product_attention_backward(
    query: Any,
    key: Any,
    value: Any,
    grad_output: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    attn_mask: Any | None = None,
    is_causal: bool = False,
    scale: float | None = None,
    enable_gqa: bool = False,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    head_dim: int | None = None,
    gradient_dtype: Any | None = None,
) -> tuple[Any, Any, Any]:
    """Autograd oracle for logical Q/K/V gradients of quantized attention.

    Packed INT4 operands are treated as fixed quantized representations. The
    returned gradients correspond to the logical dequantized Q, K, and V
    tensors; gradients for packed codes and quantization scales are not
    defined by this API.
    """

    torch = _torch()
    if not isinstance(is_causal, bool):
        raise TypeError("is_causal must be a Python bool")
    if attn_mask is not None and is_causal:
        raise ValueError("attn_mask and is_causal cannot both be set")
    if isinstance(query_position_offset, bool) or not isinstance(query_position_offset, int):
        raise TypeError("query_position_offset must be a non-negative Python int")
    if query_position_offset < 0:
        raise ValueError("query_position_offset must be non-negative")
    window = _normalize_window(window_size)
    qk_int4, pv_int4, batch, query_heads, kv_heads, query_length, key_length, value_dim = _validate_inputs(
        torch,
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        enable_gqa=enable_gqa,
    )
    logical_head_dim = int(head_dim) if head_dim is not None else (
        int(query.shape[-1]) * 2 if qk_int4 else int(query.shape[-1])
    )
    softmax_scale = _softmax_scale(scale, logical_head_dim)
    _require_tensor(torch, "grad_output", grad_output)
    expected_grad_output_shape = (batch, query_heads, query_length, value_dim)
    if (
        grad_output.device != query.device
        or grad_output.dtype not in {torch.bfloat16, torch.float32}
        or tuple(grad_output.shape) != expected_grad_output_shape
        or not grad_output.is_contiguous()
    ):
        raise ValueError(
            "grad_output must be contiguous BF16/FP32 with shape "
            f"{expected_grad_output_shape} on device {query.device}"
        )
    dtype = torch.float32 if gradient_dtype is None else gradient_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("gradient_dtype must be torch.bfloat16 or torch.float32")
    _mask_shape_and_strides(
        torch,
        attn_mask,
        device=query.device,
        target_shape=(batch, query_heads, query_length, key_length),
    )

    if qk_int4:
        logical_query = (
            _unpack_qk(torch, query, logical_head_dim).to(torch.float32)
            * query_scale.to(torch.float32)[..., None]
        )
        logical_key = (
            _unpack_qk(torch, key, logical_head_dim).to(torch.float32)
            * key_scale.to(torch.float32)[..., None]
        )
    else:
        logical_query = query.to(torch.float32)
        logical_key = key.to(torch.float32)
    if pv_int4:
        value_codes = _unpack_value(torch, value)[..., :key_length, :]
        expanded_scale = value_scale.repeat_interleave(16, dim=-2)[..., :key_length, :]
        logical_value = (value_codes.to(torch.float32) * expanded_scale.to(torch.float32)).to(
            torch.bfloat16
        )
    else:
        logical_value = value

    with torch.enable_grad():
        logical_query = logical_query.detach().requires_grad_(True)
        logical_key = logical_key.detach().requires_grad_(True)
        logical_value = logical_value.to(torch.float32).detach().requires_grad_(True)
        expanded_key = logical_key
        expanded_value = logical_value
        if enable_gqa and query_heads != kv_heads:
            repeat = query_heads // kv_heads
            expanded_key = logical_key.repeat_interleave(repeat, dim=1)
            expanded_value = logical_value.repeat_interleave(repeat, dim=1)
        scores = torch.matmul(logical_query, expanded_key.transpose(-2, -1)) * softmax_scale
        allowed, additive = _materialize_score_mask(
            torch,
            attn_mask,
            device=query.device,
            shape=(batch, query_heads, query_length, key_length),
            is_causal=is_causal,
            window=window,
            query_position_offset=query_position_offset,
        )
        scores = scores.masked_fill(~allowed, -float("inf"))
        if additive is not None:
            scores = scores + additive
        row_max = scores.amax(dim=-1, keepdim=True)
        unnormalized = torch.exp(scores - row_max).nan_to_num(0.0)
        denominator = unnormalized.sum(dim=-1, keepdim=True)
        numerator = torch.matmul(
            unnormalized.to(torch.bfloat16).to(torch.float32),
            expanded_value,
        )
        result = torch.where(
            denominator > 0.0,
            numerator / denominator.clamp_min(1.0e-30),
            0.0,
        )
        gradients = torch.autograd.grad(
            result,
            (logical_query, logical_key, logical_value),
            grad_output.to(torch.float32),
        )
    return tuple(gradient.to(dtype) for gradient in gradients)  # type: ignore[return-value]


@lru_cache(maxsize=2)
def _attention_forward_kernel(*, specialize_runtime_args: bool = True) -> Any:
    _, tl = _triton()
    import triton

    runtime_args = (
        "batch",
        "query_heads",
        "kv_heads",
        "query_length",
        "key_length",
        "head_dim",
        "packed_head_dim",
        "value_dim",
        "decode_splits",
        "softmax_scale",
        "mask_stride_b",
        "mask_stride_h",
        "mask_stride_q",
        "mask_stride_k",
        "is_causal",
        "has_window",
        "window_left",
        "window_right",
        "query_position_offset",
    )
    jit_options = (
        {}
        if specialize_runtime_args
        else {
            "do_not_specialize": runtime_args,
            "do_not_specialize_on_alignment": runtime_args,
        }
    )

    @triton.jit(**jit_options)
    def kernel(
        query,
        key,
        value,
        query_scale,
        key_scale,
        value_scale,
        attn_mask,
        out,
        workspace,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        head_dim,
        packed_head_dim,
        value_dim,
        decode_splits,
        softmax_scale,
        mask_stride_b,
        mask_stride_h,
        mask_stride_q,
        mask_stride_k,
        is_causal,
        has_window,
        window_left,
        window_right,
        query_position_offset,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_D: tl.constexpr,
        BLOCK_D_PACKED: tl.constexpr,
        BLOCK_DV: tl.constexpr,
        QK_INT4: tl.constexpr,
        PV_INT4: tl.constexpr,
        MASK_KIND: tl.constexpr,
        OUTPUT_BF16: tl.constexpr,
        SPLIT_DECODE: tl.constexpr,
        SPECIALIZE_SEMANTICS: tl.constexpr,
        IS_CAUSAL_STATIC: tl.constexpr,
        HAS_WINDOW_STATIC: tl.constexpr,
        SPECIALIZE_SEQUENCE: tl.constexpr,
        QUERY_LENGTH_STATIC: tl.constexpr,
        KEY_LENGTH_STATIC: tl.constexpr,
        SPECIALIZE_HEADS: tl.constexpr,
        QUERY_HEADS_STATIC: tl.constexpr,
        KV_HEADS_STATIC: tl.constexpr,
    ):
        if SPECIALIZE_SEQUENCE:
            query_length = QUERY_LENGTH_STATIC
            key_length = KEY_LENGTH_STATIC
        if SPECIALIZE_HEADS:
            query_heads = QUERY_HEADS_STATIC
            kv_heads = KV_HEADS_STATIC
        program_m = tl.program_id(0)
        if SPLIT_DECODE:
            query_block = program_m // decode_splits
            split_index = program_m % decode_splits
        else:
            query_block = program_m
            split_index = 0
        start_m = query_block * BLOCK_M
        batch_head = tl.program_id(1)
        batch_index = batch_head // query_heads
        query_head = batch_head % query_heads
        head_ratio = query_heads // kv_heads
        kv_head = query_head // head_ratio
        offsets_m = start_m + tl.arange(0, BLOCK_M)
        offsets_n = tl.arange(0, BLOCK_N)
        offsets_dv = tl.arange(0, BLOCK_DV)
        query_positions = offsets_m + query_position_offset
        if SPECIALIZE_SEMANTICS:
            effective_is_causal = IS_CAUSAL_STATIC
            effective_has_window = HAS_WINDOW_STATIC
        else:
            effective_is_causal = is_causal
            effective_has_window = has_window

        if QK_INT4:
            offsets_dp = tl.arange(0, BLOCK_D_PACKED)
            query_base = (batch_index * query_heads + query_head) * query_length * packed_head_dim
            query_ptrs = query + query_base + offsets_m[:, None] * packed_head_dim + offsets_dp[None, :]
            query_tile = tl.load(
                query_ptrs,
                mask=(offsets_m[:, None] < query_length) & (offsets_dp[None, :] < packed_head_dim),
                other=0,
            )
            query_row_scale = tl.load(
                query_scale + (batch_index * query_heads + query_head) * query_length + offsets_m,
                mask=offsets_m < query_length,
                other=0.0,
            ).to(tl.float32)
        else:
            offsets_d = tl.arange(0, BLOCK_D)
            query_base = (batch_index * query_heads + query_head) * query_length * head_dim
            query_ptrs = query + query_base + offsets_m[:, None] * head_dim + offsets_d[None, :]
            query_tile = tl.load(
                query_ptrs,
                mask=(offsets_m[:, None] < query_length) & (offsets_d[None, :] < head_dim),
                other=0.0,
            )

        lo = 0
        hi = ((key_length + BLOCK_N - 1) // BLOCK_N) * BLOCK_N
        if SPLIT_DECODE:
            total_key_blocks = (key_length + BLOCK_N - 1) // BLOCK_N
            blocks_per_split = (total_key_blocks + decode_splits - 1) // decode_splits
            lo = split_index * blocks_per_split * BLOCK_N
            hi = tl.minimum(hi, (split_index + 1) * blocks_per_split * BLOCK_N)
        if effective_has_window:
            window_lo = tl.maximum(0, start_m + query_position_offset - window_left)
            window_hi = tl.minimum(
                key_length,
                start_m + BLOCK_M - 1 + query_position_offset + window_right + 1,
            )
            lo = tl.maximum(lo, (window_lo // BLOCK_N) * BLOCK_N)
            hi = tl.minimum(hi, ((window_hi + BLOCK_N - 1) // BLOCK_N) * BLOCK_N)
        if effective_is_causal:
            causal_hi = tl.minimum(key_length, start_m + BLOCK_M - 1 + query_position_offset + 1)
            hi = tl.minimum(hi, ((causal_hi + BLOCK_N - 1) // BLOCK_N) * BLOCK_N)

        m_i = tl.full([BLOCK_M], -float("inf"), tl.float32)
        l_i = tl.zeros([BLOCK_M], tl.float32)
        acc = tl.zeros([BLOCK_M, BLOCK_DV], tl.float32)

        if not PV_INT4:
            for start_n in tl.range(lo, hi, BLOCK_N):
                key_offsets = start_n + offsets_n
                if QK_INT4:
                    key_base = (batch_index * kv_heads + kv_head) * key_length * packed_head_dim
                    key_ptrs = key + key_base + offsets_dp[:, None] + key_offsets[None, :] * packed_head_dim
                    key_tile = tl.load(
                        key_ptrs,
                        mask=(offsets_dp[:, None] < packed_head_dim) & (key_offsets[None, :] < key_length),
                        other=0,
                    )
                    score_i32 = tl.dot_scaled(
                        query_tile,
                        None,
                        "int4",
                        key_tile,
                        None,
                        "int4",
                        tl.zeros([BLOCK_M, BLOCK_N], tl.int32),
                        out_dtype=tl.int32,
                    )
                    key_row_scale = tl.load(
                        key_scale + (batch_index * kv_heads + kv_head) * key_length + key_offsets,
                        mask=key_offsets < key_length,
                        other=0.0,
                    ).to(tl.float32)
                    query_score_scale = query_row_scale * (
                        softmax_scale * 1.4426950408889634
                    )
                    scores = (
                        score_i32.to(tl.float32)
                        * query_score_scale[:, None]
                        * key_row_scale[None, :]
                    )
                else:
                    key_base = (batch_index * kv_heads + kv_head) * key_length * head_dim
                    key_ptrs = key + key_base + offsets_d[:, None] + key_offsets[None, :] * head_dim
                    key_tile = tl.load(
                        key_ptrs,
                        mask=(offsets_d[:, None] < head_dim) & (key_offsets[None, :] < key_length),
                        other=0.0,
                    )
                    scores = tl.dot(query_tile, key_tile, out_dtype=tl.float32)
                    scores *= softmax_scale * 1.4426950408889634
                valid = (offsets_m[:, None] < query_length) & (key_offsets[None, :] < key_length)
                key_positions = key_offsets[None, :]
                if effective_is_causal:
                    valid &= key_positions <= query_positions[:, None]
                if effective_has_window:
                    valid &= key_positions >= query_positions[:, None] - window_left
                    valid &= key_positions <= query_positions[:, None] + window_right
                if MASK_KIND != 0:
                    mask_ptrs = (
                        attn_mask
                        + batch_index * mask_stride_b
                        + query_head * mask_stride_h
                        + offsets_m[:, None] * mask_stride_q
                        + key_offsets[None, :] * mask_stride_k
                    )
                    if MASK_KIND == 1:
                        valid &= tl.load(mask_ptrs, mask=valid, other=False)
                    else:
                        additive = tl.load(mask_ptrs, mask=valid, other=-float("inf")).to(tl.float32)
                        scores += additive * 1.4426950408889634
                        valid &= additive != -float("inf")
                scores = tl.where(valid, scores, -float("inf"))
                block_max = tl.max(scores, axis=1)
                m_ij = tl.maximum(m_i, block_max)
                alpha = tl.where(m_i == -float("inf"), 0.0, tl.math.exp2(m_i - m_ij))
                probabilities = tl.where(valid, tl.math.exp2(scores - m_ij[:, None]), 0.0)
                l_ij = tl.sum(probabilities, axis=1)
                value_base = (batch_index * kv_heads + kv_head) * key_length * value_dim
                value_ptrs = value + value_base + key_offsets[:, None] * value_dim + offsets_dv[None, :]
                value_tile = tl.load(
                    value_ptrs,
                    mask=(key_offsets[:, None] < key_length) & (offsets_dv[None, :] < value_dim),
                    other=0.0,
                )
                acc = acc * alpha[:, None]
                acc = tl.dot(probabilities.to(tl.bfloat16), value_tile, acc, out_dtype=tl.float32)
                l_i = l_i * alpha + l_ij
                m_i = m_ij
        else:
            # Keep online-softmax probabilities in BF16. V stays packed in
            # memory and is dequantized tile-wise for BF16 P@V MMA, avoiding
            # runtime probability quantization and its signed-int4 correction.
            for start_n in tl.range(lo, hi, BLOCK_N):
                key_offsets = start_n + offsets_n
                if QK_INT4:
                    key_base = (batch_index * kv_heads + kv_head) * key_length * packed_head_dim
                    key_ptrs = key + key_base + offsets_dp[:, None] + key_offsets[None, :] * packed_head_dim
                    key_tile = tl.load(
                        key_ptrs,
                        mask=(offsets_dp[:, None] < packed_head_dim) & (key_offsets[None, :] < key_length),
                        other=0,
                    )
                    score_i32 = tl.dot_scaled(
                        query_tile,
                        None,
                        "int4",
                        key_tile,
                        None,
                        "int4",
                        tl.zeros([BLOCK_M, BLOCK_N], tl.int32),
                        out_dtype=tl.int32,
                    )
                    key_row_scale = tl.load(
                        key_scale + (batch_index * kv_heads + kv_head) * key_length + key_offsets,
                        mask=key_offsets < key_length,
                        other=0.0,
                    ).to(tl.float32)
                    query_score_scale = query_row_scale * (
                        softmax_scale * 1.4426950408889634
                    )
                    scores = (
                        score_i32.to(tl.float32)
                        * query_score_scale[:, None]
                        * key_row_scale[None, :]
                    )
                else:
                    key_base = (batch_index * kv_heads + kv_head) * key_length * head_dim
                    key_ptrs = key + key_base + offsets_d[:, None] + key_offsets[None, :] * head_dim
                    key_tile = tl.load(
                        key_ptrs,
                        mask=(offsets_d[:, None] < head_dim) & (key_offsets[None, :] < key_length),
                        other=0.0,
                    )
                    scores = tl.dot(query_tile, key_tile, out_dtype=tl.float32)
                    scores *= softmax_scale * 1.4426950408889634
                valid = (offsets_m[:, None] < query_length) & (key_offsets[None, :] < key_length)
                key_positions = key_offsets[None, :]
                if effective_is_causal:
                    valid &= key_positions <= query_positions[:, None]
                if effective_has_window:
                    valid &= key_positions >= query_positions[:, None] - window_left
                    valid &= key_positions <= query_positions[:, None] + window_right
                if MASK_KIND != 0:
                    mask_ptrs = (
                        attn_mask
                        + batch_index * mask_stride_b
                        + query_head * mask_stride_h
                        + offsets_m[:, None] * mask_stride_q
                        + key_offsets[None, :] * mask_stride_k
                    )
                    if MASK_KIND == 1:
                        valid &= tl.load(mask_ptrs, mask=valid, other=False)
                    else:
                        additive = tl.load(mask_ptrs, mask=valid, other=-float("inf")).to(tl.float32)
                        scores += additive * 1.4426950408889634
                        valid &= additive != -float("inf")
                scores = tl.where(valid, scores, -float("inf"))
                block_max = tl.max(scores, axis=1)
                m_ij = tl.maximum(m_i, block_max)
                alpha = tl.where(m_i == -float("inf"), 0.0, tl.math.exp2(m_i - m_ij))
                probabilities = tl.where(valid, tl.math.exp2(scores - m_ij[:, None]), 0.0)
                l_ij = tl.sum(probabilities, axis=1)

                packed_offsets_n = start_n // 2 + tl.arange(0, BLOCK_N // 2)
                packed_key_capacity = ((key_length + 15) // 16) * 8
                value_base = (batch_index * kv_heads + kv_head) * packed_key_capacity * value_dim
                value_ptrs = value + value_base + packed_offsets_n[:, None] * value_dim + offsets_dv[None, :]
                packed_value = tl.load(
                    value_ptrs,
                    mask=(packed_offsets_n[:, None] < packed_key_capacity)
                    & (offsets_dv[None, :] < value_dim),
                    other=0,
                )
                # Clear a padding high nibble if logical S ends on an odd token.
                high_valid = (packed_offsets_n * 2 + 1) < key_length
                packed_value = tl.where(high_valid[:, None], packed_value, packed_value & 0xF)
                value_low = (packed_value & 0xF).to(tl.int32)
                value_high = ((packed_value >> 4) & 0xF).to(tl.int32)
                value_low = tl.where(value_low >= 8, value_low - 16, value_low)
                value_high = tl.where(value_high >= 8, value_high - 16, value_high)
                joined_value = tl.join(value_low, value_high)
                value_codes = tl.reshape(
                    tl.permute(joined_value, (0, 2, 1)),
                    (BLOCK_N, BLOCK_DV),
                )
                scale_base = (
                    (batch_index * kv_heads + kv_head) * ((key_length + 15) // 16) * value_dim
                )
                if BLOCK_N == 16:
                    value_group_scale = tl.load(
                        value_scale + scale_base + (start_n // 16) * value_dim + offsets_dv,
                        mask=offsets_dv < value_dim,
                        other=0.0,
                    ).to(tl.float32)
                    value_scale_tile = value_group_scale[None, :]
                else:
                    value_group_indices = key_offsets // 16
                    value_scale_tile = tl.load(
                        value_scale
                        + scale_base
                        + value_group_indices[:, None] * value_dim
                        + offsets_dv[None, :],
                        mask=(key_offsets[:, None] < key_length)
                        & (offsets_dv[None, :] < value_dim),
                        other=0.0,
                    ).to(tl.float32)
                value_tile = (value_codes.to(tl.float32) * value_scale_tile).to(tl.bfloat16)
                acc = acc * alpha[:, None]
                acc = tl.dot(probabilities.to(tl.bfloat16), value_tile, acc, out_dtype=tl.float32)
                l_i = l_i * alpha + l_ij
                m_i = m_ij

        if SPLIT_DECODE:
            workspace_stride = value_dim + 2
            workspace_base = (batch_head * decode_splits + split_index) * workspace_stride
            local_rows = tl.arange(0, BLOCK_M)
            first_row_max = tl.max(
                tl.where(local_rows == 0, m_i, -float("inf")),
                axis=0,
            )
            first_row_sum = tl.sum(tl.where(local_rows == 0, l_i, 0.0), axis=0)
            first_row_acc = tl.sum(
                tl.where(local_rows[:, None] == 0, acc, 0.0),
                axis=0,
            )
            tl.store(workspace + workspace_base, first_row_max)
            tl.store(workspace + workspace_base + 1, first_row_sum)
            tl.store(
                workspace + workspace_base + 2 + offsets_dv,
                first_row_acc,
                mask=offsets_dv < value_dim,
            )
        else:
            acc = tl.where(l_i[:, None] > 0.0, acc / l_i[:, None], 0.0)
            out_base = (batch_index * query_heads + query_head) * query_length * value_dim
            out_ptrs = out + out_base + offsets_m[:, None] * value_dim + offsets_dv[None, :]
            out_mask = (offsets_m[:, None] < query_length) & (offsets_dv[None, :] < value_dim)
            if OUTPUT_BF16:
                tl.store(out_ptrs, acc.to(tl.bfloat16), mask=out_mask)
            else:
                tl.store(out_ptrs, acc, mask=out_mask)

    return kernel


@lru_cache(maxsize=2)
def _attention_decode_reduce_kernel(*, specialize_runtime_args: bool = True) -> Any:
    _, tl = _triton()
    import triton

    jit_options = (
        {}
        if specialize_runtime_args
        else {
            "do_not_specialize": ("value_dim", "decode_splits"),
            "do_not_specialize_on_alignment": ("value_dim", "decode_splits"),
        }
    )

    @triton.jit(**jit_options)
    def kernel(
        workspace,
        out,
        value_dim,
        decode_splits,
        BLOCK_DV: tl.constexpr,
        BLOCK_SPLITS: tl.constexpr,
        OUTPUT_BF16: tl.constexpr,
    ):
        batch_head = tl.program_id(0)
        split_offsets = tl.arange(0, BLOCK_SPLITS)
        value_offsets = tl.arange(0, BLOCK_DV)
        workspace_stride = value_dim + 2
        workspace_base = batch_head * decode_splits * workspace_stride
        split_mask = split_offsets < decode_splits
        partial_max = tl.load(
            workspace + workspace_base + split_offsets * workspace_stride,
            mask=split_mask,
            other=-float("inf"),
        )
        global_max = tl.max(partial_max, axis=0)
        weights = tl.where(
            split_mask & (partial_max != -float("inf")),
            tl.math.exp2(partial_max - global_max),
            0.0,
        )
        partial_sum = tl.load(
            workspace + workspace_base + split_offsets * workspace_stride + 1,
            mask=split_mask,
            other=0.0,
        )
        denominator = tl.sum(partial_sum * weights, axis=0)
        partial_output = tl.load(
            workspace
            + workspace_base
            + split_offsets[:, None] * workspace_stride
            + 2
            + value_offsets[None, :],
            mask=split_mask[:, None] & (value_offsets[None, :] < value_dim),
            other=0.0,
        )
        result = tl.sum(partial_output * weights[:, None], axis=0)
        result = tl.where(denominator > 0.0, result / denominator, 0.0)
        out_ptrs = out + batch_head * value_dim + value_offsets
        if OUTPUT_BF16:
            tl.store(out_ptrs, result.to(tl.bfloat16), mask=value_offsets < value_dim)
        else:
            tl.store(out_ptrs, result, mask=value_offsets < value_dim)

    return kernel


def int4_scaled_dot_product_attention(
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    attn_mask: Any | None = None,
    dropout_p: float = 0.0,
    is_causal: bool = False,
    scale: float | None = None,
    enable_gqa: bool = False,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    head_dim: int | None = None,
    output_dtype: Any | None = None,
    out: Any | None = None,
    workspace: Any | None = None,
    config: Int4AttentionConfig | None = None,
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> Any:
    """Scaled-dot-product attention for BF16 and packed INT4 operands.

    Logical tensors use ``(B, H, sequence, feature)`` order. Q and K must
    either both be contiguous BF16 tensors or packed ``uint8`` tensors with
    shapes ``(B, Hq, Lq, ceil(D / 2))`` and
    ``(B, Hkv, Lk, ceil(D / 2))``. Packed Q/K require contiguous per-token
    BF16 scales shaped ``(B, Hq, Lq)`` and ``(B, Hkv, Lk)`` plus ``head_dim=D``.
    V may independently be BF16 or grouped packed INT4. Packed V has shape
    ``(B, Hkv, ceil(Lk / 16) * 8, Dv)`` and requires BF16 scales shaped
    ``(B, Hkv, ceil(Lk / 16), Dv)``. Use the package quantization helpers to
    produce these physical layouts, or pass equivalent prepacked inputs.

    INT4 Q/K uses INT4 MMA for Q@K. P@V always uses BF16 MMA: packed INT4 V
    is dequantized tile-wise from its 16-token scale groups while online
    softmax probabilities remain BF16. No runtime probability quantization is
    performed. ``output_dtype`` may be BF16 (the default) or FP32.

    ``window_size`` is an inclusive local radius: integer ``w`` means
    ``(w, w)`` and a tuple specifies ``(left, right)``. ``query_position_offset``
    maps local query indices to absolute positions for cached decoding. The
    optimized forward path has no implicit autograd registration and currently
    requires ``dropout_p=0``. Use
    :func:`int4_scaled_dot_product_attention_backward` for explicit gradients.
    Split decode requires a contiguous FP32 ``workspace`` of shape
    ``(B, Hq, config.decode_splits, Dv + 2)`` during CUDAGraph capture. Pass a
    preallocated ``out`` tensor to keep output storage stable across replays.

    ``use_precompiled=None`` (the default) selects an installed native gfx1151
    artifact when the mode and launch config are covered, then falls back to
    Triton JIT otherwise. Pass ``True`` to require a packaged artifact or
    ``False`` to force JIT. Packaged artifacts currently cover ``D=Dv=64``;
    batch, head, sequence, masking, causal, local-window, and decode-offset
    values remain runtime arguments.
    """

    torch = _torch()
    if not isinstance(use_reference, bool):
        raise TypeError("use_reference must be a Python bool")
    if use_precompiled is not None and not isinstance(use_precompiled, bool):
        raise TypeError("use_precompiled must be a Python bool or None")
    if use_reference and use_precompiled is True:
        raise ValueError("use_reference=True cannot be combined with use_precompiled=True")
    if not isinstance(is_causal, bool):
        raise TypeError("is_causal must be a Python bool")
    if isinstance(dropout_p, bool) or not isinstance(dropout_p, (int, float)):
        raise TypeError("dropout_p must be a Python float")
    if float(dropout_p) != 0.0:
        raise ValueError("optimized INT4 attention currently supports dropout_p=0 only")
    if attn_mask is not None and is_causal:
        raise ValueError("attn_mask and is_causal cannot both be set")
    if isinstance(query_position_offset, bool) or not isinstance(query_position_offset, int):
        raise TypeError("query_position_offset must be a non-negative Python int")
    if query_position_offset < 0:
        raise ValueError("query_position_offset must be non-negative")
    window = _normalize_window(window_size)
    qk_int4, pv_int4, batch, query_heads, kv_heads, query_length, key_length, value_dim = _validate_inputs(
        torch,
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        enable_gqa=enable_gqa,
    )
    logical_head_dim = int(head_dim) if head_dim is not None else (
        int(query.shape[-1]) * 2 if qk_int4 else int(query.shape[-1])
    )
    softmax_scale = _softmax_scale(scale, logical_head_dim)
    dtype = torch.bfloat16 if output_dtype is None else output_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("output_dtype must be torch.bfloat16 or torch.float32")
    mask_arg, mask_kind, mask_strides = _mask_shape_and_strides(
        torch,
        attn_mask,
        device=query.device,
        target_shape=(batch, query_heads, query_length, key_length),
    )
    expected_shape = (batch, query_heads, query_length, value_dim)
    if out is not None:
        _require_tensor(torch, "out", out)
        if out.device != query.device or out.dtype != dtype or tuple(out.shape) != expected_shape:
            raise ValueError(f"out must have shape {expected_shape}, dtype {dtype}, and device {query.device}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")
        if out.requires_grad:
            raise ValueError("out.requires_grad must be False")
        for name, tensor in (
            ("query", query),
            ("key", key),
            ("value", value),
            ("query_scale", query_scale),
            ("key_scale", key_scale),
            ("value_scale", value_scale),
            ("attn_mask", attn_mask),
        ):
            if tensor is not None and _shares_storage(out, tensor):
                raise ValueError(f"out must not share storage with {name}")
    if use_reference:
        if workspace is not None:
            raise ValueError("workspace is not used by the reference path and must be omitted")
        result = reference_scaled_dot_product_attention(
            query,
            key,
            value,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            attn_mask=attn_mask,
            is_causal=is_causal,
            scale=softmax_scale,
            enable_gqa=enable_gqa,
            window_size=window,
            query_position_offset=query_position_offset,
            head_dim=logical_head_dim,
            output_dtype=dtype,
        )
        if out is None:
            return result
        if tuple(out.shape) != tuple(result.shape) or out.dtype != dtype or out.device != query.device:
            raise ValueError("out must match the reference result shape, dtype, and device")
        out.copy_(result)
        return out

    if config is None:
        config = _default_attention_config(
            qk_int4=qk_int4,
            pv_int4=pv_int4,
            query_length=query_length,
            key_length=key_length,
            window=window,
        )
    elif not isinstance(config, Int4AttentionConfig):
        raise TypeError("config must be an Int4AttentionConfig or None")
    if config.decode_splits > 1 and query_length != 1:
        raise ValueError("decode_splits > 1 requires query_length=1")

    for name, tensor in (
        ("query", query),
        ("key", key),
        ("value", value),
        ("query_scale", query_scale),
        ("key_scale", key_scale),
        ("value_scale", value_scale),
        ("attn_mask", attn_mask),
        ("workspace", workspace),
    ):
        if tensor is not None and tensor.dtype.is_floating_point and tensor.requires_grad:
            raise ValueError(f"optimized attention is forward-only; {name}.requires_grad must be False")
    if out is None:
        out = torch.empty(expected_shape, device=query.device, dtype=dtype)
    if query_length == 0 or key_length == 0:
        if workspace is not None:
            raise ValueError("workspace must be omitted for empty attention")
        out.zero_()
        return out

    split_decode = config.decode_splits > 1
    if split_decode:
        workspace_shape = (batch, query_heads, config.decode_splits, value_dim + 2)
        if workspace is None:
            if torch.cuda.is_current_stream_capturing():
                raise ValueError(
                    "split decode during CUDAGraph capture requires a preallocated FP32 workspace"
                )
            workspace = torch.empty(workspace_shape, device=query.device, dtype=torch.float32)
        else:
            _require_tensor(torch, "workspace", workspace)
            if (
                workspace.device != query.device
                or workspace.dtype != torch.float32
                or tuple(workspace.shape) != workspace_shape
                or not workspace.is_contiguous()
            ):
                raise ValueError(
                    f"workspace must have shape {workspace_shape}, dtype torch.float32, "
                    f"and device {query.device}"
                )
    elif workspace is not None:
        raise ValueError("workspace is accepted only when config.decode_splits > 1")
    if workspace is not None:
        for name, tensor in (
            ("query", query),
            ("key", key),
            ("value", value),
            ("query_scale", query_scale),
            ("key_scale", key_scale),
            ("value_scale", value_scale),
            ("attn_mask", attn_mask),
            ("out", out),
        ):
            if tensor is not None and _shares_storage(workspace, tensor):
                raise ValueError(f"workspace must not share storage with {name}")

    block_d = _next_power_of_two(logical_head_dim)
    packed_head_dim = int(query.shape[-1]) if qk_int4 else 1
    block_d_packed = _next_power_of_two(packed_head_dim)
    block_dv = _next_power_of_two(value_dim)
    if max(block_d, block_dv) > 256:
        raise ValueError("optimized attention currently supports head_dim and value_dim up to 256")
    left, right = window if window is not None else (0, 0)
    grid = (
        _cdiv(query_length, config.block_m) * config.decode_splits,
        batch * query_heads,
    )

    from .attention_artifacts import (
        ATTENTION_MASK_BF16,
        ATTENTION_MASK_BOOL,
        ATTENTION_MASK_FP32,
        ATTENTION_MASK_NONE,
        ATTENTION_OUTPUT_BF16,
        ATTENTION_OUTPUT_FP32,
        ATTENTION_PRECOMPILED_HEAD_DIM,
        ATTENTION_PRECOMPILED_VALUE_DIM,
        ATTENTION_SEMANTICS_CAUSAL,
        ATTENTION_SEMANTICS_CAUSAL_LOCAL,
        ATTENTION_SEMANTICS_FULL,
        ATTENTION_SEMANTICS_LOCAL,
        attention_forward_kernel_id,
        attention_mode,
        attention_precompiled_workload_shapes,
        attention_reduce_kernel_id,
        is_precompiled_attention_config,
        launch_precompiled_attention_forward,
        launch_precompiled_attention_reduce,
        precompiled_attention_forward_available,
        precompiled_attention_reduce_available,
    )

    mode = attention_mode(qk_int4=qk_int4, pv_int4=pv_int4)
    if mask_kind == 0:
        mask_dtype = ATTENTION_MASK_NONE
    elif mask_kind == 1:
        mask_dtype = ATTENTION_MASK_BOOL
    elif mask_arg.dtype == torch.bfloat16:
        mask_dtype = ATTENTION_MASK_BF16
    else:
        mask_dtype = ATTENTION_MASK_FP32
    artifact_output_dtype = ATTENTION_OUTPUT_BF16 if dtype == torch.bfloat16 else ATTENTION_OUTPUT_FP32
    if is_causal and window is not None:
        artifact_semantics = ATTENTION_SEMANTICS_CAUSAL_LOCAL
    elif is_causal:
        artifact_semantics = ATTENTION_SEMANTICS_CAUSAL
    elif window is not None:
        artifact_semantics = ATTENTION_SEMANTICS_LOCAL
    else:
        artifact_semantics = ATTENTION_SEMANTICS_FULL
    dimensions_covered = (
        logical_head_dim == ATTENTION_PRECOMPILED_HEAD_DIM
        and value_dim == ATTENTION_PRECOMPILED_VALUE_DIM
    )
    config_covered = is_precompiled_attention_config(mode, config)
    forward_kernel_id = None
    reduce_kernel_id = None
    artifacts_available = False
    if dimensions_covered and config_covered:
        workload_shape = (query_heads, kv_heads, query_length, key_length)
        workload_candidates: tuple[tuple[tuple[int, int, int, int] | None, str | None], ...] = (
            ((workload_shape, artifact_semantics), (None, None))
            if workload_shape in attention_precompiled_workload_shapes(config)
            else ((None, None),)
        )
        for candidate_workload_shape, candidate_semantics in workload_candidates:
            candidate_kernel_id = attention_forward_kernel_id(
                mode=mode,
                mask_dtype=mask_dtype,
                semantics=candidate_semantics,
                output_dtype=artifact_output_dtype,
                head_dim=logical_head_dim,
                value_dim=value_dim,
                config=config,
                workload_shape=candidate_workload_shape,
            )
            if precompiled_attention_forward_available(candidate_kernel_id):
                forward_kernel_id = candidate_kernel_id
                artifacts_available = True
                break
        if split_decode:
            reduce_kernel_id = attention_reduce_kernel_id(
                output_dtype=artifact_output_dtype,
                value_dim=value_dim,
                decode_splits=config.decode_splits,
            )
            artifacts_available = artifacts_available and precompiled_attention_reduce_available(
                reduce_kernel_id
            )

    if use_precompiled is True and not dimensions_covered:
        raise ValueError(
            "precompiled attention currently requires head_dim=64 and value_dim=64; "
            f"got head_dim={logical_head_dim}, value_dim={value_dim}"
        )
    if use_precompiled is True and not config_covered:
        raise ValueError(f"precompiled attention does not cover mode {mode} with config {config}")
    if use_precompiled is True and not artifacts_available:
        missing = forward_kernel_id if reduce_kernel_id is None else f"{forward_kernel_id} and/or {reduce_kernel_id}"
        raise RuntimeError(f"required precompiled attention artifact is not installed: {missing}")

    if use_precompiled is not False and artifacts_available:
        assert forward_kernel_id is not None
        launch_precompiled_attention_forward(
            forward_kernel_id,
            query=query,
            key=key,
            value=value,
            query_scale=query_scale if query_scale is not None else query,
            key_scale=key_scale if key_scale is not None else key,
            value_scale=value_scale if value_scale is not None else value,
            attn_mask=mask_arg,
            out=out,
            workspace=workspace if workspace is not None else out,
            grid=(grid[0], grid[1], 1),
            batch=batch,
            query_heads=query_heads,
            kv_heads=kv_heads,
            query_length=query_length,
            key_length=key_length,
            head_dim=logical_head_dim,
            packed_head_dim=packed_head_dim,
            value_dim=value_dim,
            decode_splits=config.decode_splits,
            softmax_scale=softmax_scale,
            mask_strides=mask_strides,
            is_causal=is_causal,
            has_window=window is not None,
            window_left=left,
            window_right=right,
            query_position_offset=query_position_offset,
        )
        if split_decode:
            assert reduce_kernel_id is not None and workspace is not None
            launch_precompiled_attention_reduce(
                reduce_kernel_id,
                workspace=workspace,
                out=out,
                grid=(batch * query_heads, 1, 1),
                value_dim=value_dim,
                decode_splits=config.decode_splits,
            )
        return out

    triton, _ = _triton()
    specialize_profile = (query_heads, kv_heads, query_length, key_length) in {
        (8, 8, 512, 512),
        (16, 8, 2048, 2048),
        (8, 8, 1, 2048),
    }
    _attention_forward_kernel()[grid](
        query,
        key,
        value,
        query_scale if query_scale is not None else query,
        key_scale if key_scale is not None else key,
        value_scale if value_scale is not None else value,
        mask_arg,
        out,
        workspace if workspace is not None else out,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        logical_head_dim,
        packed_head_dim,
        value_dim,
        config.decode_splits,
        softmax_scale,
        *mask_strides,
        bool(is_causal),
        window is not None,
        left,
        right,
        query_position_offset,
        BLOCK_M=config.block_m,
        BLOCK_N=config.block_n,
        BLOCK_D=block_d,
        BLOCK_D_PACKED=block_d_packed,
        BLOCK_DV=block_dv,
        QK_INT4=qk_int4,
        PV_INT4=pv_int4,
        MASK_KIND=mask_kind,
        OUTPUT_BF16=dtype == torch.bfloat16,
        SPLIT_DECODE=split_decode,
        SPECIALIZE_SEMANTICS=True,
        IS_CAUSAL_STATIC=bool(is_causal),
        HAS_WINDOW_STATIC=window is not None,
        SPECIALIZE_SEQUENCE=specialize_profile,
        QUERY_LENGTH_STATIC=query_length if specialize_profile else 0,
        KEY_LENGTH_STATIC=key_length if specialize_profile else 0,
        SPECIALIZE_HEADS=True,
        QUERY_HEADS_STATIC=query_heads,
        KV_HEADS_STATIC=kv_heads,
        num_warps=config.num_warps,
        num_stages=config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    if split_decode:
        _attention_decode_reduce_kernel()[(batch * query_heads,)](
            workspace,
            out,
            value_dim,
            config.decode_splits,
            BLOCK_DV=block_dv,
            BLOCK_SPLITS=_next_power_of_two(config.decode_splits),
            OUTPUT_BF16=dtype == torch.bfloat16,
            num_warps=4,
            num_stages=1,
        )
    return out

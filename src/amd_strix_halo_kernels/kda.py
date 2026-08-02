from __future__ import annotations

import math
from dataclasses import dataclass
from functools import lru_cache
from typing import Any


@dataclass(frozen=True, slots=True)
class KimiDeltaAttentionConfig:
    """Launch configuration for recurrent Kimi Delta Attention.

    ``value_block`` and ``backward_value_block`` independently partition the
    value dimension for forward and backward. ``checkpoint_interval`` controls
    the optional FP32 state cache consumed by the explicit backward API.
    ``chunked`` opts into the experimental compact-WY implementation;
    recurrent execution is the measured default.
    """

    value_block: int = 64
    backward_value_block: int = 16
    checkpoint_interval: int = 16
    num_warps: int = 4
    num_stages: int = 2
    chunked: bool = False

    def __post_init__(self) -> None:
        if not isinstance(self.chunked, bool):
            raise TypeError("chunked must be a Python bool")
        for name, value in (
            ("value_block", self.value_block),
            ("backward_value_block", self.backward_value_block),
            ("checkpoint_interval", self.checkpoint_interval),
            ("num_warps", self.num_warps),
            ("num_stages", self.num_stages),
        ):
            if isinstance(value, bool) or not isinstance(value, int):
                raise TypeError(f"{name} must be a positive Python int")
            if value <= 0:
                raise ValueError(f"{name} must be positive")
        for name, value in (
            ("value_block", self.value_block),
            ("backward_value_block", self.backward_value_block),
        ):
            if value & (value - 1):
                raise ValueError(f"{name} must be a power of two")
            if value > 64:
                raise ValueError(f"{name} must not exceed 64")
        if self.checkpoint_interval & (self.checkpoint_interval - 1):
            raise ValueError("checkpoint_interval must be a power of two")
        if self.checkpoint_interval > 64:
            raise ValueError("checkpoint_interval must not exceed 64")


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for Kimi Delta Attention") from exc
    return torch


def _triton() -> tuple[Any, Any]:
    try:
        import triton
        import triton.language as tl
    except ImportError as exc:
        raise RuntimeError("triton is required for optimized Kimi Delta Attention") from exc
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


def _resolve_scale(scale: float | None, head_dim: int) -> float:
    if scale is None:
        return 1.0 / math.sqrt(head_dim)
    if isinstance(scale, bool) or not isinstance(scale, (int, float)):
        raise TypeError("scale must be a finite Python float or None")
    resolved = float(scale)
    if not math.isfinite(resolved) or resolved <= 0.0:
        raise ValueError("scale must be finite and positive")
    return resolved


def quantize_kda_int4(x: Any, *, block_size: int = 16) -> tuple[Any, Any, int]:
    """Quantize the last KDA dimension to packed signed INT4 plus BF16 scales.

    The helper accepts logical ``[B, T, H, D]`` Q, K, or V tensors. Scales are
    per ``[B, T, H]`` row, and the packed last dimension is padded to a multiple
    of ``block_size`` exactly like the package's attention Q/K representation.
    """

    from .quant import quantize_attention_qk_int4

    return quantize_attention_qk_int4(x, block_size=block_size)


def _validate_inputs(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    head_dim: int | None,
    value_dim: int | None,
) -> tuple[bool, bool, int, int, int, int, int]:
    for name, tensor in (
        ("query", query),
        ("key", key),
        ("value", value),
        ("log_decay", log_decay),
        ("beta", beta),
    ):
        _require_tensor(torch, name, tensor)
        if not tensor.is_contiguous():
            raise ValueError(f"{name} must be contiguous")
        if tensor.device != query.device:
            raise ValueError(f"{name} must be on device {query.device}; got {tensor.device}")
    if query.ndim != 4 or key.ndim != 4 or value.ndim != 4:
        raise ValueError("query, key, and value must have shape [B, T, H, D]")
    if log_decay.ndim != 4 or beta.ndim != 3:
        raise ValueError("log_decay and beta must have shapes [B, T, H, D] and [B, T, H]")
    if query.dtype != key.dtype or query.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("query and key must both be BF16 or both be packed-INT4 uint8")
    if value.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("value must be BF16 or packed-INT4 uint8")
    if log_decay.dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("log_decay must be BF16 or FP32")
    if beta.dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("beta must be BF16 or FP32")
    batch, sequence, heads = (int(size) for size in query.shape[:3])
    expected_prefix = (batch, sequence, heads)
    if tuple(key.shape[:3]) != expected_prefix or tuple(value.shape[:3]) != expected_prefix:
        raise ValueError("query, key, and value must share B, T, and H")
    qk_int4 = query.dtype == torch.uint8
    value_int4 = value.dtype == torch.uint8
    if qk_int4:
        if isinstance(head_dim, bool) or not isinstance(head_dim, int) or head_dim <= 0:
            raise ValueError("positive head_dim is required for packed-INT4 Q/K")
        logical_head_dim = head_dim
        expected_packed = _cdiv(logical_head_dim, 16) * 8
        if int(query.shape[-1]) != expected_packed or int(key.shape[-1]) != expected_packed:
            raise ValueError(
                "packed query/key width must equal ceil(head_dim / 16) * 8"
            )
    else:
        logical_head_dim = int(query.shape[-1])
        if int(key.shape[-1]) != logical_head_dim:
            raise ValueError("BF16 query and key must share head_dim")
        if head_dim is not None and head_dim != logical_head_dim:
            raise ValueError("head_dim must match the BF16 query/key last dimension")
    if value_int4:
        if isinstance(value_dim, bool) or not isinstance(value_dim, int) or value_dim <= 0:
            raise ValueError("positive value_dim is required for packed-INT4 V")
        logical_value_dim = value_dim
        if int(value.shape[-1]) != _cdiv(logical_value_dim, 16) * 8:
            raise ValueError("packed value width must equal ceil(value_dim / 16) * 8")
    else:
        logical_value_dim = int(value.shape[-1])
        if value_dim is not None and value_dim != logical_value_dim:
            raise ValueError("value_dim must match the BF16 value last dimension")
    if logical_head_dim > 256 or logical_value_dim > 256:
        raise ValueError("optimized KDA supports head_dim and value_dim up to 256")
    if tuple(log_decay.shape) != (*expected_prefix, logical_head_dim):
        raise ValueError(
            f"log_decay must have shape {(*expected_prefix, logical_head_dim)}"
        )
    if tuple(beta.shape) != expected_prefix:
        raise ValueError(f"beta must have shape {expected_prefix}")
    scale_inputs = (
        ("query_scale", query_scale, qk_int4),
        ("key_scale", key_scale, qk_int4),
        ("value_scale", value_scale, value_int4),
    )
    for name, tensor, required in scale_inputs:
        if required:
            _require_tensor(torch, name, tensor)
            if tensor.device != query.device or tensor.dtype != torch.bfloat16:
                raise ValueError(f"{name} must be BF16 on device {query.device}")
            if tuple(tensor.shape) != expected_prefix or not tensor.is_contiguous():
                raise ValueError(f"{name} must be contiguous with shape {expected_prefix}")
        elif tensor is not None:
            raise ValueError(f"{name} is valid only for its packed-INT4 operand")
    return (
        qk_int4,
        value_int4,
        batch,
        sequence,
        heads,
        logical_head_dim,
        logical_value_dim,
    )


def _dequantize_last_dim(torch: Any, packed: Any, scale: Any, logical_dim: int) -> Any:
    from .quant import unpack_int4_k_major

    codes = unpack_int4_k_major(packed)[..., :logical_dim].to(torch.float32)
    return codes * scale.to(torch.float32)[..., None]


def _logical_inputs(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    head_dim: int,
    value_dim: int,
) -> tuple[Any, Any, Any]:
    logical_query = (
        _dequantize_last_dim(torch, query, query_scale, head_dim)
        if query.dtype == torch.uint8
        else query.to(torch.float32)
    )
    logical_key = (
        _dequantize_last_dim(torch, key, key_scale, head_dim)
        if key.dtype == torch.uint8
        else key.to(torch.float32)
    )
    logical_value = (
        _dequantize_last_dim(torch, value, value_scale, value_dim)
        if value.dtype == torch.uint8
        else value.to(torch.float32)
    )
    return logical_query, logical_key, logical_value


def _reference_from_logical(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    scale: float,
    initial_state: Any | None,
    normalize_qk: bool,
) -> tuple[Any, Any]:
    query_f32 = query.to(torch.float32)
    key_f32 = key.to(torch.float32)
    value_f32 = value.to(torch.float32)
    if normalize_qk:
        query_f32 = torch.nn.functional.normalize(query_f32, p=2, dim=-1)
        key_f32 = torch.nn.functional.normalize(key_f32, p=2, dim=-1)
    batch, sequence, heads, head_dim = query_f32.shape
    value_dim = int(value_f32.shape[-1])
    state = torch.zeros(
        (batch, heads, head_dim, value_dim),
        device=query.device,
        dtype=torch.float32,
    )
    if initial_state is not None:
        state = state + initial_state.to(torch.float32)
    outputs = []
    for token in range(sequence):
        q_t = query_f32[:, token]
        k_t = key_f32[:, token]
        v_t = value_f32[:, token]
        decay_t = log_decay[:, token].to(torch.float32).exp()
        beta_t = beta[:, token].to(torch.float32)
        state = state * decay_t[..., None]
        prediction = torch.einsum("bhd,bhdv->bhv", k_t, state)
        residual = v_t - prediction
        state = state + torch.einsum("bhd,bhv->bhdv", k_t, beta_t[..., None] * residual)
        outputs.append(torch.einsum("bhd,bhdv->bhv", q_t * scale, state))
    if outputs:
        output = torch.stack(outputs, dim=1)
    else:
        output = torch.empty(
            (batch, 0, heads, value_dim),
            device=query.device,
            dtype=torch.float32,
        )
    return output, state


def reference_kimi_delta_attention(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    head_dim: int | None = None,
    value_dim: int | None = None,
    scale: float | None = None,
    initial_state: Any | None = None,
    output_dtype: Any | None = None,
    normalize_qk: bool = True,
) -> tuple[Any, Any]:
    """FP32 recurrent oracle for Kimi Delta Attention.

    ``log_decay`` and ``beta`` are the already-activated values consumed by the
    official Kimi-Linear model: log decay is non-positive and beta is in
    ``[0, 1]``. Packed operands are dequantized before Q/K normalization, and
    quantization scales are treated as fixed representation metadata.
    """

    torch = _torch()
    if not isinstance(normalize_qk, bool):
        raise TypeError("normalize_qk must be a Python bool")
    (
        _,
        _,
        batch,
        _,
        heads,
        logical_head_dim,
        logical_value_dim,
    ) = _validate_inputs(
        torch,
        query,
        key,
        value,
        log_decay,
        beta,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        value_dim=value_dim,
    )
    if initial_state is not None:
        _require_tensor(torch, "initial_state", initial_state)
        expected = (batch, heads, logical_head_dim, logical_value_dim)
        if (
            initial_state.device != query.device
            or initial_state.dtype not in {torch.bfloat16, torch.float32}
            or tuple(initial_state.shape) != expected
            or not initial_state.is_contiguous()
        ):
            raise ValueError(
                f"initial_state must be contiguous BF16/FP32 with shape {expected}"
            )
    resolved_scale = _resolve_scale(scale, logical_head_dim)
    logical_query, logical_key, logical_value = _logical_inputs(
        torch,
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=logical_head_dim,
        value_dim=logical_value_dim,
    )
    output, final_state = _reference_from_logical(
        torch,
        logical_query,
        logical_key,
        logical_value,
        log_decay,
        beta,
        scale=resolved_scale,
        initial_state=initial_state,
        normalize_qk=normalize_qk,
    )
    dtype = torch.bfloat16 if output_dtype is None else output_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("output_dtype must be torch.bfloat16 or torch.float32")
    return output.to(dtype), final_state


@lru_cache(maxsize=1)
def _kda_chunk_prepare_kernel() -> Any:
    """Build the per-chunk WY preparation kernel."""

    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        key,
        value,
        log_decay,
        beta,
        key_scale,
        value_scale,
        w_workspace,
        u_workspace,
        sequence,
        heads,
        head_dim,
        packed_head_dim,
        value_dim,
        packed_value_dim,
        BLOCK_D: tl.constexpr,
        BLOCK_V: tl.constexpr,
        CHUNK_SIZE: tl.constexpr,
        QK_INT4: tl.constexpr,
        VALUE_INT4: tl.constexpr,
        NORMALIZE_QK: tl.constexpr,
    ):
        batch_head = tl.program_id(0)
        chunk_index = tl.program_id(1)
        batch_index = batch_head // heads
        head_index = batch_head % heads
        offsets_c = tl.arange(0, CHUNK_SIZE)
        offsets_d = tl.arange(0, BLOCK_D)
        offsets_v = tl.arange(0, BLOCK_V)
        tokens = chunk_index * CHUNK_SIZE + offsets_c
        valid_c = tokens < sequence
        mask_d = offsets_d < head_dim
        mask_v = offsets_v < value_dim
        row_indices = (batch_index * sequence + tokens) * heads + head_index
        if QK_INT4:
            packed_offsets = row_indices[:, None] * packed_head_dim + offsets_d[None, :] // 2
            key_bytes = tl.load(
                key + packed_offsets,
                mask=valid_c[:, None] & mask_d[None, :],
                other=0,
            )
            key_nibbles = tl.where(
                offsets_d[None, :] % 2 == 0,
                key_bytes & 0xF,
                (key_bytes >> 4) & 0xF,
            ).to(tl.int32)
            key_codes = tl.where(
                key_nibbles >= 8,
                key_nibbles - 16,
                key_nibbles,
            )
            key_rows = key_codes.to(tl.float32) * tl.load(
                key_scale + row_indices,
                mask=valid_c,
                other=0.0,
            )[:, None]
        else:
            key_rows = tl.load(
                key + row_indices[:, None] * head_dim + offsets_d[None, :],
                mask=valid_c[:, None] & mask_d[None, :],
                other=0.0,
            ).to(tl.float32)
        if NORMALIZE_QK:
            key_norm = tl.sqrt(tl.sum(key_rows * key_rows, axis=1))
            key_rows = key_rows / tl.maximum(key_norm[:, None], 1.0e-12)
        if VALUE_INT4:
            packed_v_offsets = (
                row_indices[:, None] * packed_value_dim + offsets_v[None, :] // 2
            )
            value_bytes = tl.load(
                value + packed_v_offsets,
                mask=valid_c[:, None] & mask_v[None, :],
                other=0,
            )
            value_nibbles = tl.where(
                offsets_v[None, :] % 2 == 0,
                value_bytes & 0xF,
                (value_bytes >> 4) & 0xF,
            ).to(tl.int32)
            value_codes = tl.where(
                value_nibbles >= 8,
                value_nibbles - 16,
                value_nibbles,
            )
            value_rows = value_codes.to(tl.float32) * tl.load(
                value_scale + row_indices,
                mask=valid_c,
                other=0.0,
            )[:, None]
        else:
            value_rows = tl.load(
                value + row_indices[:, None] * value_dim + offsets_v[None, :],
                mask=valid_c[:, None] & mask_v[None, :],
                other=0.0,
            ).to(tl.float32)
        gate_rows = tl.load(
            log_decay + row_indices[:, None] * head_dim + offsets_d[None, :],
            mask=valid_c[:, None] & mask_d[None, :],
            other=0.0,
        ).to(tl.float32)
        gate_cumsum = tl.cumsum(gate_rows, axis=0)
        beta_rows = tl.load(
            beta + row_indices,
            mask=valid_c,
            other=0.0,
        ).to(tl.float32)

        # A is the inverse compact-WY factor for the sequence of rank-one
        # delta updates. The token axes remain only 16x16; W/U use IEEE FP32
        # dot products so this research path preserves the 1e-3 fidelity gate.
        key_i = key_rows[:, None, :]
        key_j = key_rows[None, :, :]
        gate_i = gate_cumsum[:, None, :]
        gate_j = gate_cumsum[None, :, :]
        a_matrix = tl.sum(
            key_i * tl.exp(gate_i - gate_j) * key_j,
            axis=2,
        ) * beta_rows[:, None]
        row_ids = offsets_c[:, None]
        column_ids = offsets_c[None, :]
        a_matrix = tl.where(column_ids < row_ids, -a_matrix, 0.0)
        for row in range(1, CHUNK_SIZE):
            row_values = tl.sum(
                tl.where(row_ids == row, a_matrix, 0.0),
                axis=0,
            )
            correction = tl.sum(row_values[:, None] * a_matrix, axis=0)
            updated = row_values + correction
            a_matrix = tl.where(
                (row_ids == row) & (column_ids < row),
                updated[None, :],
                a_matrix,
            )
        a_matrix = (
            a_matrix + tl.where(row_ids == column_ids, 1.0, 0.0)
        ) * beta_rows[None, :]
        gated_key = tl.exp(gate_cumsum) * key_rows
        w_rows = tl.dot(
            a_matrix,
            gated_key,
            out_dtype=tl.float32,
            input_precision="ieee",
        )
        u_rows = tl.dot(
            a_matrix,
            value_rows,
            out_dtype=tl.float32,
            input_precision="ieee",
        )
        tl.store(
            w_workspace + row_indices[:, None] * head_dim + offsets_d[None, :],
            w_rows,
            mask=valid_c[:, None] & mask_d[None, :],
        )
        tl.store(
            u_workspace + row_indices[:, None] * value_dim + offsets_v[None, :],
            u_rows,
            mask=valid_c[:, None] & mask_v[None, :],
        )

    return kernel


@lru_cache(maxsize=1)
def _kda_chunk_forward_kernel() -> Any:
    """Build the head-owned chunk recurrence and output kernel."""

    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        query,
        key,
        log_decay,
        query_scale,
        key_scale,
        w_workspace,
        u_workspace,
        initial_state,
        output,
        final_state,
        state_cache,
        sequence,
        heads,
        head_dim,
        packed_head_dim,
        value_dim,
        num_chunks,
        output_scale,
        BLOCK_D: tl.constexpr,
        BLOCK_V: tl.constexpr,
        CHUNK_SIZE: tl.constexpr,
        QK_INT4: tl.constexpr,
        HAS_INITIAL_STATE: tl.constexpr,
        STORE_FINAL_STATE: tl.constexpr,
        STORE_STATE_CACHE: tl.constexpr,
        NORMALIZE_QK: tl.constexpr,
        OUTPUT_BF16: tl.constexpr,
    ):
        batch_head = tl.program_id(0)
        value_block = tl.program_id(1)
        batch_index = batch_head // heads
        head_index = batch_head % heads
        offsets_c = tl.arange(0, CHUNK_SIZE)
        offsets_d = tl.arange(0, BLOCK_D)
        offsets_v = value_block * BLOCK_V + tl.arange(0, BLOCK_V)
        mask_d = offsets_d < head_dim
        mask_v = offsets_v < value_dim
        state_offsets = (
            ((batch_head * head_dim + offsets_d[:, None]) * value_dim)
            + offsets_v[None, :]
        )
        if HAS_INITIAL_STATE:
            state = tl.load(
                initial_state + state_offsets,
                mask=mask_d[:, None] & mask_v[None, :],
                other=0.0,
            ).to(tl.float32)
        else:
            state = tl.zeros((BLOCK_D, BLOCK_V), dtype=tl.float32)
        if STORE_STATE_CACHE:
            cache_offsets = (
                (((batch_head * (num_chunks + 1)) * head_dim
                  + offsets_d[:, None]) * value_dim)
                + offsets_v[None, :]
            )
            tl.store(
                state_cache + cache_offsets,
                state,
                mask=mask_d[:, None] & mask_v[None, :],
            )

        for chunk_index in range(0, num_chunks):
            tokens = chunk_index * CHUNK_SIZE + offsets_c
            valid_c = tokens < sequence
            row_indices = (batch_index * sequence + tokens) * heads + head_index
            if QK_INT4:
                packed_offsets = (
                    row_indices[:, None] * packed_head_dim + offsets_d[None, :] // 2
                )
                query_bytes = tl.load(
                    query + packed_offsets,
                    mask=valid_c[:, None] & mask_d[None, :],
                    other=0,
                )
                key_bytes = tl.load(
                    key + packed_offsets,
                    mask=valid_c[:, None] & mask_d[None, :],
                    other=0,
                )
                query_nibbles = tl.where(
                    offsets_d[None, :] % 2 == 0,
                    query_bytes & 0xF,
                    (query_bytes >> 4) & 0xF,
                ).to(tl.int32)
                key_nibbles = tl.where(
                    offsets_d[None, :] % 2 == 0,
                    key_bytes & 0xF,
                    (key_bytes >> 4) & 0xF,
                ).to(tl.int32)
                query_codes = tl.where(
                    query_nibbles >= 8,
                    query_nibbles - 16,
                    query_nibbles,
                )
                key_codes = tl.where(
                    key_nibbles >= 8,
                    key_nibbles - 16,
                    key_nibbles,
                )
                query_rows = query_codes.to(tl.float32) * tl.load(
                    query_scale + row_indices,
                    mask=valid_c,
                    other=0.0,
                )[:, None]
                key_rows = key_codes.to(tl.float32) * tl.load(
                    key_scale + row_indices,
                    mask=valid_c,
                    other=0.0,
                )[:, None]
            else:
                qk_offsets = row_indices[:, None] * head_dim + offsets_d[None, :]
                query_rows = tl.load(
                    query + qk_offsets,
                    mask=valid_c[:, None] & mask_d[None, :],
                    other=0.0,
                ).to(tl.float32)
                key_rows = tl.load(
                    key + qk_offsets,
                    mask=valid_c[:, None] & mask_d[None, :],
                    other=0.0,
                ).to(tl.float32)
            if NORMALIZE_QK:
                query_norm = tl.sqrt(tl.sum(query_rows * query_rows, axis=1))
                key_norm = tl.sqrt(tl.sum(key_rows * key_rows, axis=1))
                query_rows = query_rows / tl.maximum(
                    query_norm[:, None],
                    1.0e-12,
                )
                key_rows = key_rows / tl.maximum(key_norm[:, None], 1.0e-12)
            gate_rows = tl.load(
                log_decay + row_indices[:, None] * head_dim + offsets_d[None, :],
                mask=valid_c[:, None] & mask_d[None, :],
                other=0.0,
            ).to(tl.float32)
            gate_cumsum = tl.cumsum(gate_rows, axis=0)
            w_rows = tl.load(
                w_workspace + row_indices[:, None] * head_dim + offsets_d[None, :],
                mask=valid_c[:, None] & mask_d[None, :],
                other=0.0,
            )
            u_rows = tl.load(
                u_workspace + row_indices[:, None] * value_dim + offsets_v[None, :],
                mask=valid_c[:, None] & mask_v[None, :],
                other=0.0,
            )
            value_new = u_rows.to(tl.float32) - tl.dot(
                w_rows,
                state,
                out_dtype=tl.float32,
                input_precision="ieee",
            )

            query_i = query_rows[:, None, :]
            key_j = key_rows[None, :, :]
            gate_i = gate_cumsum[:, None, :]
            gate_j = gate_cumsum[None, :, :]
            aqk = tl.sum(
                query_i * tl.exp(gate_i - gate_j) * key_j,
                axis=2,
            ) * output_scale
            row_ids = offsets_c[:, None]
            column_ids = offsets_c[None, :]
            aqk = tl.where(
                (column_ids <= row_ids) & valid_c[:, None] & valid_c[None, :],
                aqk,
                0.0,
            )
            query_gated = query_rows * tl.exp(gate_cumsum) * output_scale
            result = tl.dot(
                query_gated,
                state,
                out_dtype=tl.float32,
                input_precision="ieee",
            ) + tl.dot(
                aqk,
                value_new,
                out_dtype=tl.float32,
                input_precision="ieee",
            )
            output_offsets = row_indices[:, None] * value_dim + offsets_v[None, :]
            if OUTPUT_BF16:
                tl.store(
                    output + output_offsets,
                    result.to(tl.bfloat16),
                    mask=valid_c[:, None] & mask_v[None, :],
                )
            else:
                tl.store(
                    output + output_offsets,
                    result,
                    mask=valid_c[:, None] & mask_v[None, :],
                )
            final_gate = tl.sum(
                tl.where(
                    offsets_c[:, None] == CHUNK_SIZE - 1,
                    gate_cumsum,
                    0.0,
                ),
                axis=0,
            )
            state = state * tl.exp(final_gate)[:, None] + tl.dot(
                tl.trans(
                    key_rows * tl.exp(final_gate[None, :] - gate_cumsum)
                ),
                value_new,
                out_dtype=tl.float32,
                input_precision="ieee",
            )
            if STORE_STATE_CACHE:
                cache_offsets = (
                    ((((batch_head * (num_chunks + 1) + chunk_index + 1) * head_dim)
                      + offsets_d[:, None]) * value_dim)
                    + offsets_v[None, :]
                )
                tl.store(
                    state_cache + cache_offsets,
                    state,
                    mask=mask_d[:, None] & mask_v[None, :],
                )
        if STORE_FINAL_STATE:
            tl.store(
                final_state + state_offsets,
                state,
                mask=mask_d[:, None] & mask_v[None, :],
            )

    return kernel


@lru_cache(maxsize=1)
def _kda_forward_kernel() -> Any:
    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        query,
        key,
        value,
        log_decay,
        beta,
        query_scale,
        key_scale,
        value_scale,
        initial_state,
        output,
        final_state,
        state_cache,
        sequence,
        heads,
        head_dim,
        packed_head_dim,
        value_dim,
        packed_value_dim,
        num_checkpoints,
        output_scale,
        BLOCK_D: tl.constexpr,
        BLOCK_V: tl.constexpr,
        CHECKPOINT_INTERVAL: tl.constexpr,
        LOOP_STAGES: tl.constexpr,
        QK_INT4: tl.constexpr,
        VALUE_INT4: tl.constexpr,
        HAS_INITIAL_STATE: tl.constexpr,
        STORE_FINAL_STATE: tl.constexpr,
        STORE_STATE_CACHE: tl.constexpr,
        NORMALIZE_QK: tl.constexpr,
        OUTPUT_BF16: tl.constexpr,
        STORE_OUTPUT: tl.constexpr,
    ):
        batch_head = tl.program_id(0)
        value_block = tl.program_id(1)
        batch_index = batch_head // heads
        head_index = batch_head % heads
        offsets_d = tl.arange(0, BLOCK_D)
        offsets_v = value_block * BLOCK_V + tl.arange(0, BLOCK_V)
        mask_d = offsets_d < head_dim
        mask_v = offsets_v < value_dim
        state_offsets = (
            ((batch_head * head_dim + offsets_d[:, None]) * value_dim)
            + offsets_v[None, :]
        )
        if HAS_INITIAL_STATE:
            state = tl.load(
                initial_state + state_offsets,
                mask=mask_d[:, None] & mask_v[None, :],
                other=0.0,
            ).to(tl.float32)
        else:
            state = tl.zeros((BLOCK_D, BLOCK_V), dtype=tl.float32)
        if STORE_STATE_CACHE:
            cache_offsets = (
                (((batch_head * num_checkpoints) * head_dim + offsets_d[:, None]) * value_dim)
                + offsets_v[None, :]
            )
            tl.store(
                state_cache + cache_offsets,
                state,
                mask=mask_d[:, None] & mask_v[None, :],
            )

        for token in tl.range(
            0,
            sequence,
            num_stages=LOOP_STAGES,
        ):
            row_index = (batch_index * sequence + token) * heads + head_index
            if QK_INT4:
                packed_offsets = row_index * packed_head_dim + offsets_d // 2
                query_bytes = tl.load(query + packed_offsets, mask=mask_d, other=0)
                key_bytes = tl.load(key + packed_offsets, mask=mask_d, other=0)
                query_nibbles = tl.where(
                    offsets_d % 2 == 0,
                    query_bytes & 0xF,
                    (query_bytes >> 4) & 0xF,
                ).to(tl.int32)
                key_nibbles = tl.where(
                    offsets_d % 2 == 0,
                    key_bytes & 0xF,
                    (key_bytes >> 4) & 0xF,
                ).to(tl.int32)
                query_codes = tl.where(query_nibbles >= 8, query_nibbles - 16, query_nibbles)
                key_codes = tl.where(key_nibbles >= 8, key_nibbles - 16, key_nibbles)
                q = query_codes.to(tl.float32) * tl.load(query_scale + row_index)
                k = key_codes.to(tl.float32) * tl.load(key_scale + row_index)
            else:
                qk_offsets = row_index * head_dim + offsets_d
                q = tl.load(query + qk_offsets, mask=mask_d, other=0.0).to(tl.float32)
                k = tl.load(key + qk_offsets, mask=mask_d, other=0.0).to(tl.float32)
            if NORMALIZE_QK:
                q_norm = tl.sqrt(tl.sum(q * q, axis=0))
                k_norm = tl.sqrt(tl.sum(k * k, axis=0))
                q = q / tl.maximum(q_norm, 1.0e-12)
                k = k / tl.maximum(k_norm, 1.0e-12)
            if VALUE_INT4:
                packed_v_offsets = row_index * packed_value_dim + offsets_v // 2
                value_bytes = tl.load(value + packed_v_offsets, mask=mask_v, other=0)
                value_nibbles = tl.where(
                    offsets_v % 2 == 0,
                    value_bytes & 0xF,
                    (value_bytes >> 4) & 0xF,
                ).to(tl.int32)
                value_codes = tl.where(
                    value_nibbles >= 8,
                    value_nibbles - 16,
                    value_nibbles,
                )
                v = value_codes.to(tl.float32) * tl.load(value_scale + row_index)
            else:
                v_offsets = row_index * value_dim + offsets_v
                v = tl.load(value + v_offsets, mask=mask_v, other=0.0).to(tl.float32)
            decay_offsets = row_index * head_dim + offsets_d
            decay = tl.exp(
                tl.load(log_decay + decay_offsets, mask=mask_d, other=0.0).to(tl.float32)
            )
            beta_value = tl.load(beta + row_index).to(tl.float32)
            state = state * decay[:, None]
            prediction = tl.sum(k[:, None] * state, axis=0)
            residual = v - prediction
            state += k[:, None] * (beta_value * residual)[None, :]
            if STORE_OUTPUT:
                result = tl.sum((q * output_scale)[:, None] * state, axis=0)
                output_offsets = row_index * value_dim + offsets_v
                if OUTPUT_BF16:
                    tl.store(output + output_offsets, result.to(tl.bfloat16), mask=mask_v)
                else:
                    tl.store(output + output_offsets, result, mask=mask_v)
            if STORE_STATE_CACHE:
                at_boundary = ((token + 1) % CHECKPOINT_INTERVAL == 0) | (
                    token + 1 == sequence
                )
                checkpoint = (token + CHECKPOINT_INTERVAL) // CHECKPOINT_INTERVAL
                cache_offsets = (
                    (((batch_head * num_checkpoints + checkpoint) * head_dim
                      + offsets_d[:, None]) * value_dim)
                    + offsets_v[None, :]
                )
                tl.store(
                    state_cache + cache_offsets,
                    state,
                    mask=(mask_d[:, None] & mask_v[None, :]) & at_boundary,
                )
        if STORE_FINAL_STATE:
            tl.store(
                final_state + state_offsets,
                state,
                mask=mask_d[:, None] & mask_v[None, :],
            )

    return kernel


def kimi_delta_attention(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    head_dim: int | None = None,
    value_dim: int | None = None,
    scale: float | None = None,
    initial_state: Any | None = None,
    output_final_state: bool = False,
    output_dtype: Any | None = None,
    normalize_qk: bool = True,
    out: Any | None = None,
    final_state: Any | None = None,
    state_cache: Any | None = None,
    w_workspace: Any | None = None,
    u_workspace: Any | None = None,
    config: KimiDeltaAttentionConfig | None = None,
    use_reference: bool = False,
) -> tuple[Any, Any | None]:
    """Run causal Kimi Delta Attention over dense ``[B, T, H, D]`` inputs.

    Q/K are L2-normalized by default, matching the released Kimi-Linear model.
    ``log_decay`` and ``beta`` must already contain the activated values. Q/K
    and V may independently use BF16 or the packed representation returned by
    :func:`quantize_kda_int4`. The final state is always FP32 in the optimized
    path. Pass ``out``, ``final_state``, ``state_cache``,
    ``w_workspace``, and ``u_workspace`` to make the launch allocation-free
    for CUDA graph capture.
    """

    torch = _torch()
    for name, flag in (
        ("output_final_state", output_final_state),
        ("normalize_qk", normalize_qk),
        ("use_reference", use_reference),
    ):
        if not isinstance(flag, bool):
            raise TypeError(f"{name} must be a Python bool")
    (
        qk_int4,
        value_int4,
        batch,
        sequence,
        heads,
        logical_head_dim,
        logical_value_dim,
    ) = _validate_inputs(
        torch,
        query,
        key,
        value,
        log_decay,
        beta,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        value_dim=value_dim,
    )
    resolved_scale = _resolve_scale(scale, logical_head_dim)
    dtype = torch.bfloat16 if output_dtype is None else output_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("output_dtype must be torch.bfloat16 or torch.float32")
    state_shape = (batch, heads, logical_head_dim, logical_value_dim)
    if initial_state is not None:
        _require_tensor(torch, "initial_state", initial_state)
        if (
            initial_state.device != query.device
            or initial_state.dtype not in {torch.bfloat16, torch.float32}
            or tuple(initial_state.shape) != state_shape
            or not initial_state.is_contiguous()
        ):
            raise ValueError(
                f"initial_state must be contiguous BF16/FP32 with shape {state_shape}"
            )
    if not use_reference:
        for name, tensor in (
            ("query", query),
            ("key", key),
            ("value", value),
            ("log_decay", log_decay),
            ("beta", beta),
            ("initial_state", initial_state),
        ):
            if tensor is not None and tensor.requires_grad:
                raise ValueError(
                    f"optimized KDA does not register autograd; {name} must not require grad"
                )
    if use_reference:
        if w_workspace is not None or u_workspace is not None:
            raise ValueError("KDA workspaces are valid only for the optimized path")
        output, reference_final = reference_kimi_delta_attention(
            query,
            key,
            value,
            log_decay,
            beta,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            head_dim=logical_head_dim,
            value_dim=logical_value_dim,
            scale=resolved_scale,
            initial_state=initial_state,
            output_dtype=dtype,
            normalize_qk=normalize_qk,
        )
        return output, reference_final if output_final_state else None
    if config is None:
        config = KimiDeltaAttentionConfig()
    elif not isinstance(config, KimiDeltaAttentionConfig):
        raise TypeError("config must be a KimiDeltaAttentionConfig or None")
    if config.chunked:
        if config.checkpoint_interval != 16:
            raise ValueError("chunked KDA requires checkpoint_interval=16")
        if dtype != torch.bfloat16:
            raise ValueError("chunked KDA currently requires BF16 output")
        if value_int4:
            raise ValueError("chunked KDA currently requires BF16 V")
    output_shape = (batch, sequence, heads, logical_value_dim)
    if out is None:
        if torch.cuda.is_current_stream_capturing():
            raise ValueError("KDA capture requires a preallocated out tensor")
        out = torch.empty(output_shape, device=query.device, dtype=dtype)
    else:
        _require_tensor(torch, "out", out)
        if (
            out.device != query.device
            or out.dtype != dtype
            or tuple(out.shape) != output_shape
            or not out.is_contiguous()
        ):
            raise ValueError(f"out must be contiguous {dtype} with shape {output_shape}")
    if output_final_state:
        if final_state is None:
            if torch.cuda.is_current_stream_capturing():
                raise ValueError("KDA capture requires a preallocated final_state tensor")
            final_state = torch.empty(state_shape, device=query.device, dtype=torch.float32)
        else:
            _require_tensor(torch, "final_state", final_state)
            if (
                final_state.device != query.device
                or final_state.dtype != torch.float32
                or tuple(final_state.shape) != state_shape
                or not final_state.is_contiguous()
            ):
                raise ValueError(
                    f"final_state must be contiguous FP32 with shape {state_shape}"
                )
    elif final_state is not None:
        raise ValueError("final_state requires output_final_state=True")
    num_checkpoints = _cdiv(sequence, config.checkpoint_interval) + 1
    cache_shape = (batch, heads, num_checkpoints, logical_head_dim, logical_value_dim)
    if state_cache is not None:
        _require_tensor(torch, "state_cache", state_cache)
        if (
            state_cache.device != query.device
            or state_cache.dtype != torch.float32
            or tuple(state_cache.shape) != cache_shape
            or not state_cache.is_contiguous()
        ):
            raise ValueError(f"state_cache must be contiguous FP32 with shape {cache_shape}")
    use_chunked = config.chunked
    workspace_specs = (
        ("w_workspace", w_workspace, (batch, sequence, heads, logical_head_dim)),
        ("u_workspace", u_workspace, (batch, sequence, heads, logical_value_dim)),
    )
    resolved_workspaces: list[Any | None] = []
    for name, tensor, shape in workspace_specs:
        if not use_chunked:
            if tensor is not None:
                raise ValueError(f"{name} requires config.chunked=True")
            resolved_workspaces.append(None)
            continue
        if tensor is None:
            if torch.cuda.is_current_stream_capturing():
                raise ValueError(
                    f"KDA chunk capture requires a preallocated {name} tensor"
                )
            tensor = torch.empty(shape, device=query.device, dtype=torch.float32)
        else:
            _require_tensor(torch, name, tensor)
            if (
                tensor.device != query.device
                or tensor.dtype != torch.float32
                or tuple(tensor.shape) != shape
                or not tensor.is_contiguous()
            ):
                raise ValueError(
                    f"{name} must be contiguous FP32 with shape {shape}"
                )
        resolved_workspaces.append(tensor)
    w_workspace, u_workspace = resolved_workspaces
    protected = [query, key, value, log_decay, beta]
    if initial_state is not None:
        protected.append(initial_state)
    for name, tensor in (
        ("out", out),
        ("final_state", final_state),
        ("state_cache", state_cache),
        ("w_workspace", w_workspace),
        ("u_workspace", u_workspace),
    ):
        if tensor is None:
            continue
        for source in protected:
            if _shares_storage(tensor, source):
                raise ValueError(f"{name} must not share storage with an input tensor")
    mutable = tuple(
        (name, tensor)
        for name, tensor in (
            ("out", out),
            ("final_state", final_state),
            ("state_cache", state_cache),
            ("w_workspace", w_workspace),
            ("u_workspace", u_workspace),
        )
        if tensor is not None
    )
    for index, (name, tensor) in enumerate(mutable):
        for other_name, other in mutable[:index]:
            if _shares_storage(tensor, other):
                raise ValueError(f"{name} must not share storage with {other_name}")
    if sequence == 0:
        if output_final_state:
            if initial_state is None:
                final_state.zero_()
            else:
                final_state.copy_(initial_state)
        if state_cache is not None:
            if initial_state is None:
                state_cache.zero_()
            else:
                state_cache[:, :, 0].copy_(initial_state)
        return out, final_state if output_final_state else None
    initial_arg = initial_state if initial_state is not None else out
    final_arg = final_state if final_state is not None else out
    cache_arg = state_cache if state_cache is not None else out
    query_scale_arg = query_scale if query_scale is not None else query
    key_scale_arg = key_scale if key_scale is not None else key
    value_scale_arg = value_scale if value_scale is not None else value
    block_d = _next_power_of_two(logical_head_dim)
    grid = (batch * heads, _cdiv(logical_value_dim, config.value_block))
    if use_chunked:
        num_chunks = _cdiv(sequence, 16)
        _kda_chunk_prepare_kernel()[(batch * heads, num_chunks)](
            key,
            value,
            log_decay,
            beta,
            key_scale_arg,
            value_scale_arg,
            w_workspace,
            u_workspace,
            sequence,
            heads,
            logical_head_dim,
            int(key.shape[-1]),
            logical_value_dim,
            int(value.shape[-1]),
            BLOCK_D=block_d,
            BLOCK_V=_next_power_of_two(logical_value_dim),
            CHUNK_SIZE=16,
            QK_INT4=qk_int4,
            VALUE_INT4=value_int4,
            NORMALIZE_QK=normalize_qk,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
        )
        _kda_chunk_forward_kernel()[grid](
            query,
            key,
            log_decay,
            query_scale_arg,
            key_scale_arg,
            w_workspace,
            u_workspace,
            initial_arg,
            out,
            final_arg,
            cache_arg,
            sequence,
            heads,
            logical_head_dim,
            int(query.shape[-1]),
            logical_value_dim,
            num_chunks,
            resolved_scale,
            BLOCK_D=block_d,
            BLOCK_V=config.value_block,
            CHUNK_SIZE=16,
            QK_INT4=qk_int4,
            HAS_INITIAL_STATE=initial_state is not None,
            STORE_FINAL_STATE=False,
            STORE_STATE_CACHE=False,
            NORMALIZE_QK=normalize_qk,
            OUTPUT_BF16=dtype == torch.bfloat16,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
        )
        if output_final_state or state_cache is not None:
            _kda_forward_kernel()[grid](
                query,
                key,
                value,
                log_decay,
                beta,
                query_scale_arg,
                key_scale_arg,
                value_scale_arg,
                initial_arg,
                out,
                final_arg,
                cache_arg,
                sequence,
                heads,
                logical_head_dim,
                int(query.shape[-1]),
                logical_value_dim,
                int(value.shape[-1]),
                num_checkpoints,
                resolved_scale,
                BLOCK_D=block_d,
                BLOCK_V=config.value_block,
                CHECKPOINT_INTERVAL=config.checkpoint_interval,
                LOOP_STAGES=config.num_stages,
                QK_INT4=qk_int4,
                VALUE_INT4=value_int4,
                HAS_INITIAL_STATE=initial_state is not None,
                STORE_FINAL_STATE=output_final_state,
                STORE_STATE_CACHE=state_cache is not None,
                NORMALIZE_QK=normalize_qk,
                OUTPUT_BF16=True,
                STORE_OUTPUT=False,
                num_warps=config.num_warps,
                num_stages=config.num_stages,
            )
        return out, final_state if output_final_state else None
    _kda_forward_kernel()[grid](
        query,
        key,
        value,
        log_decay,
        beta,
        query_scale_arg,
        key_scale_arg,
        value_scale_arg,
        initial_arg,
        out,
        final_arg,
        cache_arg,
        sequence,
        heads,
        logical_head_dim,
        int(query.shape[-1]),
        logical_value_dim,
        int(value.shape[-1]),
        num_checkpoints,
        resolved_scale,
        BLOCK_D=block_d,
        BLOCK_V=config.value_block,
        CHECKPOINT_INTERVAL=config.checkpoint_interval,
        LOOP_STAGES=config.num_stages,
        QK_INT4=qk_int4,
        VALUE_INT4=value_int4,
        HAS_INITIAL_STATE=initial_state is not None,
        STORE_FINAL_STATE=output_final_state,
        STORE_STATE_CACHE=state_cache is not None,
        NORMALIZE_QK=normalize_qk,
        OUTPUT_BF16=dtype == torch.bfloat16,
        STORE_OUTPUT=True,
        num_warps=config.num_warps,
        num_stages=config.num_stages,
    )
    return out, final_state if output_final_state else None

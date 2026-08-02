from __future__ import annotations

from functools import lru_cache
from typing import Any

from .kda import (
    KimiDeltaAttentionConfig,
    _cdiv,
    _logical_inputs,
    _next_power_of_two,
    _reference_from_logical,
    _require_tensor,
    _resolve_scale,
    _shares_storage,
    _torch,
    _triton,
    _validate_inputs,
    kimi_delta_attention,
)


def _validate_grad_source(
    torch: Any,
    name: str,
    tensor: Any,
    *,
    device: Any,
    shape: tuple[int, ...],
) -> None:
    _require_tensor(torch, name, tensor)
    if (
        tensor.device != device
        or tensor.dtype not in {torch.bfloat16, torch.float32}
        or tuple(tensor.shape) != shape
        or not tensor.is_contiguous()
    ):
        raise ValueError(
            f"{name} must be contiguous BF16/FP32 on {device} with shape {shape}"
        )


def reference_kimi_delta_attention_backward(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    grad_output: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    head_dim: int | None = None,
    value_dim: int | None = None,
    scale: float | None = None,
    initial_state: Any | None = None,
    grad_final_state: Any | None = None,
    normalize_qk: bool = True,
) -> tuple[Any, Any, Any, Any, Any, Any | None]:
    """Differentiate the FP32 recurrent KDA oracle.

    For packed INT4 operands, gradients are with respect to the logical FP32
    dequantized Q, K, and V values. Quantization codes and scales are fixed
    representation metadata and are intentionally not differentiated.
    """

    torch = _torch()
    if not isinstance(normalize_qk, bool):
        raise TypeError("normalize_qk must be a Python bool")
    (
        _,
        _,
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
    output_shape = (batch, sequence, heads, logical_value_dim)
    state_shape = (batch, heads, logical_head_dim, logical_value_dim)
    _validate_grad_source(
        torch,
        "grad_output",
        grad_output,
        device=query.device,
        shape=output_shape,
    )
    if initial_state is not None:
        _validate_grad_source(
            torch,
            "initial_state",
            initial_state,
            device=query.device,
            shape=state_shape,
        )
    if grad_final_state is not None:
        _validate_grad_source(
            torch,
            "grad_final_state",
            grad_final_state,
            device=query.device,
            shape=state_shape,
        )
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
    differentiable = [
        logical_query.detach().requires_grad_(True),
        logical_key.detach().requires_grad_(True),
        logical_value.detach().requires_grad_(True),
        log_decay.detach().to(torch.float32).requires_grad_(True),
        beta.detach().to(torch.float32).requires_grad_(True),
    ]
    initial_f32 = None
    if initial_state is not None:
        initial_f32 = initial_state.detach().to(torch.float32).requires_grad_(True)
        differentiable.append(initial_f32)
    output, final_state = _reference_from_logical(
        torch,
        differentiable[0],
        differentiable[1],
        differentiable[2],
        differentiable[3],
        differentiable[4],
        scale=_resolve_scale(scale, logical_head_dim),
        initial_state=initial_f32,
        normalize_qk=normalize_qk,
    )
    result_tensors = [output]
    grad_tensors = [grad_output.to(torch.float32)]
    if grad_final_state is not None:
        result_tensors.append(final_state)
        grad_tensors.append(grad_final_state.to(torch.float32))
    gradients = torch.autograd.grad(
        tuple(result_tensors),
        tuple(differentiable),
        grad_outputs=tuple(grad_tensors),
    )
    grad_initial = gradients[5] if initial_state is not None else None
    return (*gradients[:5], grad_initial)


@lru_cache(maxsize=1)
def _kda_qk_preprocess_kernel() -> Any:
    """Materialize logical normalized Q/K once for all value tiles."""

    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        query,
        key,
        query_scale,
        key_scale,
        query_logical,
        key_logical,
        rows,
        head_dim,
        packed_head_dim,
        BLOCK_D: tl.constexpr,
        QK_INT4: tl.constexpr,
        NORMALIZE_QK: tl.constexpr,
    ):
        row_index = tl.program_id(0)
        offsets_d = tl.arange(0, BLOCK_D)
        mask_d = offsets_d < head_dim
        if QK_INT4:
            packed_offsets = row_index * packed_head_dim + offsets_d // 2
            query_bytes = tl.load(
                query + packed_offsets,
                mask=mask_d,
                other=0,
            )
            key_bytes = tl.load(
                key + packed_offsets,
                mask=mask_d,
                other=0,
            )
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
            query_raw = tl.where(
                query_nibbles >= 8,
                query_nibbles - 16,
                query_nibbles,
            ).to(tl.float32) * tl.load(query_scale + row_index)
            key_raw = tl.where(
                key_nibbles >= 8,
                key_nibbles - 16,
                key_nibbles,
            ).to(tl.float32) * tl.load(key_scale + row_index)
        else:
            qk_offsets = row_index * head_dim + offsets_d
            query_raw = tl.load(
                query + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
            key_raw = tl.load(
                key + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
        if NORMALIZE_QK:
            query_norm = tl.sqrt(tl.sum(query_raw * query_raw, axis=0))
            key_norm = tl.sqrt(tl.sum(key_raw * key_raw, axis=0))
            query_raw = query_raw / tl.maximum(query_norm, 1.0e-12)
            key_raw = key_raw / tl.maximum(key_norm, 1.0e-12)
        tl.store(
            query_logical + row_index * head_dim + offsets_d,
            query_raw,
            mask=mask_d,
        )
        tl.store(
            key_logical + row_index * head_dim + offsets_d,
            key_raw,
            mask=mask_d,
        )

    return kernel


@lru_cache(maxsize=1)
def _kda_backward_kernel() -> Any:
    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        query_logical_workspace,
        key_logical_workspace,
        value,
        log_decay,
        beta,
        value_scale,
        grad_output,
        grad_final_state,
        state_cache,
        grad_query_normalized,
        grad_key_normalized,
        grad_value,
        grad_log_decay,
        grad_beta,
        grad_initial_state,
        sequence,
        heads,
        head_dim,
        value_dim,
        packed_value_dim,
        num_checkpoints,
        output_scale,
        BLOCK_D: tl.constexpr,
        BLOCK_V: tl.constexpr,
        CHECKPOINT_INTERVAL: tl.constexpr,
        LOOP_STAGES: tl.constexpr,
        VALUE_INT4: tl.constexpr,
        HAS_GRAD_FINAL_STATE: tl.constexpr,
        STORE_GRAD_INITIAL_STATE: tl.constexpr,
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
        if HAS_GRAD_FINAL_STATE:
            grad_state = tl.load(
                grad_final_state + state_offsets,
                mask=mask_d[:, None] & mask_v[None, :],
                other=0.0,
            ).to(tl.float32)
        else:
            grad_state = tl.zeros((BLOCK_D, BLOCK_V), dtype=tl.float32)

        for reverse_index in tl.range(
            0,
            sequence,
            num_stages=LOOP_STAGES,
        ):
            token = sequence - reverse_index - 1
            chunk_index = token // CHECKPOINT_INTERVAL
            cache_offsets = (
                (((batch_head * num_checkpoints + chunk_index) * head_dim
                  + offsets_d[:, None]) * value_dim)
                + offsets_v[None, :]
            )
            state_previous = tl.load(
                state_cache + cache_offsets,
                mask=mask_d[:, None] & mask_v[None, :],
                other=0.0,
            ).to(tl.float32)
            chunk_start = chunk_index * CHECKPOINT_INTERVAL

            # Reconstruct S_(t-1) from the nearest FP32 chunk boundary. Keeping
            # only the current state tile avoids a sequence-sized state tensor.
            for replay_offset in range(0, CHECKPOINT_INTERVAL):
                replay_token = chunk_start + replay_offset
                replay_active = replay_token < token
                replay_row = (
                    (batch_index * sequence + replay_token) * heads + head_index
                )
                replay_key = tl.load(
                    key_logical_workspace + replay_row * head_dim + offsets_d,
                    mask=mask_d & replay_active,
                    other=0.0,
                ).to(tl.float32)
                if VALUE_INT4:
                    replay_v_packed = (
                        replay_row * packed_value_dim + offsets_v // 2
                    )
                    replay_value_bytes = tl.load(
                        value + replay_v_packed,
                        mask=mask_v & replay_active,
                        other=0,
                    )
                    replay_value_nibbles = tl.where(
                        offsets_v % 2 == 0,
                        replay_value_bytes & 0xF,
                        (replay_value_bytes >> 4) & 0xF,
                    ).to(tl.int32)
                    replay_value_codes = tl.where(
                        replay_value_nibbles >= 8,
                        replay_value_nibbles - 16,
                        replay_value_nibbles,
                    )
                    replay_value = replay_value_codes.to(tl.float32) * tl.load(
                        value_scale + replay_row,
                        mask=replay_active,
                        other=0.0,
                    )
                else:
                    replay_value = tl.load(
                        value + replay_row * value_dim + offsets_v,
                        mask=mask_v & replay_active,
                        other=0.0,
                    ).to(tl.float32)
                replay_decay = tl.exp(
                    tl.load(
                        log_decay + replay_row * head_dim + offsets_d,
                        mask=mask_d & replay_active,
                        other=0.0,
                    ).to(tl.float32)
                )
                replay_beta = tl.load(
                    beta + replay_row,
                    mask=replay_active,
                    other=0.0,
                ).to(tl.float32)
                replay_decayed = state_previous * replay_decay[:, None]
                replay_prediction = tl.sum(
                    replay_key[:, None] * replay_decayed,
                    axis=0,
                )
                replay_residual = replay_value - replay_prediction
                replay_state = replay_decayed + replay_key[:, None] * (
                    replay_beta * replay_residual
                )[None, :]
                state_previous = tl.where(
                    replay_active,
                    replay_state,
                    state_previous,
                )

            row_index = (batch_index * sequence + token) * heads + head_index
            qk_offsets = row_index * head_dim + offsets_d
            query_logical = tl.load(
                query_logical_workspace + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
            key_logical = tl.load(
                key_logical_workspace + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
            if VALUE_INT4:
                packed_v_offsets = row_index * packed_value_dim + offsets_v // 2
                value_bytes = tl.load(
                    value + packed_v_offsets,
                    mask=mask_v,
                    other=0,
                )
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
                value_logical = value_codes.to(tl.float32) * tl.load(
                    value_scale + row_index
                )
            else:
                value_logical = tl.load(
                    value + row_index * value_dim + offsets_v,
                    mask=mask_v,
                    other=0.0,
                ).to(tl.float32)
            decay = tl.exp(
                tl.load(
                    log_decay + row_index * head_dim + offsets_d,
                    mask=mask_d,
                    other=0.0,
                ).to(tl.float32)
            )
            beta_value = tl.load(beta + row_index).to(tl.float32)
            decayed_state = state_previous * decay[:, None]
            prediction = tl.sum(key_logical[:, None] * decayed_state, axis=0)
            residual = value_logical - prediction
            state = decayed_state + key_logical[:, None] * (
                beta_value * residual
            )[None, :]
            grad_output_value = tl.load(
                grad_output + row_index * value_dim + offsets_v,
                mask=mask_v,
                other=0.0,
            ).to(tl.float32)
            grad_query_partial = tl.sum(
                state * grad_output_value[None, :],
                axis=1,
            ) * output_scale
            grad_state += (
                query_logical[:, None]
                * (grad_output_value * output_scale)[None, :]
            )
            grad_update = tl.sum(key_logical[:, None] * grad_state, axis=0)
            grad_residual = beta_value * grad_update
            grad_beta_partial = tl.sum(grad_update * residual, axis=0)
            grad_value_value = grad_residual
            grad_key_partial = tl.sum(
                grad_state * (beta_value * residual)[None, :],
                axis=1,
            ) - tl.sum(decayed_state * grad_residual[None, :], axis=1)
            grad_decayed = grad_state - key_logical[:, None] * grad_residual[None, :]
            grad_decay_partial = tl.sum(
                grad_decayed * decayed_state,
                axis=1,
            )
            grad_state = grad_decayed * decay[:, None]

            tl.atomic_add(
                grad_query_normalized + row_index * head_dim + offsets_d,
                grad_query_partial,
                mask=mask_d,
                sem="relaxed",
            )
            tl.atomic_add(
                grad_key_normalized + row_index * head_dim + offsets_d,
                grad_key_partial,
                mask=mask_d,
                sem="relaxed",
            )
            tl.store(
                grad_value + row_index * value_dim + offsets_v,
                grad_value_value,
                mask=mask_v,
            )
            tl.atomic_add(
                grad_log_decay + row_index * head_dim + offsets_d,
                grad_decay_partial,
                mask=mask_d,
                sem="relaxed",
            )
            tl.atomic_add(
                grad_beta + row_index,
                grad_beta_partial,
                sem="relaxed",
            )

        if STORE_GRAD_INITIAL_STATE:
            tl.store(
                grad_initial_state + state_offsets,
                grad_state,
                mask=mask_d[:, None] & mask_v[None, :],
            )

    return kernel


@lru_cache(maxsize=1)
def _kda_qk_normalization_backward_kernel() -> Any:
    _, tl = _triton()
    import triton

    @triton.jit
    def kernel(
        query,
        key,
        query_scale,
        key_scale,
        grad_query_normalized,
        grad_key_normalized,
        grad_query,
        grad_key,
        rows,
        head_dim,
        packed_head_dim,
        BLOCK_D: tl.constexpr,
        QK_INT4: tl.constexpr,
        NORMALIZE_QK: tl.constexpr,
    ):
        row_index = tl.program_id(0)
        offsets_d = tl.arange(0, BLOCK_D)
        mask_d = offsets_d < head_dim
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
            query_raw = query_codes.to(tl.float32) * tl.load(
                query_scale + row_index
            )
            key_raw = key_codes.to(tl.float32) * tl.load(key_scale + row_index)
        else:
            qk_offsets = row_index * head_dim + offsets_d
            query_raw = tl.load(
                query + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
            key_raw = tl.load(
                key + qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(tl.float32)
        grad_query_norm = tl.load(
            grad_query_normalized + row_index * head_dim + offsets_d,
            mask=mask_d,
            other=0.0,
        )
        grad_key_norm = tl.load(
            grad_key_normalized + row_index * head_dim + offsets_d,
            mask=mask_d,
            other=0.0,
        )
        if NORMALIZE_QK:
            query_norm = tl.maximum(
                tl.sqrt(tl.sum(query_raw * query_raw, axis=0)),
                1.0e-12,
            )
            key_norm = tl.maximum(
                tl.sqrt(tl.sum(key_raw * key_raw, axis=0)),
                1.0e-12,
            )
            query_unit = query_raw / query_norm
            key_unit = key_raw / key_norm
            grad_query_value = (
                grad_query_norm
                - query_unit * tl.sum(grad_query_norm * query_unit, axis=0)
            ) / query_norm
            grad_key_value = (
                grad_key_norm
                - key_unit * tl.sum(grad_key_norm * key_unit, axis=0)
            ) / key_norm
        else:
            grad_query_value = grad_query_norm
            grad_key_value = grad_key_norm
        tl.store(
            grad_query + row_index * head_dim + offsets_d,
            grad_query_value,
            mask=mask_d,
        )
        tl.store(
            grad_key + row_index * head_dim + offsets_d,
            grad_key_value,
            mask=mask_d,
        )

    return kernel


def _prepare_grad_buffer(
    torch: Any,
    name: str,
    tensor: Any | None,
    *,
    device: Any,
    shape: tuple[int, ...],
    capturing: bool,
) -> Any:
    if tensor is None:
        if capturing:
            raise ValueError(
                f"KDA backward capture requires a preallocated {name} tensor"
            )
        return torch.empty(shape, device=device, dtype=torch.float32)
    _require_tensor(torch, name, tensor)
    if (
        tensor.device != device
        or tensor.dtype != torch.float32
        or tuple(tensor.shape) != shape
        or not tensor.is_contiguous()
    ):
        raise ValueError(f"{name} must be contiguous FP32 on {device} with shape {shape}")
    return tensor


def kimi_delta_attention_backward(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    grad_output: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    head_dim: int | None = None,
    value_dim: int | None = None,
    scale: float | None = None,
    initial_state: Any | None = None,
    grad_final_state: Any | None = None,
    normalize_qk: bool = True,
    state_cache: Any | None = None,
    grad_query: Any | None = None,
    grad_key: Any | None = None,
    grad_value: Any | None = None,
    grad_log_decay: Any | None = None,
    grad_beta: Any | None = None,
    grad_initial_state: Any | None = None,
    grad_query_normalized: Any | None = None,
    grad_key_normalized: Any | None = None,
    config: KimiDeltaAttentionConfig | None = None,
    backend: str = "triton",
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> tuple[Any, Any, Any, Any, Any, Any | None]:
    """Explicit KDA backward returning logical FP32 gradients.

    The returned order is ``(dQ, dK, dV, dLogDecay, dBeta, dInitialState)``.
    Packed INT4 inputs have logical (dequantized) gradients because discrete
    codes and scales are treated as fixed. The optimized path reconstructs
    per-token recurrent states from an FP32 chunk-boundary cache. For graph
    capture, pass that cache and every output/scratch tensor explicitly.
    ``backend="gluon"`` selects the tuned explicit-layout recurrent
    kernel while retaining the same FP32 workspaces and checkpoint contract.
    ``use_precompiled`` follows the forward API: auto-select, disable, or
    require the installed native gfx1151 KDA artifact set.
    """

    torch = _torch()
    for name, flag in (
        ("normalize_qk", normalize_qk),
        ("use_reference", use_reference),
    ):
        if not isinstance(flag, bool):
            raise TypeError(f"{name} must be a Python bool")
    if not isinstance(backend, str):
        raise TypeError("backend must be a Python str")
    if backend not in {"triton", "gluon"}:
        raise ValueError("backend must be 'triton' or 'gluon'")
    if use_precompiled is not None and not isinstance(use_precompiled, bool):
        raise TypeError("use_precompiled must be a Python bool or None")
    if use_reference and use_precompiled is True:
        raise ValueError("use_reference=True cannot be combined with use_precompiled=True")
    if backend != "gluon" and use_precompiled is True:
        raise ValueError("use_precompiled=True requires backend='gluon'")
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
    output_shape = (batch, sequence, heads, logical_value_dim)
    qk_shape = (batch, sequence, heads, logical_head_dim)
    beta_shape = (batch, sequence, heads)
    state_shape = (batch, heads, logical_head_dim, logical_value_dim)
    _validate_grad_source(
        torch,
        "grad_output",
        grad_output,
        device=query.device,
        shape=output_shape,
    )
    if initial_state is not None:
        _validate_grad_source(
            torch,
            "initial_state",
            initial_state,
            device=query.device,
            shape=state_shape,
        )
    if grad_final_state is not None:
        _validate_grad_source(
            torch,
            "grad_final_state",
            grad_final_state,
            device=query.device,
            shape=state_shape,
        )
    if not use_reference:
        for name, tensor in (
            ("query", query),
            ("key", key),
            ("value", value),
            ("log_decay", log_decay),
            ("beta", beta),
            ("grad_output", grad_output),
            ("initial_state", initial_state),
            ("grad_final_state", grad_final_state),
        ):
            if tensor is not None and tensor.requires_grad:
                raise ValueError(
                    f"optimized KDA backward is explicit; {name} must not require grad"
                )
    resolved_scale = _resolve_scale(scale, logical_head_dim)
    if use_reference:
        return reference_kimi_delta_attention_backward(
            query,
            key,
            value,
            log_decay,
            beta,
            grad_output,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            head_dim=logical_head_dim,
            value_dim=logical_value_dim,
            scale=resolved_scale,
            initial_state=initial_state,
            grad_final_state=grad_final_state,
            normalize_qk=normalize_qk,
        )
    if config is None:
        config = KimiDeltaAttentionConfig()
    elif not isinstance(config, KimiDeltaAttentionConfig):
        raise TypeError("config must be a KimiDeltaAttentionConfig or None")
    use_native = False
    native_jobs: dict[str, Any] = {}
    if backend == "gluon" and use_precompiled is not False:
        from .kda_artifacts import (
            KDA_BACKWARD_NORMALIZE,
            KDA_BACKWARD_PREPROCESS,
            KDA_BACKWARD_RECURRENT,
            KDA_FORWARD,
            KdaArtifactJob,
        )
        from .kda_native import (
            is_precompiled_kda_workload,
            precompiled_kda_available,
        )

        native_jobs = {
            KDA_BACKWARD_PREPROCESS: KdaArtifactJob(
                KDA_BACKWARD_PREPROCESS,
                qk_int4=qk_int4,
            ),
            KDA_BACKWARD_RECURRENT: KdaArtifactJob(
                KDA_BACKWARD_RECURRENT,
                value_int4=value_int4,
            ),
            KDA_BACKWARD_NORMALIZE: KdaArtifactJob(
                KDA_BACKWARD_NORMALIZE,
                qk_int4=qk_int4,
            ),
        }
        if state_cache is None:
            native_jobs[KDA_FORWARD] = KdaArtifactJob(
                KDA_FORWARD,
                qk_int4=qk_int4,
                value_int4=value_int4,
                store_state_cache=True,
            )
        native_supported = (
            is_precompiled_kda_workload(
                batch=batch,
                sequence=sequence,
                heads=heads,
                head_dim=logical_head_dim,
                value_dim=logical_value_dim,
                value_block=config.value_block,
                checkpoint_interval=config.checkpoint_interval,
                needs_state_cache=True,
            )
            and not config.chunked
            and initial_state is None
            and grad_final_state is None
            and normalize_qk
            and grad_output.dtype == torch.bfloat16
            and log_decay.dtype == torch.float32
            and beta.dtype == torch.float32
        )
        artifacts_available = native_supported and all(
            precompiled_kda_available(job) for job in native_jobs.values()
        )
        if use_precompiled is True and not native_supported:
            raise ValueError(
                "precompiled KDA backward requires positive B/H, "
                "1 <= T <= 2048, D=Dv=128, value_block=64, "
                "checkpoint_interval=4, normalized Q/K, BF16 dOutput, FP32 "
                "gates, no initial/final-state gradient, and RDNA "
                "3.5-addressable runtime buffers"
            )
        if use_precompiled is True and not artifacts_available:
            raise RuntimeError("the required precompiled KDA backward artifact set is not installed")
        use_native = artifacts_available
    capturing = torch.cuda.is_current_stream_capturing()
    num_checkpoints = _cdiv(sequence, config.checkpoint_interval) + 1
    cache_shape = (
        batch,
        heads,
        num_checkpoints,
        logical_head_dim,
        logical_value_dim,
    )
    if state_cache is None:
        if capturing:
            raise ValueError(
                "KDA backward capture requires a prepopulated state_cache tensor"
            )
        state_cache = torch.empty(cache_shape, device=query.device, dtype=torch.float32)
        kimi_delta_attention(
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
            normalize_qk=normalize_qk,
            state_cache=state_cache,
            config=config,
            backend=backend,
            use_precompiled=use_native,
        )
    else:
        _require_tensor(torch, "state_cache", state_cache)
        if (
            state_cache.device != query.device
            or state_cache.dtype != torch.float32
            or tuple(state_cache.shape) != cache_shape
            or not state_cache.is_contiguous()
        ):
            raise ValueError(
                f"state_cache must be contiguous FP32 with shape {cache_shape}"
            )
    grad_query = _prepare_grad_buffer(
        torch,
        "grad_query",
        grad_query,
        device=query.device,
        shape=qk_shape,
        capturing=capturing,
    )
    grad_key = _prepare_grad_buffer(
        torch,
        "grad_key",
        grad_key,
        device=query.device,
        shape=qk_shape,
        capturing=capturing,
    )
    grad_value = _prepare_grad_buffer(
        torch,
        "grad_value",
        grad_value,
        device=query.device,
        shape=output_shape,
        capturing=capturing,
    )
    grad_log_decay = _prepare_grad_buffer(
        torch,
        "grad_log_decay",
        grad_log_decay,
        device=query.device,
        shape=qk_shape,
        capturing=capturing,
    )
    grad_beta = _prepare_grad_buffer(
        torch,
        "grad_beta",
        grad_beta,
        device=query.device,
        shape=beta_shape,
        capturing=capturing,
    )
    grad_query_normalized = _prepare_grad_buffer(
        torch,
        "grad_query_normalized",
        grad_query_normalized,
        device=query.device,
        shape=qk_shape,
        capturing=capturing,
    )
    grad_key_normalized = _prepare_grad_buffer(
        torch,
        "grad_key_normalized",
        grad_key_normalized,
        device=query.device,
        shape=qk_shape,
        capturing=capturing,
    )
    if initial_state is not None:
        grad_initial_state = _prepare_grad_buffer(
            torch,
            "grad_initial_state",
            grad_initial_state,
            device=query.device,
            shape=state_shape,
            capturing=capturing,
        )
    elif grad_initial_state is not None:
        raise ValueError("grad_initial_state requires initial_state")
    outputs = [
        grad_query,
        grad_key,
        grad_value,
        grad_log_decay,
        grad_beta,
        grad_query_normalized,
        grad_key_normalized,
    ]
    if grad_initial_state is not None:
        outputs.append(grad_initial_state)
    protected = [
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        state_cache,
    ]
    for optional in (
        query_scale,
        key_scale,
        value_scale,
        initial_state,
        grad_final_state,
    ):
        if optional is not None:
            protected.append(optional)
    for output_index, output in enumerate(outputs):
        for source in protected:
            if _shares_storage(output, source):
                raise ValueError("KDA backward outputs must not share storage with inputs")
        for previous in outputs[:output_index]:
            if _shares_storage(output, previous):
                raise ValueError("KDA backward output and scratch tensors must not alias")
    grad_query_normalized.zero_()
    grad_key_normalized.zero_()
    grad_log_decay.zero_()
    grad_beta.zero_()
    if sequence == 0:
        grad_value.zero_()
        grad_query.zero_()
        grad_key.zero_()
        if grad_initial_state is not None:
            if grad_final_state is None:
                grad_initial_state.zero_()
            else:
                grad_initial_state.copy_(grad_final_state)
        return (
            grad_query,
            grad_key,
            grad_value,
            grad_log_decay,
            grad_beta,
            grad_initial_state,
        )
    dummy = grad_query
    block_d = _next_power_of_two(logical_head_dim)
    rows = batch * sequence * heads
    query_scale_argument = query_scale if query_scale is not None else query
    key_scale_argument = key_scale if key_scale is not None else key
    if use_native:
        from .kda_artifacts import KDA_BACKWARD_PREPROCESS
        from .kda_native import launch_precompiled_kda

        launch_precompiled_kda(
            native_jobs[KDA_BACKWARD_PREPROCESS],
            values={
                "query": query,
                "key": key,
                "query_scale": query_scale_argument,
                "key_scale": key_scale_argument,
                "query_logical": grad_query,
                "key_logical": grad_key,
                "rows": rows,
                "head_dim": logical_head_dim,
                "packed_head_dim": int(query.shape[-1]),
            },
            reference_tensor=query,
            grid=(rows, 1),
        )
    else:
        _kda_qk_preprocess_kernel()[(rows,)](
            query,
            key,
            query_scale if query_scale is not None else dummy,
            key_scale if key_scale is not None else dummy,
            grad_query,
            grad_key,
            rows,
            logical_head_dim,
            int(query.shape[-1]),
            BLOCK_D=block_d,
            QK_INT4=qk_int4,
            NORMALIZE_QK=normalize_qk,
            num_warps=4 if backend == "gluon" else config.num_warps,
            num_stages=config.num_stages,
        )
    backward_value_block = (
        min(64, _next_power_of_two(logical_value_dim))
        if backend == "gluon"
        else config.backward_value_block
    )
    grid = (
        batch * heads,
        _cdiv(logical_value_dim, backward_value_block),
    )
    value_scale_argument = value_scale if value_scale is not None else value
    grad_final_state_argument = (
        grad_final_state if grad_final_state is not None else dummy
    )
    grad_initial_state_argument = (
        grad_initial_state if grad_initial_state is not None else dummy
    )
    if use_native:
        from .kda_artifacts import KDA_BACKWARD_RECURRENT
        from .kda_native import (
            kda_precompiled_cache_tail,
            launch_precompiled_kda,
        )

        launch_precompiled_kda(
            native_jobs[KDA_BACKWARD_RECURRENT],
            values={
                "query_logical_workspace": grad_query,
                "key_logical_workspace": grad_key,
                "value": value,
                "log_decay": log_decay,
                "beta": beta,
                "value_scale": value_scale_argument,
                "grad_output": grad_output,
                "grad_final_state": grad_final_state_argument,
                "state_cache": state_cache,
                "state_cache_tail": kda_precompiled_cache_tail(state_cache),
                "grad_query_normalized": grad_query_normalized,
                "grad_key_normalized": grad_key_normalized,
                "grad_value": grad_value,
                "grad_log_decay": grad_log_decay,
                "grad_beta": grad_beta,
                "grad_initial_state": grad_initial_state_argument,
                "sequence": sequence,
                "heads": heads,
                "head_dim": logical_head_dim,
                "value_dim": logical_value_dim,
                "packed_value_dim": int(value.shape[-1]),
                "num_checkpoints": num_checkpoints,
                "output_scale": resolved_scale,
            },
            reference_tensor=query,
            grid=grid,
        )
    elif backend == "gluon":
        from .kda_gluon_backward import launch_kda_gluon_backward

        launch_kda_gluon_backward(
            grid=grid,
            query_logical_workspace=grad_query,
            key_logical_workspace=grad_key,
            value=value,
            log_decay=log_decay,
            beta=beta,
            value_scale=value_scale_argument,
            grad_output=grad_output,
            grad_final_state=grad_final_state_argument,
            state_cache=state_cache,
            grad_query_normalized=grad_query_normalized,
            grad_key_normalized=grad_key_normalized,
            grad_value=grad_value,
            grad_log_decay=grad_log_decay,
            grad_beta=grad_beta,
            grad_initial_state=grad_initial_state_argument,
            sequence=sequence,
            heads=heads,
            head_dim=logical_head_dim,
            value_dim=logical_value_dim,
            packed_value_dim=int(value.shape[-1]),
            num_checkpoints=num_checkpoints,
            output_scale=resolved_scale,
            block_d=block_d,
            block_v=backward_value_block,
            checkpoint_interval=config.checkpoint_interval,
            value_int4=value_int4,
            has_grad_final_state=grad_final_state is not None,
            store_grad_initial_state=grad_initial_state is not None,
        )
    else:
        _kda_backward_kernel()[grid](
            grad_query,
            grad_key,
            value,
            log_decay,
            beta,
            value_scale_argument,
            grad_output,
            grad_final_state_argument,
            state_cache,
            grad_query_normalized,
            grad_key_normalized,
            grad_value,
            grad_log_decay,
            grad_beta,
            grad_initial_state_argument,
            sequence,
            heads,
            logical_head_dim,
            logical_value_dim,
            int(value.shape[-1]),
            num_checkpoints,
            resolved_scale,
            BLOCK_D=block_d,
            BLOCK_V=backward_value_block,
            CHECKPOINT_INTERVAL=config.checkpoint_interval,
            LOOP_STAGES=config.num_stages,
            VALUE_INT4=value_int4,
            HAS_GRAD_FINAL_STATE=grad_final_state is not None,
            STORE_GRAD_INITIAL_STATE=grad_initial_state is not None,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
        )
    if use_native:
        from .kda_artifacts import KDA_BACKWARD_NORMALIZE
        from .kda_native import launch_precompiled_kda

        launch_precompiled_kda(
            native_jobs[KDA_BACKWARD_NORMALIZE],
            values={
                "query": query,
                "key": key,
                "query_scale": query_scale_argument,
                "key_scale": key_scale_argument,
                "grad_query_normalized": grad_query_normalized,
                "grad_key_normalized": grad_key_normalized,
                "grad_query": grad_query,
                "grad_key": grad_key,
                "rows": rows,
                "head_dim": logical_head_dim,
                "packed_head_dim": int(query.shape[-1]),
            },
            reference_tensor=query,
            grid=(rows, 1),
        )
    else:
        _kda_qk_normalization_backward_kernel()[(rows,)](
            query,
            key,
            query_scale if query_scale is not None else dummy,
            key_scale if key_scale is not None else dummy,
            grad_query_normalized,
            grad_key_normalized,
            grad_query,
            grad_key,
            rows,
            logical_head_dim,
            int(query.shape[-1]),
            BLOCK_D=block_d,
            QK_INT4=qk_int4,
            NORMALIZE_QK=normalize_qk,
            num_warps=4 if backend == "gluon" else config.num_warps,
            num_stages=config.num_stages,
        )
    return (
        grad_query,
        grad_key,
        grad_value,
        grad_log_decay,
        grad_beta,
        grad_initial_state,
    )

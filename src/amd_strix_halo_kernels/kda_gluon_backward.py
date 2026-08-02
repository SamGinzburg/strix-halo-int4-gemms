from __future__ import annotations

from functools import lru_cache
from typing import Any

from .kda_gluon import BUFFER_DESCRIPTOR_PAGE_ELEMENTS, _gluon


@lru_cache(maxsize=None)
def make_kda_backward_layouts(
    *,
    block_v: int,
    num_warps: int,
    dimension_threads: int,
    value_warps: int,
) -> tuple[Any, Any]:
    """Build vector and recurrent-state layouts for explicit KDA backward."""

    _, gl = _gluon()
    dimension_warps = num_warps // value_warps
    value_threads = 32 // dimension_threads
    if value_threads * value_warps > block_v:
        raise ValueError("the Gluon backward layout partitions V beyond BLOCK_V")
    state_size_per_thread = [1, 4] if block_v >= 64 else [1, 1]
    state_layout = gl.BlockedLayout(
        size_per_thread=state_size_per_thread,
        threads_per_warp=[dimension_threads, value_threads],
        warps_per_cta=[dimension_warps, value_warps],
        order=[1, 0],
    )
    vector_layout = gl.BlockedLayout(
        size_per_thread=[1],
        threads_per_warp=[32],
        warps_per_cta=[num_warps],
        order=[0],
    )
    return state_layout, vector_layout


@lru_cache(maxsize=1)
def kda_gluon_backward_kernel() -> Any:
    gluon, gl = _gluon()

    @gluon.jit
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
        state_cache_tail,
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
        BLOCK_D: gl.constexpr,
        BLOCK_V: gl.constexpr,
        CHECKPOINT_INTERVAL: gl.constexpr,
        VALUE_INT4: gl.constexpr,
        HAS_GRAD_FINAL_STATE: gl.constexpr,
        STORE_GRAD_INITIAL_STATE: gl.constexpr,
        CACHE_SPLIT_BATCH_HEAD: gl.constexpr,
        USE_SPLIT_CACHE: gl.constexpr,
        USE_FLAT_CACHE: gl.constexpr,
        STATE_LAYOUT: gl.constexpr,
        VECTOR_LAYOUT: gl.constexpr,
    ):
        batch_head = gl.program_id(0)
        value_block = gl.program_id(1)
        batch_index = batch_head // heads
        head_index = batch_head % heads
        state_dimension_layout: gl.constexpr = gl.SliceLayout(1, STATE_LAYOUT)
        state_value_layout: gl.constexpr = gl.SliceLayout(0, STATE_LAYOUT)

        offsets_d = gl.arange(0, BLOCK_D, layout=VECTOR_LAYOUT)
        offsets_v = value_block * BLOCK_V + gl.arange(
            0,
            BLOCK_V,
            layout=VECTOR_LAYOUT,
        )
        mask_d = offsets_d < head_dim
        mask_v = offsets_v < value_dim
        state_offsets_d = gl.arange(0, BLOCK_D, layout=state_dimension_layout)
        state_offsets_v = value_block * BLOCK_V + gl.arange(
            0,
            BLOCK_V,
            layout=state_value_layout,
        )
        state_mask_d = state_offsets_d < head_dim
        state_mask_v = state_offsets_v < value_dim
        state_mask = state_mask_d[:, None] & state_mask_v[None, :]
        state_offsets = (
            ((batch_head * head_dim + state_offsets_d[:, None]) * value_dim)
            + state_offsets_v[None, :]
        )
        state_tile_offsets = (
            state_offsets_d[:, None] * value_dim + state_offsets_v[None, :]
        )
        if USE_SPLIT_CACHE:
            cache_batch_head = gl.where(
                batch_head < CACHE_SPLIT_BATCH_HEAD,
                batch_head,
                batch_head - CACHE_SPLIT_BATCH_HEAD,
            )
        else:
            cache_batch_head = batch_head
        cache_batch_offsets = (
            cache_batch_head * num_checkpoints * head_dim * value_dim
        )
        if HAS_GRAD_FINAL_STATE:
            grad_state = gl.amd.rdna3.buffer_load(
                grad_final_state,
                state_offsets,
                mask=state_mask,
                other=0.0,
            ).to(gl.float32)
        else:
            grad_state = gl.zeros(
                [BLOCK_D, BLOCK_V],
                gl.float32,
                layout=STATE_LAYOUT,
            )

        for reverse_index in range(0, sequence):
            token = sequence - reverse_index - 1
            chunk_index = token // CHECKPOINT_INTERVAL
            cache_offsets = (
                cache_batch_offsets
                + chunk_index * head_dim * value_dim
                + state_tile_offsets
            )
            if USE_FLAT_CACHE:
                state_previous = gl.load(
                    state_cache + cache_offsets,
                    mask=state_mask,
                    other=0.0,
                ).to(gl.float32)
            elif USE_SPLIT_CACHE:
                global_cache_offsets = (
                    batch_head * num_checkpoints * head_dim * value_dim
                    + chunk_index * head_dim * value_dim
                    + state_tile_offsets
                )
                low_state = gl.amd.rdna3.buffer_load(
                    state_cache,
                    global_cache_offsets,
                    mask=state_mask & (batch_head < CACHE_SPLIT_BATCH_HEAD),
                    other=0.0,
                ).to(gl.float32)
                high_state = gl.amd.rdna3.buffer_load(
                    state_cache_tail,
                    cache_offsets,
                    mask=state_mask & (batch_head >= CACHE_SPLIT_BATCH_HEAD),
                    other=0.0,
                ).to(gl.float32)
                state_previous = low_state + high_state
            else:
                state_previous = gl.amd.rdna3.buffer_load(
                    state_cache,
                    cache_offsets,
                    mask=state_mask,
                    other=0.0,
                ).to(gl.float32)
            chunk_start = chunk_index * CHECKPOINT_INTERVAL

            for replay_offset in range(0, CHECKPOINT_INTERVAL):
                replay_token = chunk_start + replay_offset
                replay_active = replay_token < token
                replay_row = (
                    (batch_index * sequence + replay_token) * heads + head_index
                )
                replay_key = gl.amd.rdna3.buffer_load(
                    key_logical_workspace,
                    replay_row * head_dim + offsets_d,
                    mask=mask_d & replay_active,
                    other=0.0,
                ).to(gl.float32)
                if VALUE_INT4:
                    replay_v_packed = (
                        replay_row * packed_value_dim + offsets_v // 2
                    )
                    replay_value_bytes = gl.amd.rdna3.buffer_load(
                        value,
                        replay_v_packed,
                        mask=mask_v & replay_active,
                        other=0,
                    )
                    replay_value_nibbles = gl.where(
                        offsets_v % 2 == 0,
                        replay_value_bytes & 0xF,
                        (replay_value_bytes >> 4) & 0xF,
                    ).to(gl.int32)
                    replay_value_codes = gl.where(
                        replay_value_nibbles >= 8,
                        replay_value_nibbles - 16,
                        replay_value_nibbles,
                    )
                    replay_value = replay_value_codes.to(gl.float32) * gl.load(
                        value_scale + replay_row,
                        mask=replay_active,
                        other=0.0,
                    )
                else:
                    replay_value = gl.amd.rdna3.buffer_load(
                        value,
                        replay_row * value_dim + offsets_v,
                        mask=mask_v & replay_active,
                        other=0.0,
                    ).to(gl.float32)
                replay_decay = gl.exp(
                    gl.amd.rdna3.buffer_load(
                        log_decay,
                        replay_row * head_dim + offsets_d,
                        mask=mask_d & replay_active,
                        other=0.0,
                    ).to(gl.float32)
                )
                replay_beta = gl.load(
                    beta + replay_row,
                    mask=replay_active,
                    other=0.0,
                ).to(gl.float32)
                replay_key_state = gl.convert_layout(
                    replay_key,
                    state_dimension_layout,
                )
                replay_decay_state = gl.convert_layout(
                    replay_decay,
                    state_dimension_layout,
                )
                replay_decayed = state_previous * replay_decay_state[:, None]
                replay_prediction = gl.sum(
                    replay_key_state[:, None] * replay_decayed,
                    axis=0,
                )
                replay_prediction = gl.convert_layout(
                    replay_prediction,
                    VECTOR_LAYOUT,
                )
                replay_residual = replay_value - replay_prediction
                replay_update = gl.convert_layout(
                    replay_beta * replay_residual,
                    state_value_layout,
                )
                replay_state = (
                    replay_decayed
                    + replay_key_state[:, None] * replay_update[None, :]
                )
                state_previous = gl.where(
                    replay_active,
                    replay_state,
                    state_previous,
                )

            row_index = (batch_index * sequence + token) * heads + head_index
            qk_offsets = row_index * head_dim + offsets_d
            query_logical = gl.amd.rdna3.buffer_load(
                query_logical_workspace,
                qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(gl.float32)
            key_logical = gl.amd.rdna3.buffer_load(
                key_logical_workspace,
                qk_offsets,
                mask=mask_d,
                other=0.0,
            ).to(gl.float32)
            if VALUE_INT4:
                packed_v_offsets = row_index * packed_value_dim + offsets_v // 2
                value_bytes = gl.amd.rdna3.buffer_load(
                    value,
                    packed_v_offsets,
                    mask=mask_v,
                    other=0,
                )
                value_nibbles = gl.where(
                    offsets_v % 2 == 0,
                    value_bytes & 0xF,
                    (value_bytes >> 4) & 0xF,
                ).to(gl.int32)
                value_codes = gl.where(
                    value_nibbles >= 8,
                    value_nibbles - 16,
                    value_nibbles,
                )
                value_logical = value_codes.to(gl.float32) * gl.load(
                    value_scale + row_index
                )
            else:
                value_logical = gl.amd.rdna3.buffer_load(
                    value,
                    row_index * value_dim + offsets_v,
                    mask=mask_v,
                    other=0.0,
                ).to(gl.float32)
            decay = gl.exp(
                gl.amd.rdna3.buffer_load(
                    log_decay,
                    row_index * head_dim + offsets_d,
                    mask=mask_d,
                    other=0.0,
                ).to(gl.float32)
            )
            beta_value = gl.load(beta + row_index).to(gl.float32)
            grad_output_value = gl.amd.rdna3.buffer_load(
                grad_output,
                row_index * value_dim + offsets_v,
                mask=mask_v,
                other=0.0,
            ).to(gl.float32)

            query_state = gl.convert_layout(
                query_logical,
                state_dimension_layout,
            )
            key_state = gl.convert_layout(key_logical, state_dimension_layout)
            decay_state = gl.convert_layout(decay, state_dimension_layout)
            value_state = gl.convert_layout(value_logical, state_value_layout)
            grad_output_state = gl.convert_layout(
                grad_output_value,
                state_value_layout,
            )
            decayed_state = state_previous * decay_state[:, None]
            prediction = gl.sum(key_state[:, None] * decayed_state, axis=0)
            residual_state = value_state - prediction
            update_state = beta_value * residual_state
            state = decayed_state + key_state[:, None] * update_state[None, :]

            grad_query_partial = (
                gl.sum(state * grad_output_state[None, :], axis=1)
                * output_scale
            )
            grad_state += (
                query_state[:, None]
                * (grad_output_state * output_scale)[None, :]
            )
            grad_update = gl.sum(key_state[:, None] * grad_state, axis=0)
            grad_residual = beta_value * grad_update
            grad_beta_partial = gl.sum(grad_update * residual_state, axis=0)
            grad_key_partial = gl.sum(
                grad_state * update_state[None, :],
                axis=1,
            ) - gl.sum(
                decayed_state * grad_residual[None, :],
                axis=1,
            )
            grad_decayed = grad_state - key_state[:, None] * grad_residual[None, :]
            grad_decay_partial = gl.sum(
                grad_decayed * decayed_state,
                axis=1,
            )
            grad_state = grad_decayed * decay_state[:, None]

            grad_query_partial = gl.convert_layout(
                grad_query_partial,
                VECTOR_LAYOUT,
            )
            grad_key_partial = gl.convert_layout(
                grad_key_partial,
                VECTOR_LAYOUT,
            )
            grad_decay_partial = gl.convert_layout(
                grad_decay_partial,
                VECTOR_LAYOUT,
            )
            grad_value_value = gl.convert_layout(
                grad_residual,
                VECTOR_LAYOUT,
            )
            gl.atomic_add(
                grad_query_normalized + qk_offsets,
                grad_query_partial,
                mask=mask_d,
                sem="relaxed",
            )
            gl.atomic_add(
                grad_key_normalized + qk_offsets,
                grad_key_partial,
                mask=mask_d,
                sem="relaxed",
            )
            gl.amd.rdna3.buffer_store(
                grad_value_value,
                grad_value,
                row_index * value_dim + offsets_v,
                mask=mask_v,
            )
            gl.atomic_add(
                grad_log_decay + qk_offsets,
                grad_decay_partial,
                mask=mask_d,
                sem="relaxed",
            )
            gl.atomic_add(
                grad_beta + row_index,
                grad_beta_partial,
                sem="relaxed",
            )

        if STORE_GRAD_INITIAL_STATE:
            gl.amd.rdna3.buffer_store(
                grad_state,
                grad_initial_state,
                state_offsets,
                mask=state_mask,
            )

    return kernel


def launch_kda_gluon_backward(
    *,
    grid: tuple[int, int],
    query_logical_workspace: Any,
    key_logical_workspace: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    value_scale: Any,
    grad_output: Any,
    grad_final_state: Any,
    state_cache: Any,
    grad_query_normalized: Any,
    grad_key_normalized: Any,
    grad_value: Any,
    grad_log_decay: Any,
    grad_beta: Any,
    grad_initial_state: Any,
    sequence: int,
    heads: int,
    head_dim: int,
    value_dim: int,
    packed_value_dim: int,
    num_checkpoints: int,
    output_scale: float,
    block_d: int,
    block_v: int,
    checkpoint_interval: int,
    value_int4: bool,
    has_grad_final_state: bool,
    store_grad_initial_state: bool,
) -> Any:
    if block_v >= 32:
        num_warps = 4
        dimension_threads = 4
    else:
        num_warps = 2
        dimension_threads = max(2, 32 // block_v)
    value_warps = 1
    state_layout, vector_layout = make_kda_backward_layouts(
        block_v=block_v,
        num_warps=num_warps,
        dimension_threads=dimension_threads,
        value_warps=value_warps,
    )
    cache_span = num_checkpoints * head_dim * value_dim
    cache_split_batch_head = min(
        grid[0],
        max(1, (BUFFER_DESCRIPTOR_PAGE_ELEMENTS - 1) // cache_span),
    )
    cache_tail_start = cache_split_batch_head * cache_span
    cache_tail_span = grid[0] * cache_span - cache_tail_start
    use_split_cache = cache_tail_span > 0
    use_flat_cache = (
        cache_span >= BUFFER_DESCRIPTOR_PAGE_ELEMENTS
        or cache_tail_span >= BUFFER_DESCRIPTOR_PAGE_ELEMENTS
    )
    cache_tail = (
        state_cache.reshape(-1)[cache_tail_start:]
        if use_split_cache and not use_flat_cache
        else state_cache
    )
    return kda_gluon_backward_kernel()[grid](
        query_logical_workspace,
        key_logical_workspace,
        value,
        log_decay,
        beta,
        value_scale,
        grad_output,
        grad_final_state,
        state_cache,
        cache_tail,
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
        BLOCK_D=block_d,
        BLOCK_V=block_v,
        CHECKPOINT_INTERVAL=checkpoint_interval,
        VALUE_INT4=value_int4,
        HAS_GRAD_FINAL_STATE=has_grad_final_state,
        STORE_GRAD_INITIAL_STATE=store_grad_initial_state,
        CACHE_SPLIT_BATCH_HEAD=cache_split_batch_head,
        USE_SPLIT_CACHE=use_split_cache and not use_flat_cache,
        USE_FLAT_CACHE=use_flat_cache,
        STATE_LAYOUT=state_layout,
        VECTOR_LAYOUT=vector_layout,
        num_warps=num_warps,
    )

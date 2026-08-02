from __future__ import annotations

from functools import lru_cache
from typing import Any


# RDNA buffer instructions address bytes through a 32-bit descriptor offset.
# FP32 cache pages must therefore stay below 2**30 elements (4 GiB).
BUFFER_DESCRIPTOR_PAGE_ELEMENTS = 1 << 30


def _gluon() -> tuple[Any, Any]:
    try:
        from triton.experimental import gluon
        from triton.experimental.gluon import language as gl
    except ImportError as exc:
        raise RuntimeError(
            "the custom Strix Halo Triton fork with Gluon support is required "
            "for the Gluon KDA backend"
        ) from exc
    if not all(
        hasattr(gl.amd.rdna3, operation)
        for operation in ("buffer_load", "buffer_store")
    ):
        raise RuntimeError(
            "the installed Triton does not expose Gluon RDNA3 buffer operations"
        )
    return gluon, gl


@lru_cache(maxsize=None)
def make_kda_layouts(
    *,
    block_v: int,
    num_warps: int,
    dimension_threads: int,
    value_warps: int,
) -> tuple[Any, Any]:
    """Build explicit vector and recurrent-state wave32 distributions.

    ``dimension_threads`` controls the lane split and ``value_warps`` controls
    the warp split. Their complements partition V. This makes operand reloads
    versus reduction locality an explicit, measurable tradeoff.
    """

    _, gl = _gluon()
    if num_warps <= 0 or num_warps & (num_warps - 1):
        raise ValueError("num_warps must be a positive power of two")
    if dimension_threads <= 0 or 32 % dimension_threads:
        raise ValueError("dimension_threads must be a positive divisor of 32")
    if value_warps <= 0 or num_warps % value_warps:
        raise ValueError("value_warps must be a positive divisor of num_warps")
    dimension_warps = num_warps // value_warps
    value_threads = 32 // dimension_threads
    if value_threads * value_warps > block_v:
        raise ValueError("the Gluon layout partitions V beyond BLOCK_V")
    state_layout = gl.BlockedLayout(
        size_per_thread=[1, 2],
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
def kda_gluon_forward_kernel() -> Any:
    gluon, gl = _gluon()

    @gluon.jit
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
        state_cache_tail,
        sequence,
        heads,
        head_dim,
        packed_head_dim,
        value_dim,
        packed_value_dim,
        num_checkpoints,
        output_scale,
        BLOCK_D: gl.constexpr,
        BLOCK_V: gl.constexpr,
        CHECKPOINT_INTERVAL: gl.constexpr,
        QK_INT4: gl.constexpr,
        VALUE_INT4: gl.constexpr,
        HAS_INITIAL_STATE: gl.constexpr,
        STORE_FINAL_STATE: gl.constexpr,
        STORE_STATE_CACHE: gl.constexpr,
        NORMALIZE_QK: gl.constexpr,
        OUTPUT_BF16: gl.constexpr,
        STORE_OUTPUT: gl.constexpr,
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
        state_offsets = (
            ((batch_head * head_dim + state_offsets_d[:, None]) * value_dim)
            + state_offsets_v[None, :]
        )
        state_tile_offsets = (
            state_offsets_d[:, None] * value_dim + state_offsets_v[None, :]
        )
        if USE_SPLIT_CACHE:
            cache_base = gl.where(
                batch_head < CACHE_SPLIT_BATCH_HEAD,
                state_cache,
                state_cache_tail,
            )
            cache_batch_head = gl.where(
                batch_head < CACHE_SPLIT_BATCH_HEAD,
                batch_head,
                batch_head - CACHE_SPLIT_BATCH_HEAD,
            )
        else:
            cache_base = state_cache
            cache_batch_head = batch_head
        cache_batch_offsets = (
            cache_batch_head * num_checkpoints * head_dim * value_dim
        )
        state_mask = state_mask_d[:, None] & state_mask_v[None, :]
        if HAS_INITIAL_STATE:
            state = gl.amd.rdna3.buffer_load(
                initial_state,
                state_offsets,
                mask=state_mask,
                other=0.0,
            ).to(gl.float32)
        else:
            state = gl.zeros([BLOCK_D, BLOCK_V], gl.float32, layout=STATE_LAYOUT)
        if STORE_STATE_CACHE:
            cache_offsets = cache_batch_offsets + state_tile_offsets
            if USE_FLAT_CACHE:
                gl.store(
                    state_cache
                    + cache_offsets,
                    state,
                    mask=state_mask,
                )
            else:
                gl.amd.rdna3.buffer_store(
                    state,
                    cache_base,
                    cache_offsets,
                    mask=state_mask,
                )

        row_index = batch_index * sequence * heads + head_index
        for token in range(0, sequence):
            if QK_INT4:
                packed_offsets = row_index * packed_head_dim + offsets_d // 2
                query_bytes = gl.amd.rdna3.buffer_load(
                    query,
                    packed_offsets,
                    mask=mask_d,
                    other=0,
                )
                key_bytes = gl.amd.rdna3.buffer_load(
                    key,
                    packed_offsets,
                    mask=mask_d,
                    other=0,
                )
                query_nibbles = gl.where(
                    offsets_d % 2 == 0,
                    query_bytes & 0xF,
                    (query_bytes >> 4) & 0xF,
                ).to(gl.int32)
                key_nibbles = gl.where(
                    offsets_d % 2 == 0,
                    key_bytes & 0xF,
                    (key_bytes >> 4) & 0xF,
                ).to(gl.int32)
                query_codes = gl.where(
                    query_nibbles >= 8,
                    query_nibbles - 16,
                    query_nibbles,
                )
                key_codes = gl.where(
                    key_nibbles >= 8,
                    key_nibbles - 16,
                    key_nibbles,
                )
                q = query_codes.to(gl.float32) * gl.load(query_scale + row_index)
                k = key_codes.to(gl.float32) * gl.load(key_scale + row_index)
            else:
                qk_offsets = row_index * head_dim + offsets_d
                q = gl.amd.rdna3.buffer_load(
                    query,
                    qk_offsets,
                    mask=mask_d,
                    other=0.0,
                ).to(gl.float32)
                k = gl.amd.rdna3.buffer_load(
                    key,
                    qk_offsets,
                    mask=mask_d,
                    other=0.0,
                ).to(gl.float32)
            if NORMALIZE_QK:
                q_norm = gl.sqrt(gl.sum(q * q, axis=0))
                k_norm = gl.sqrt(gl.sum(k * k, axis=0))
                q = q / gl.maximum(q_norm, 1.0e-12)
                k = k / gl.maximum(k_norm, 1.0e-12)
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
                v = value_codes.to(gl.float32) * gl.load(value_scale + row_index)
            else:
                v_offsets = row_index * value_dim + offsets_v
                v = gl.amd.rdna3.buffer_load(
                    value,
                    v_offsets,
                    mask=mask_v,
                    other=0.0,
                ).to(gl.float32)
            decay_offsets = row_index * head_dim + offsets_d
            decay_values = gl.amd.rdna3.buffer_load(
                log_decay,
                decay_offsets,
                mask=mask_d,
                other=0.0,
            ).to(gl.float32)
            decay = gl.exp(decay_values)
            beta_value = gl.load(beta + row_index).to(gl.float32)
            state_decay = gl.convert_layout(decay, state_dimension_layout)
            state_k = gl.convert_layout(k, state_dimension_layout)
            state = state * state_decay[:, None]
            prediction = gl.sum(state_k[:, None] * state, axis=0)
            prediction = gl.convert_layout(prediction, VECTOR_LAYOUT)
            residual = v - prediction
            state_residual = gl.convert_layout(
                beta_value * residual,
                state_value_layout,
            )
            state += state_k[:, None] * state_residual[None, :]
            if STORE_OUTPUT:
                state_q = gl.convert_layout(
                    q * output_scale,
                    state_dimension_layout,
                )
                result = gl.sum(state_q[:, None] * state, axis=0)
                result = gl.convert_layout(result, VECTOR_LAYOUT)
                output_offsets = row_index * value_dim + offsets_v
                if OUTPUT_BF16:
                    result = result.to(gl.bfloat16)
                gl.amd.rdna3.buffer_store(
                    result,
                    output,
                    output_offsets,
                    mask=mask_v,
                )
            if STORE_STATE_CACHE:
                at_boundary = ((token + 1) % CHECKPOINT_INTERVAL == 0) | (
                    token + 1 == sequence
                )
                checkpoint = (token + CHECKPOINT_INTERVAL) // CHECKPOINT_INTERVAL
                cache_offsets = (
                    cache_batch_offsets
                    + checkpoint * head_dim * value_dim
                    + state_tile_offsets
                )
                if USE_FLAT_CACHE:
                    gl.store(
                        state_cache
                        + cache_offsets,
                        state,
                        mask=state_mask & at_boundary,
                    )
                else:
                    gl.amd.rdna3.buffer_store(
                        state,
                        cache_base,
                        cache_offsets,
                        mask=state_mask & at_boundary,
                    )
            row_index += heads
        if STORE_FINAL_STATE:
            gl.amd.rdna3.buffer_store(
                state,
                final_state,
                state_offsets,
                mask=state_mask,
            )

    return kernel


def launch_kda_gluon_forward(
    *,
    grid: tuple[int, int],
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    query_scale: Any,
    key_scale: Any,
    value_scale: Any,
    initial_state: Any,
    output: Any,
    final_state: Any,
    state_cache: Any,
    sequence: int,
    heads: int,
    head_dim: int,
    packed_head_dim: int,
    value_dim: int,
    packed_value_dim: int,
    num_checkpoints: int,
    output_scale: float,
    block_d: int,
    block_v: int,
    checkpoint_interval: int,
    qk_int4: bool,
    value_int4: bool,
    has_initial_state: bool,
    store_final_state: bool,
    store_state_cache: bool,
    normalize_qk: bool,
    output_bf16: bool,
    store_output: bool,
) -> Any:
    num_warps = 2
    dimension_threads = max(2, 32 // min(block_v, 16))
    value_warps = 1
    state_layout, vector_layout = make_kda_layouts(
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
    use_split_cache = store_state_cache and cache_tail_span > 0
    use_flat_cache = (
        store_state_cache
        and (
            cache_span >= BUFFER_DESCRIPTOR_PAGE_ELEMENTS
            or cache_tail_span >= BUFFER_DESCRIPTOR_PAGE_ELEMENTS
        )
    )
    cache_tail = (
        state_cache.reshape(-1)[cache_tail_start:]
        if use_split_cache and not use_flat_cache
        else state_cache
    )
    return kda_gluon_forward_kernel()[grid](
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
        cache_tail,
        sequence,
        heads,
        head_dim,
        packed_head_dim,
        value_dim,
        packed_value_dim,
        num_checkpoints,
        output_scale,
        BLOCK_D=block_d,
        BLOCK_V=block_v,
        CHECKPOINT_INTERVAL=checkpoint_interval,
        QK_INT4=qk_int4,
        VALUE_INT4=value_int4,
        HAS_INITIAL_STATE=has_initial_state,
        STORE_FINAL_STATE=store_final_state,
        STORE_STATE_CACHE=store_state_cache,
        NORMALIZE_QK=normalize_qk,
        OUTPUT_BF16=output_bf16,
        STORE_OUTPUT=store_output,
        CACHE_SPLIT_BATCH_HEAD=cache_split_batch_head,
        USE_SPLIT_CACHE=use_split_cache and not use_flat_cache,
        USE_FLAT_CACHE=use_flat_cache,
        STATE_LAYOUT=state_layout,
        VECTOR_LAYOUT=vector_layout,
        num_warps=num_warps,
    )

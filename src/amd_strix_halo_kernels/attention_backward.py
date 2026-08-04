from __future__ import annotations

from functools import lru_cache
from typing import Any

from .attention import (
    Int4AttentionBackwardConfig,
    _cdiv,
    _default_attention_backward_config,
    _mask_shape_and_strides,
    _next_power_of_two,
    _normalize_window,
    _require_tensor,
    _shares_storage,
    _softmax_scale,
    _torch,
    _triton,
    _validate_inputs,
    reference_scaled_dot_product_attention_backward,
)


@lru_cache(maxsize=2)
def _attention_backward_kernel(*, specialize_runtime_args: bool = True) -> Any:
    """Build the query-owned dQ kernel and save row normalization state."""

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
        output,
        grad_output,
        lse,
        delta_out,
        grad_query,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        head_dim,
        packed_head_dim,
        value_dim,
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
        GRAD_QUERY_BF16: tl.constexpr,
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
        if SPECIALIZE_SEMANTICS:
            is_causal = IS_CAUSAL_STATIC
            has_window = HAS_WINDOW_STATIC
        if SPECIALIZE_SEQUENCE:
            query_length = QUERY_LENGTH_STATIC
            key_length = KEY_LENGTH_STATIC
        if SPECIALIZE_HEADS:
            query_heads = QUERY_HEADS_STATIC
            kv_heads = KV_HEADS_STATIC
        start_m = tl.program_id(0) * BLOCK_M
        batch_head = tl.program_id(1)
        batch_index = batch_head // query_heads
        query_head = batch_head % query_heads
        kv_head = query_head // (query_heads // kv_heads)
        offsets_m = start_m + tl.arange(0, BLOCK_M)
        offsets_n = tl.arange(0, BLOCK_N)
        offsets_d = tl.arange(0, BLOCK_D)
        offsets_dv = tl.arange(0, BLOCK_DV)
        row_valid = offsets_m < query_length
        query_positions = offsets_m + query_position_offset

        if QK_INT4:
            offsets_dp = tl.arange(0, BLOCK_D_PACKED)
            query_base = (batch_index * query_heads + query_head) * query_length * packed_head_dim
            query_packed = tl.load(
                query
                + query_base
                + offsets_m[:, None] * packed_head_dim
                + offsets_dp[None, :],
                mask=row_valid[:, None] & (offsets_dp[None, :] < packed_head_dim),
                other=0,
            )
            query_row_scale = tl.load(
                query_scale + (batch_index * query_heads + query_head) * query_length + offsets_m,
                mask=row_valid,
                other=0.0,
            ).to(tl.float32)
            query_low = (query_packed & 0xF).to(tl.int32)
            query_high = ((query_packed >> 4) & 0xF).to(tl.int32)
            query_low = tl.where(query_low >= 8, query_low - 16, query_low)
            query_high = tl.where(query_high >= 8, query_high - 16, query_high)
            query_logical = tl.reshape(tl.join(query_low, query_high), (BLOCK_M, BLOCK_D))
            query_logical = tl.where(
                offsets_d[None, :] < head_dim,
                query_logical.to(tl.float32) * query_row_scale[:, None],
                0.0,
            ).to(tl.bfloat16)
        else:
            query_base = (batch_index * query_heads + query_head) * query_length * head_dim
            query_logical = tl.load(
                query + query_base + offsets_m[:, None] * head_dim + offsets_d[None, :],
                mask=row_valid[:, None] & (offsets_d[None, :] < head_dim),
                other=0.0,
            )

        output_base = (batch_index * query_heads + query_head) * query_length * value_dim
        output_tile = tl.load(
            output + output_base + offsets_m[:, None] * value_dim + offsets_dv[None, :],
            mask=row_valid[:, None] & (offsets_dv[None, :] < value_dim),
            other=0.0,
        ).to(tl.float32)
        grad_output_tile = tl.load(
            grad_output + output_base + offsets_m[:, None] * value_dim + offsets_dv[None, :],
            mask=row_valid[:, None] & (offsets_dv[None, :] < value_dim),
            other=0.0,
        ).to(tl.float32)
        delta = tl.sum(output_tile * grad_output_tile, axis=1)

        lo = 0
        hi = ((key_length + BLOCK_N - 1) // BLOCK_N) * BLOCK_N
        if has_window:
            window_lo = tl.maximum(0, start_m + query_position_offset - window_left)
            window_hi = tl.minimum(
                key_length,
                start_m + BLOCK_M - 1 + query_position_offset + window_right + 1,
            )
            lo = tl.maximum(lo, (window_lo // BLOCK_N) * BLOCK_N)
            hi = tl.minimum(hi, ((window_hi + BLOCK_N - 1) // BLOCK_N) * BLOCK_N)
        if is_causal:
            causal_hi = tl.minimum(key_length, start_m + BLOCK_M - 1 + query_position_offset + 1)
            hi = tl.minimum(hi, ((causal_hi + BLOCK_N - 1) // BLOCK_N) * BLOCK_N)

        m_i = tl.full([BLOCK_M], -float("inf"), tl.float32)
        l_i = tl.zeros([BLOCK_M], tl.float32)
        for start_n in tl.range(lo, hi, BLOCK_N):
            key_offsets = start_n + offsets_n
            if QK_INT4:
                key_base = (batch_index * kv_heads + kv_head) * key_length * packed_head_dim
                key_tile = tl.load(
                    key + key_base + offsets_dp[:, None] + key_offsets[None, :] * packed_head_dim,
                    mask=(offsets_dp[:, None] < packed_head_dim)
                    & (key_offsets[None, :] < key_length),
                    other=0,
                )
                score_i32 = tl.dot_scaled(
                    query_packed,
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
                key_tile = tl.load(
                    key + key_base + offsets_d[:, None] + key_offsets[None, :] * head_dim,
                    mask=(offsets_d[:, None] < head_dim) & (key_offsets[None, :] < key_length),
                    other=0.0,
                )
                scores = tl.dot(query_logical, key_tile, out_dtype=tl.float32)
                scores *= softmax_scale * 1.4426950408889634
            valid = row_valid[:, None] & (key_offsets[None, :] < key_length)
            key_positions = key_offsets[None, :]
            if is_causal:
                valid &= key_positions <= query_positions[:, None]
            if has_window:
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
            l_i = l_i * alpha + tl.sum(probabilities, axis=1)
            m_i = m_ij
        lse_i = tl.where(l_i > 0.0, m_i + tl.math.log2(l_i), 0.0)
        state_base = (batch_index * query_heads + query_head) * query_length
        tl.store(lse + state_base + offsets_m, lse_i, mask=row_valid)
        tl.store(delta_out + state_base + offsets_m, delta, mask=row_valid)

        grad_query_acc = tl.zeros([BLOCK_M, BLOCK_D], tl.float32)
        for start_n in tl.range(lo, hi, BLOCK_N):
            key_offsets = start_n + offsets_n
            if QK_INT4:
                key_base = (batch_index * kv_heads + kv_head) * key_length * packed_head_dim
                key_tile = tl.load(
                    key + key_base + offsets_dp[:, None] + key_offsets[None, :] * packed_head_dim,
                    mask=(offsets_dp[:, None] < packed_head_dim)
                    & (key_offsets[None, :] < key_length),
                    other=0,
                )
                score_i32 = tl.dot_scaled(
                    query_packed,
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
                key_packed_t = tl.trans(key_tile)
                key_low = (key_packed_t & 0xF).to(tl.int32)
                key_high = ((key_packed_t >> 4) & 0xF).to(tl.int32)
                key_low = tl.where(key_low >= 8, key_low - 16, key_low)
                key_high = tl.where(key_high >= 8, key_high - 16, key_high)
                key_logical = tl.reshape(tl.join(key_low, key_high), (BLOCK_N, BLOCK_D))
                key_logical = tl.where(
                    offsets_d[None, :] < head_dim,
                    key_logical.to(tl.float32) * key_row_scale[:, None],
                    0.0,
                ).to(tl.bfloat16)
            else:
                key_base = (batch_index * kv_heads + kv_head) * key_length * head_dim
                key_tile = tl.load(
                    key + key_base + offsets_d[:, None] + key_offsets[None, :] * head_dim,
                    mask=(offsets_d[:, None] < head_dim) & (key_offsets[None, :] < key_length),
                    other=0.0,
                )
                scores = tl.dot(query_logical, key_tile, out_dtype=tl.float32)
                scores *= softmax_scale * 1.4426950408889634
                key_logical = tl.trans(key_tile)
            valid = row_valid[:, None] & (key_offsets[None, :] < key_length)
            key_positions = key_offsets[None, :]
            if is_causal:
                valid &= key_positions <= query_positions[:, None]
            if has_window:
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
            probabilities = tl.where(valid, tl.math.exp2(scores - lse_i[:, None]), 0.0)
            if PV_INT4:
                packed_offsets_n = start_n // 2 + tl.arange(0, BLOCK_N // 2)
                packed_key_capacity = ((key_length + 15) // 16) * 8
                value_base = (batch_index * kv_heads + kv_head) * packed_key_capacity * value_dim
                packed_value = tl.load(
                    value
                    + value_base
                    + packed_offsets_n[:, None] * value_dim
                    + offsets_dv[None, :],
                    mask=(packed_offsets_n[:, None] < packed_key_capacity)
                    & (offsets_dv[None, :] < value_dim),
                    other=0,
                )
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
                value_scale_base = (
                    (batch_index * kv_heads + kv_head) * ((key_length + 15) // 16) * value_dim
                )
                value_scale_tile = tl.load(
                    value_scale
                    + value_scale_base
                    + (key_offsets // 16)[:, None] * value_dim
                    + offsets_dv[None, :],
                    mask=(key_offsets[:, None] < key_length)
                    & (offsets_dv[None, :] < value_dim),
                    other=0.0,
                ).to(tl.float32)
                value_tile = (value_codes.to(tl.float32) * value_scale_tile).to(tl.bfloat16)
            else:
                value_base = (batch_index * kv_heads + kv_head) * key_length * value_dim
                value_tile = tl.load(
                    value + value_base + key_offsets[:, None] * value_dim + offsets_dv[None, :],
                    mask=(key_offsets[:, None] < key_length)
                    & (offsets_dv[None, :] < value_dim),
                    other=0.0,
                )
            grad_probability = tl.dot(
                grad_output_tile.to(tl.bfloat16),
                tl.trans(value_tile),
                out_dtype=tl.float32,
            )
            grad_score = probabilities * (grad_probability - delta[:, None])
            grad_score_scaled = (grad_score * softmax_scale).to(tl.bfloat16)
            grad_query_acc += tl.dot(grad_score_scaled, key_logical, out_dtype=tl.float32)
        grad_query_base = (batch_index * query_heads + query_head) * query_length * head_dim
        grad_query_ptrs = (
            grad_query + grad_query_base + offsets_m[:, None] * head_dim + offsets_d[None, :]
        )
        if GRAD_QUERY_BF16:
            grad_query_acc = grad_query_acc.to(tl.bfloat16)
        tl.store(
            grad_query_ptrs,
            grad_query_acc,
            mask=row_valid[:, None] & (offsets_d[None, :] < head_dim),
        )

    return kernel


@lru_cache(maxsize=2)
def _attention_backward_dkv_kernel(*, specialize_runtime_args: bool = True) -> Any:
    """Build the key-owned dK/dV kernel with in-CTA GQA reduction."""

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
        grad_output,
        lse,
        delta,
        grad_key,
        grad_value,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        head_dim,
        packed_head_dim,
        value_dim,
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
        if SPECIALIZE_SEMANTICS:
            is_causal = IS_CAUSAL_STATIC
            has_window = HAS_WINDOW_STATIC
        if SPECIALIZE_SEQUENCE:
            query_length = QUERY_LENGTH_STATIC
            key_length = KEY_LENGTH_STATIC
        if SPECIALIZE_HEADS:
            query_heads = QUERY_HEADS_STATIC
            kv_heads = KV_HEADS_STATIC
        start_n = tl.program_id(0) * BLOCK_N
        batch_kv_head = tl.program_id(1)
        batch_index = batch_kv_head // kv_heads
        kv_head = batch_kv_head % kv_heads
        head_ratio = query_heads // kv_heads
        key_offsets = start_n + tl.arange(0, BLOCK_N)
        offsets_d = tl.arange(0, BLOCK_D)
        offsets_dv = tl.arange(0, BLOCK_DV)
        key_valid = key_offsets < key_length

        if QK_INT4:
            offsets_dp = tl.arange(0, BLOCK_D_PACKED)
            key_base = (batch_index * kv_heads + kv_head) * key_length * packed_head_dim
            key_tile = tl.load(
                key + key_base + offsets_dp[:, None] + key_offsets[None, :] * packed_head_dim,
                mask=(offsets_dp[:, None] < packed_head_dim) & key_valid[None, :],
                other=0,
            )
            key_row_scale = tl.load(
                key_scale + (batch_index * kv_heads + kv_head) * key_length + key_offsets,
                mask=key_valid,
                other=0.0,
            ).to(tl.float32)
        else:
            key_base = (batch_index * kv_heads + kv_head) * key_length * head_dim
            key_tile = tl.load(
                key + key_base + offsets_d[:, None] + key_offsets[None, :] * head_dim,
                mask=(offsets_d[:, None] < head_dim) & key_valid[None, :],
                other=0.0,
            )

        if PV_INT4:
            packed_offsets_n = start_n // 2 + tl.arange(0, BLOCK_N // 2)
            packed_key_capacity = ((key_length + 15) // 16) * 8
            value_base = (batch_index * kv_heads + kv_head) * packed_key_capacity * value_dim
            packed_value = tl.load(
                value
                + value_base
                + packed_offsets_n[:, None] * value_dim
                + offsets_dv[None, :],
                mask=(packed_offsets_n[:, None] < packed_key_capacity)
                & (offsets_dv[None, :] < value_dim),
                other=0,
            )
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
            value_scale_base = (
                (batch_index * kv_heads + kv_head) * ((key_length + 15) // 16) * value_dim
            )
            value_scale_tile = tl.load(
                value_scale
                + value_scale_base
                + (key_offsets // 16)[:, None] * value_dim
                + offsets_dv[None, :],
                mask=key_valid[:, None] & (offsets_dv[None, :] < value_dim),
                other=0.0,
            ).to(tl.float32)
            value_tile = (value_codes.to(tl.float32) * value_scale_tile).to(tl.bfloat16)
        else:
            value_base = (batch_index * kv_heads + kv_head) * key_length * value_dim
            value_tile = tl.load(
                value + value_base + key_offsets[:, None] * value_dim + offsets_dv[None, :],
                mask=key_valid[:, None] & (offsets_dv[None, :] < value_dim),
                other=0.0,
            )

        grad_key_acc = tl.zeros([BLOCK_N, BLOCK_D], tl.float32)
        grad_value_acc = tl.zeros([BLOCK_N, BLOCK_DV], tl.float32)
        query_lo = 0
        query_hi = ((query_length + BLOCK_M - 1) // BLOCK_M) * BLOCK_M
        if has_window:
            local_lo = tl.maximum(0, start_n - window_right - query_position_offset)
            local_hi = tl.maximum(
                0,
                tl.minimum(
                    query_length,
                    start_n + BLOCK_N + window_left - query_position_offset,
                ),
            )
            query_lo = tl.maximum(query_lo, (local_lo // BLOCK_M) * BLOCK_M)
            query_hi = tl.minimum(
                query_hi,
                ((local_hi + BLOCK_M - 1) // BLOCK_M) * BLOCK_M,
            )
        if is_causal:
            causal_lo = tl.maximum(0, start_n - query_position_offset)
            query_lo = tl.maximum(query_lo, (causal_lo // BLOCK_M) * BLOCK_M)
        for head_offset in tl.range(0, head_ratio):
            query_head = kv_head * head_ratio + head_offset
            for start_m in tl.range(query_lo, query_hi, BLOCK_M):
                offsets_m = start_m + tl.arange(0, BLOCK_M)
                row_valid = offsets_m < query_length
                query_positions = offsets_m + query_position_offset
                if QK_INT4:
                    query_base = (
                        (batch_index * query_heads + query_head) * query_length * packed_head_dim
                    )
                    query_packed = tl.load(
                        query
                        + query_base
                        + offsets_m[:, None] * packed_head_dim
                        + offsets_dp[None, :],
                        mask=row_valid[:, None] & (offsets_dp[None, :] < packed_head_dim),
                        other=0,
                    )
                    query_row_scale = tl.load(
                        query_scale
                        + (batch_index * query_heads + query_head) * query_length
                        + offsets_m,
                        mask=row_valid,
                        other=0.0,
                    ).to(tl.float32)
                    score_i32 = tl.dot_scaled(
                        query_packed,
                        None,
                        "int4",
                        key_tile,
                        None,
                        "int4",
                        tl.zeros([BLOCK_M, BLOCK_N], tl.int32),
                        out_dtype=tl.int32,
                    )
                    query_score_scale = query_row_scale * (
                        softmax_scale * 1.4426950408889634
                    )
                    scores = (
                        score_i32.to(tl.float32)
                        * query_score_scale[:, None]
                        * key_row_scale[None, :]
                    )
                    query_low = (query_packed & 0xF).to(tl.int32)
                    query_high = ((query_packed >> 4) & 0xF).to(tl.int32)
                    query_low = tl.where(query_low >= 8, query_low - 16, query_low)
                    query_high = tl.where(query_high >= 8, query_high - 16, query_high)
                    query_logical = tl.reshape(
                        tl.join(query_low, query_high),
                        (BLOCK_M, BLOCK_D),
                    )
                    query_logical = tl.where(
                        offsets_d[None, :] < head_dim,
                        query_logical.to(tl.float32) * query_row_scale[:, None],
                        0.0,
                    ).to(tl.bfloat16)
                else:
                    query_base = (batch_index * query_heads + query_head) * query_length * head_dim
                    query_logical = tl.load(
                        query
                        + query_base
                        + offsets_m[:, None] * head_dim
                        + offsets_d[None, :],
                        mask=row_valid[:, None] & (offsets_d[None, :] < head_dim),
                        other=0.0,
                    )
                    scores = tl.dot(query_logical, key_tile, out_dtype=tl.float32)
                    scores *= softmax_scale * 1.4426950408889634
                valid = row_valid[:, None] & key_valid[None, :]
                key_positions = key_offsets[None, :]
                if is_causal:
                    valid &= key_positions <= query_positions[:, None]
                if has_window:
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
                        additive = tl.load(
                            mask_ptrs,
                            mask=valid,
                            other=-float("inf"),
                        ).to(tl.float32)
                        scores += additive * 1.4426950408889634
                        valid &= additive != -float("inf")
                state_base = (batch_index * query_heads + query_head) * query_length
                lse_i = tl.load(lse + state_base + offsets_m, mask=row_valid, other=0.0)
                delta_i = tl.load(delta + state_base + offsets_m, mask=row_valid, other=0.0)
                probabilities = tl.where(
                    valid,
                    tl.math.exp2(scores - lse_i[:, None]),
                    0.0,
                )
                output_base = (batch_index * query_heads + query_head) * query_length * value_dim
                grad_output_tile = tl.load(
                    grad_output
                    + output_base
                    + offsets_m[:, None] * value_dim
                    + offsets_dv[None, :],
                    mask=row_valid[:, None] & (offsets_dv[None, :] < value_dim),
                    other=0.0,
                ).to(tl.float32)
                grad_probability = tl.dot(
                    grad_output_tile.to(tl.bfloat16),
                    tl.trans(value_tile),
                    out_dtype=tl.float32,
                )
                grad_score = probabilities * (grad_probability - delta_i[:, None])
                grad_score_scaled = (grad_score * softmax_scale).to(tl.bfloat16)
                grad_key_acc += tl.dot(
                    tl.trans(grad_score_scaled),
                    query_logical,
                    out_dtype=tl.float32,
                )
                probability_hi = probabilities.to(tl.bfloat16)
                probability_lo = (probabilities - probability_hi.to(tl.float32)).to(
                    tl.bfloat16
                )
                grad_output_hi = grad_output_tile.to(tl.bfloat16)
                grad_output_lo = (grad_output_tile - grad_output_hi.to(tl.float32)).to(
                    tl.bfloat16
                )
                grad_value_acc += tl.dot(
                    tl.trans(probability_hi),
                    grad_output_hi,
                    out_dtype=tl.float32,
                )
                grad_value_acc += tl.dot(
                    tl.trans(probability_lo),
                    grad_output_hi,
                    out_dtype=tl.float32,
                )
                grad_value_acc += tl.dot(
                    tl.trans(probability_hi),
                    grad_output_lo,
                    out_dtype=tl.float32,
                )

        grad_key_base = (batch_index * kv_heads + kv_head) * key_length * head_dim
        tl.store(
            grad_key + grad_key_base + key_offsets[:, None] * head_dim + offsets_d[None, :],
            grad_key_acc,
            mask=key_valid[:, None] & (offsets_d[None, :] < head_dim),
        )
        grad_value_base = (batch_index * kv_heads + kv_head) * key_length * value_dim
        tl.store(
            grad_value
            + grad_value_base
            + key_offsets[:, None] * value_dim
            + offsets_dv[None, :],
            grad_value_acc,
            mask=key_valid[:, None] & (offsets_dv[None, :] < value_dim),
        )

    return kernel


def int4_scaled_dot_product_attention_backward(
    query: Any,
    key: Any,
    value: Any,
    output: Any,
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
    grad_query: Any | None = None,
    grad_key: Any | None = None,
    grad_value: Any | None = None,
    lse: Any | None = None,
    delta: Any | None = None,
    config: Int4AttentionBackwardConfig | None = None,
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> tuple[Any, Any, Any]:
    """Return logical Q/K/V gradients for BF16 or packed-INT4 attention.

    Packed operands are accepted with their forward scales, and gradients are
    returned for the logical dequantized tensors. Pass preallocated FP32
    ``lse`` and ``delta`` buffers shaped ``(B, Hq, Lq)`` for CUDA graph capture.
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
    dtype = torch.float32 if gradient_dtype is None else gradient_dtype
    if dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("gradient_dtype must be torch.bfloat16 or torch.float32")
    if not use_reference and dtype != torch.float32:
        raise ValueError("optimized attention backward currently requires gradient_dtype=torch.float32")
    expected_output_shape = (batch, query_heads, query_length, value_dim)
    for name, tensor in (("output", output), ("grad_output", grad_output)):
        _require_tensor(torch, name, tensor)
        if (
            tensor.device != query.device
            or tensor.dtype not in {torch.bfloat16, torch.float32}
            or tuple(tensor.shape) != expected_output_shape
            or not tensor.is_contiguous()
        ):
            raise ValueError(
                f"{name} must be contiguous BF16/FP32 with shape {expected_output_shape} "
                f"on device {query.device}"
            )
    if use_reference:
        return reference_scaled_dot_product_attention_backward(
            query,
            key,
            value,
            grad_output,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            attn_mask=attn_mask,
            is_causal=is_causal,
            scale=scale,
            enable_gqa=enable_gqa,
            window_size=window,
            query_position_offset=query_position_offset,
            head_dim=logical_head_dim,
            gradient_dtype=dtype,
        )
    if config is None:
        config = _default_attention_backward_config(window=window)
    elif not isinstance(config, Int4AttentionBackwardConfig):
        raise TypeError("config must be an Int4AttentionBackwardConfig or None")
    mask_arg, mask_kind, mask_strides = _mask_shape_and_strides(
        torch,
        attn_mask,
        device=query.device,
        target_shape=(batch, query_heads, query_length, key_length),
    )
    grad_shapes = (
        (batch, query_heads, query_length, logical_head_dim),
        (batch, kv_heads, key_length, logical_head_dim),
        (batch, kv_heads, key_length, value_dim),
    )
    provided = (grad_query, grad_key, grad_value)
    resolved = []
    for name, tensor, shape in zip(("grad_query", "grad_key", "grad_value"), provided, grad_shapes, strict=True):
        if tensor is None:
            tensor = torch.empty(shape, device=query.device, dtype=dtype)
        else:
            _require_tensor(torch, name, tensor)
            if tensor.device != query.device or tensor.dtype != dtype or tuple(tensor.shape) != shape:
                raise ValueError(f"{name} must have shape {shape}, dtype {dtype}, and device {query.device}")
            if not tensor.is_contiguous():
                raise ValueError(f"{name} must be contiguous")
            for input_name, source in (
                ("query", query),
                ("key", key),
                ("value", value),
                ("output", output),
                ("grad_output", grad_output),
            ):
                if _shares_storage(tensor, source):
                    raise ValueError(f"{name} must not share storage with {input_name}")
        resolved.append(tensor)
    grad_query, grad_key, grad_value = resolved
    for index, (name, tensor) in enumerate(
        zip(("grad_query", "grad_key", "grad_value"), resolved, strict=True)
    ):
        for other_name, other in zip(
            ("grad_query", "grad_key", "grad_value")[index + 1 :],
            resolved[index + 1 :],
            strict=True,
        ):
            if _shares_storage(tensor, other):
                raise ValueError(f"{name} must not share storage with {other_name}")
    state_shape = (batch, query_heads, query_length)
    state_buffers = []
    for name, tensor in (("lse", lse), ("delta", delta)):
        if tensor is None:
            if torch.cuda.is_current_stream_capturing():
                raise ValueError(
                    "attention backward during CUDAGraph capture requires preallocated "
                    "FP32 lse and delta buffers"
                )
            tensor = torch.empty(state_shape, device=query.device, dtype=torch.float32)
        else:
            _require_tensor(torch, name, tensor)
            if (
                tensor.device != query.device
                or tensor.dtype != torch.float32
                or tuple(tensor.shape) != state_shape
                or not tensor.is_contiguous()
            ):
                raise ValueError(
                    f"{name} must have shape {state_shape}, dtype torch.float32, "
                    f"and device {query.device}"
                )
        for source_name, source in (
            ("query", query),
            ("key", key),
            ("value", value),
            ("output", output),
            ("grad_output", grad_output),
            ("grad_query", grad_query),
            ("grad_key", grad_key),
            ("grad_value", grad_value),
        ):
            if _shares_storage(tensor, source):
                raise ValueError(f"{name} must not share storage with {source_name}")
        for state_name, state in zip(
            ("lse", "delta")[: len(state_buffers)],
            state_buffers,
            strict=True,
        ):
            if _shares_storage(tensor, state):
                raise ValueError(f"{name} must not share storage with {state_name}")
        state_buffers.append(tensor)
    lse, delta = state_buffers
    if query_length == 0 or key_length == 0:
        grad_query.zero_()
        grad_key.zero_()
        grad_value.zero_()
        return grad_query, grad_key, grad_value
    block_d = _next_power_of_two(logical_head_dim)
    block_d_packed = _next_power_of_two(int(query.shape[-1])) if qk_int4 else 1
    block_dv = _next_power_of_two(value_dim)
    if max(block_d, block_dv) > 256:
        raise ValueError("optimized attention backward supports head_dim and value_dim up to 256")
    left, right = window if window is not None else (0, 0)
    softmax_scale = _softmax_scale(scale, logical_head_dim)
    from .attention_artifacts import (
        ATTENTION_BACKWARD_DKV,
        ATTENTION_BACKWARD_DQ,
        ATTENTION_MASK_BF16,
        ATTENTION_MASK_BOOL,
        ATTENTION_MASK_FP32,
        ATTENTION_MASK_NONE,
        ATTENTION_OUTPUT_BF16,
        ATTENTION_OUTPUT_FP32,
        ATTENTION_PRECOMPILED_DIMENSIONS,
        ATTENTION_SEMANTICS_CAUSAL,
        ATTENTION_SEMANTICS_CAUSAL_LOCAL,
        ATTENTION_SEMANTICS_FULL,
        ATTENTION_SEMANTICS_LOCAL,
        attention_backward_kernel_id,
        attention_mode,
        attention_precompiled_backward_workload_shapes,
        is_precompiled_attention_backward_config,
        launch_precompiled_attention_backward,
        precompiled_attention_backward_available,
    )
    workload_shape = (query_heads, kv_heads, query_length, key_length)
    specialize_profile = workload_shape in attention_precompiled_backward_workload_shapes(
        head_dim=logical_head_dim,
        value_dim=value_dim,
    )

    if attn_mask is None:
        mask_dtype = ATTENTION_MASK_NONE
    elif attn_mask.dtype == torch.bool:
        mask_dtype = ATTENTION_MASK_BOOL
    elif attn_mask.dtype == torch.bfloat16:
        mask_dtype = ATTENTION_MASK_BF16
    else:
        mask_dtype = ATTENTION_MASK_FP32
    if is_causal and window is not None:
        artifact_semantics = ATTENTION_SEMANTICS_CAUSAL_LOCAL
    elif is_causal:
        artifact_semantics = ATTENTION_SEMANTICS_CAUSAL
    elif window is not None:
        artifact_semantics = ATTENTION_SEMANTICS_LOCAL
    else:
        artifact_semantics = ATTENTION_SEMANTICS_FULL
    mode = attention_mode(qk_int4=qk_int4, pv_int4=pv_int4)
    artifact_output_dtype = (
        ATTENTION_OUTPUT_BF16 if output.dtype == torch.bfloat16 else ATTENTION_OUTPUT_FP32
    )
    artifact_grad_output_dtype = (
        ATTENTION_OUTPUT_BF16 if grad_output.dtype == torch.bfloat16 else ATTENTION_OUTPUT_FP32
    )
    dimensions_covered = (logical_head_dim, value_dim) in ATTENTION_PRECOMPILED_DIMENSIONS
    config_covered = is_precompiled_attention_backward_config(
        config,
        head_dim=logical_head_dim,
        value_dim=value_dim,
    )
    backward_kernel_ids: tuple[str, str] | None = None
    artifacts_available = False
    if dimensions_covered and config_covered:
        candidates = []
        if specialize_profile and mask_dtype == ATTENTION_MASK_NONE:
            candidates.append((artifact_semantics, workload_shape))
        candidates.append((None, None))
        for candidate_semantics, candidate_shape in candidates:
            dq_kernel_id = attention_backward_kernel_id(
                phase=ATTENTION_BACKWARD_DQ,
                mode=mode,
                mask_dtype=mask_dtype,
                semantics=candidate_semantics,
                output_dtype=artifact_output_dtype,
                grad_output_dtype=artifact_grad_output_dtype,
                head_dim=logical_head_dim,
                value_dim=value_dim,
                config=config,
                workload_shape=candidate_shape,
            )
            dkv_kernel_id = attention_backward_kernel_id(
                phase=ATTENTION_BACKWARD_DKV,
                mode=mode,
                mask_dtype=mask_dtype,
                semantics=candidate_semantics,
                output_dtype=artifact_output_dtype,
                grad_output_dtype=artifact_grad_output_dtype,
                head_dim=logical_head_dim,
                value_dim=value_dim,
                config=config,
                workload_shape=candidate_shape,
            )
            if precompiled_attention_backward_available(
                dq_kernel_id,
                phase=ATTENTION_BACKWARD_DQ,
            ) and precompiled_attention_backward_available(
                dkv_kernel_id,
                phase=ATTENTION_BACKWARD_DKV,
            ):
                backward_kernel_ids = (dq_kernel_id, dkv_kernel_id)
                artifacts_available = True
                break
    if use_precompiled is True and not dimensions_covered:
        raise ValueError(
            "precompiled attention backward requires (head_dim, value_dim) in "
            f"{ATTENTION_PRECOMPILED_DIMENSIONS}; got "
            f"head_dim={logical_head_dim}, value_dim={value_dim}"
        )
    if use_precompiled is True and not config_covered:
        raise ValueError(
            f"precompiled attention backward does not cover config {config}"
        )
    if use_precompiled is True and not artifacts_available:
        raise RuntimeError("required precompiled attention backward artifacts are not installed")

    if use_precompiled is not False and artifacts_available:
        assert backward_kernel_ids is not None
        common_launch_kwargs = {
            "query": query,
            "key": key,
            "value": value,
            "query_scale": query_scale if query_scale is not None else query,
            "key_scale": key_scale if key_scale is not None else key,
            "value_scale": value_scale if value_scale is not None else value,
            "attn_mask": mask_arg,
            "output": output,
            "grad_output": grad_output,
            "lse": lse,
            "delta": delta,
            "grad_query": grad_query,
            "grad_key": grad_key,
            "grad_value": grad_value,
            "batch": batch,
            "query_heads": query_heads,
            "kv_heads": kv_heads,
            "query_length": query_length,
            "key_length": key_length,
            "head_dim": logical_head_dim,
            "packed_head_dim": int(query.shape[-1]) if qk_int4 else 1,
            "value_dim": value_dim,
            "softmax_scale": softmax_scale,
            "mask_strides": mask_strides,
            "is_causal": bool(is_causal),
            "has_window": window is not None,
            "window_left": left,
            "window_right": right,
            "query_position_offset": query_position_offset,
        }
        launch_precompiled_attention_backward(
            backward_kernel_ids[0],
            phase=ATTENTION_BACKWARD_DQ,
            grid=(_cdiv(query_length, config.block_m), batch * query_heads, 1),
            **common_launch_kwargs,
        )
        launch_precompiled_attention_backward(
            backward_kernel_ids[1],
            phase=ATTENTION_BACKWARD_DKV,
            grid=(_cdiv(key_length, config.dkv_block_n), batch * kv_heads, 1),
            **common_launch_kwargs,
        )
        return grad_query, grad_key, grad_value
    kernel = _attention_backward_kernel(specialize_runtime_args=True)
    grid = ((_cdiv(query_length, config.block_m)), batch * query_heads)
    kernel[grid](
        query,
        key,
        value,
        query_scale if query_scale is not None else query,
        key_scale if key_scale is not None else key,
        value_scale if value_scale is not None else value,
        mask_arg,
        output,
        grad_output,
        lse,
        delta,
        grad_query,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        logical_head_dim,
        int(query.shape[-1]) if qk_int4 else 1,
        value_dim,
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
        GRAD_QUERY_BF16=dtype == torch.bfloat16,
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
    dkv_kernel = _attention_backward_dkv_kernel()
    dkv_grid = (_cdiv(key_length, config.dkv_block_n), batch * kv_heads)
    dkv_kernel[dkv_grid](
        query,
        key,
        value,
        query_scale if query_scale is not None else query,
        key_scale if key_scale is not None else key,
        value_scale if value_scale is not None else value,
        mask_arg,
        grad_output,
        lse,
        delta,
        grad_key,
        grad_value,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        logical_head_dim,
        int(query.shape[-1]) if qk_int4 else 1,
        value_dim,
        softmax_scale,
        *mask_strides,
        bool(is_causal),
        window is not None,
        left,
        right,
        query_position_offset,
        BLOCK_M=config.dkv_block_m,
        BLOCK_N=config.dkv_block_n,
        BLOCK_D=block_d,
        BLOCK_D_PACKED=block_d_packed,
        BLOCK_DV=block_dv,
        QK_INT4=qk_int4,
        PV_INT4=pv_int4,
        MASK_KIND=mask_kind,
        SPECIALIZE_SEMANTICS=True,
        IS_CAUSAL_STATIC=bool(is_causal),
        HAS_WINDOW_STATIC=window is not None,
        SPECIALIZE_SEQUENCE=specialize_profile,
        QUERY_LENGTH_STATIC=query_length if specialize_profile else 0,
        KEY_LENGTH_STATIC=key_length if specialize_profile else 0,
        SPECIALIZE_HEADS=True,
        QUERY_HEADS_STATIC=query_heads,
        KV_HEADS_STATIC=kv_heads,
        num_warps=config.dkv_num_warps,
        num_stages=config.dkv_num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    return grad_query, grad_key, grad_value

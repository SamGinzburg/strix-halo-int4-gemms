import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import (
    Int4AttentionConfig,
    autotune_attention,
    int4_scaled_dot_product_attention,
    quantize_attention_qk_int4,
    quantize_attention_value_int4,
    reference_scaled_dot_product_attention,
)
from amd_strix_halo_kernels.quant import unpack_int4_k_major
from amd_strix_halo_kernels.attention import _default_attention_config


STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3
requires_gpu = pytest.mark.skipif(not torch.cuda.is_available(), reason="attention requires CUDA/HIP")


def _logical_inputs(
    *,
    batch: int = 1,
    query_heads: int = 2,
    kv_heads: int = 2,
    query_length: int = 17,
    key_length: int = 21,
    head_dim: int = 48,
    value_dim: int = 32,
    seed: int = 101,
):
    generator = torch.Generator(device="cuda").manual_seed(seed)
    q = torch.randn(
        (batch, query_heads, query_length, head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    k = torch.randn(
        (batch, kv_heads, key_length, head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    v = torch.randn(
        (batch, kv_heads, key_length, value_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    return q.contiguous(), k.contiguous(), v.contiguous()


def _attention_operands(q, k, v, *, qk_int4: bool, pv_int4: bool):
    kwargs = {}
    if qk_int4:
        query, query_scale, head_dim = quantize_attention_qk_int4(q)
        key, key_scale, key_head_dim = quantize_attention_qk_int4(k)
        assert key_head_dim == head_dim
        kwargs.update(query_scale=query_scale, key_scale=key_scale, head_dim=head_dim)
    else:
        query, key = q, k
    if pv_int4:
        value, value_scale = quantize_attention_value_int4(v)
        kwargs["value_scale"] = value_scale
    else:
        value = v
    return query, key, value, kwargs


def _unpack_attention_value(packed):
    low = (packed & 0xF).to(torch.int8)
    high = ((packed >> 4) & 0xF).to(torch.int8)
    low = torch.where(low >= 8, low - 16, low)
    high = torch.where(high >= 8, high - 16, high)
    unpacked = torch.empty(
        (*packed.shape[:-2], packed.shape[-2] * 2, packed.shape[-1]),
        device=packed.device,
        dtype=torch.int8,
    )
    unpacked[..., 0::2, :] = low
    unpacked[..., 1::2, :] = high
    return unpacked


def _assert_quality(actual, expected, *, max_relative_l2: float, min_cosine: float) -> None:
    actual_f32 = actual.float().flatten()
    expected_f32 = expected.float().flatten()
    relative_l2 = float(torch.linalg.vector_norm(actual_f32 - expected_f32) / torch.linalg.vector_norm(expected_f32))
    cosine = float(torch.nn.functional.cosine_similarity(actual_f32, expected_f32, dim=0))
    assert relative_l2 <= max_relative_l2, relative_l2
    assert cosine >= min_cosine, cosine


def test_attention_config_rejects_invalid_launch_values() -> None:
    with pytest.raises(ValueError, match="power of two"):
        Int4AttentionConfig(block_m=24)
    with pytest.raises(ValueError, match="block_n must be a power of two"):
        Int4AttentionConfig(block_n=24)
    with pytest.raises(TypeError, match="num_warps"):
        Int4AttentionConfig(num_warps=True)


def test_attention_defaults_use_measured_bf16_local_tiles() -> None:
    short = _default_attention_config(
        qk_int4=False,
        pv_int4=False,
        query_length=512,
        key_length=512,
        window=(127, 0),
    )
    training = _default_attention_config(
        qk_int4=False,
        pv_int4=False,
        query_length=2048,
        key_length=2048,
        window=(127, 0),
    )

    assert (short.block_m, short.block_n, short.num_warps) == (64, 32, 4)
    assert (training.block_m, training.block_n, training.num_warps) == (64, 64, 4)


@pytest.mark.parametrize(
    ("qk_int4", "query_length", "expected_block_m"),
    [(False, 32, 16), (False, 512, 32), (False, 2048, 64), (True, 512, 64)],
)
def test_attention_defaults_use_measured_int4_value_tiles(qk_int4, query_length, expected_block_m) -> None:
    config = _default_attention_config(
        qk_int4=qk_int4,
        pv_int4=True,
        query_length=query_length,
        key_length=query_length,
        window=(127, 0),
    )

    assert (config.block_m, config.block_n, config.num_warps) == (expected_block_m, 16, 4)


def test_attention_qk_quantization_pads_head_dim_and_roundtrips_codes() -> None:
    torch.manual_seed(103)
    logical = torch.randn((2, 3, 5, 33), dtype=torch.bfloat16) * 0.2

    packed, scales, head_dim = quantize_attention_qk_int4(logical)
    codes = unpack_int4_k_major(packed)

    assert head_dim == 33
    assert tuple(packed.shape) == (2, 3, 5, 24)
    assert tuple(scales.shape) == (2, 3, 5)
    assert scales.dtype is torch.bfloat16
    assert torch.count_nonzero(codes[..., head_dim:]) == 0
    dequantized = codes[..., :head_dim].float() * scales.float()[..., None]
    _assert_quality(dequantized, logical, max_relative_l2=0.13, min_cosine=0.99)


def test_attention_value_quantization_pads_tokens_and_roundtrips_codes() -> None:
    torch.manual_seed(107)
    logical = torch.randn((2, 3, 17, 9), dtype=torch.bfloat16) * 0.2

    packed, scales = quantize_attention_value_int4(logical)
    codes = _unpack_attention_value(packed)

    assert tuple(packed.shape) == (2, 3, 16, 9)
    assert tuple(scales.shape) == (2, 3, 2, 9)
    assert scales.dtype is torch.bfloat16
    assert torch.count_nonzero(codes[..., 17:, :]) == 0
    dequantized = codes.reshape(2, 3, 2, 16, 9).float() * scales.float().unsqueeze(-2)
    dequantized = dequantized.reshape(2, 3, 32, 9)[..., :17, :]
    _assert_quality(dequantized, logical, max_relative_l2=0.13, min_cosine=0.99)


@pytest.mark.parametrize(("helper", "keyword", "value"), [
    (quantize_attention_qk_int4, "block_size", 8),
    (quantize_attention_value_int4, "group_size", 32),
])
def test_attention_quantization_rejects_unsupported_grouping(helper, keyword, value) -> None:
    tensor = torch.ones((1, 2, 16), dtype=torch.bfloat16)
    with pytest.raises(ValueError):
        helper(tensor, **{keyword: value})


@requires_gpu
@pytest.mark.parametrize("case", ["dense", "ragged", "causal", "bool_mask", "additive_mask", "local"])
def test_bf16_reference_matches_pytorch_sdpa(case) -> None:
    query_length, key_length = (16, 16) if case == "dense" else (13, 21)
    q, k, v = _logical_inputs(query_length=query_length, key_length=key_length, seed=109)
    kwargs = {}
    torch_kwargs = {}
    if case == "causal":
        kwargs["is_causal"] = True
        torch_kwargs["is_causal"] = True
    elif case == "bool_mask":
        mask = torch.rand((1, 1, query_length, key_length), device="cuda") > 0.25
        mask[..., 0] = True
        kwargs["attn_mask"] = mask
        torch_kwargs["attn_mask"] = mask
    elif case == "additive_mask":
        mask = torch.linspace(-0.5, 0.0, key_length, device="cuda", dtype=torch.float32)
        kwargs["attn_mask"] = mask
        torch_kwargs["attn_mask"] = mask
    elif case == "local":
        kwargs["window_size"] = (3, 1)
        q_pos = torch.arange(query_length, device="cuda")
        k_pos = torch.arange(key_length, device="cuda")
        torch_kwargs["attn_mask"] = (k_pos[None, :] >= q_pos[:, None] - 3) & (
            k_pos[None, :] <= q_pos[:, None] + 1
        )

    actual = reference_scaled_dot_product_attention(q, k, v, output_dtype=torch.float32, **kwargs)
    expected = torch.nn.functional.scaled_dot_product_attention(q.float(), k.float(), v.float(), **torch_kwargs)

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
def test_bf16_reference_matches_pytorch_gqa() -> None:
    q, k, v = _logical_inputs(query_heads=4, kv_heads=2, query_length=11, key_length=19, seed=113)

    actual = reference_scaled_dot_product_attention(q, k, v, enable_gqa=True, output_dtype=torch.float32)
    expected = torch.nn.functional.scaled_dot_product_attention(
        q.float(),
        k.float(),
        v.float(),
        enable_gqa=True,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
@pytest.mark.parametrize(("query_length", "key_length", "head_dim"), [(16, 16, 64), (13, 21, 33)])
def test_optimized_attention_matches_quantized_oracle(
    qk_int4,
    pv_int4,
    query_length,
    key_length,
    head_dim,
) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(
        query_length=query_length,
        key_length=key_length,
        head_dim=head_dim,
        seed=127 + query_length,
    )
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=pv_int4)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("block_n", [32, 64])
def test_int4_value_multi_group_tiles_match_ragged_oracle(qk_int4, block_n) -> None:
    """Larger explicit tiles must select each 16-token V scale correctly."""

    pytest.importorskip("triton")
    q, k, v = _logical_inputs(
        query_length=13,
        key_length=37,
        head_dim=33,
        value_dim=19,
        seed=151 + block_n,
    )
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=True)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        config=Int4AttentionConfig(block_m=16, block_n=block_n),
        output_dtype=torch.float32,
        **kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
def test_autotune_attention_validates_all_representation_modes(qk_int4, pv_int4) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(
        query_heads=4,
        kv_heads=2,
        query_length=9,
        key_length=23,
        head_dim=48,
        value_dim=17,
        seed=131,
    )
    query, key, value, operand_kwargs = _attention_operands(
        q,
        k,
        v,
        qk_int4=qk_int4,
        pv_int4=pv_int4,
    )
    config = Int4AttentionConfig(block_m=16, block_n=16 if pv_int4 else 32)

    result = autotune_attention(
        query,
        key,
        value,
        enable_gqa=True,
        window_size=(4, 1),
        candidates=(config,),
        warmup_ms=1,
        rep_ms=2,
        **operand_kwargs,
    )

    expected_mode = f"{'int4' if qk_int4 else 'bf16'}-{'int4' if pv_int4 else 'bf16'}"
    assert result.mode == expected_mode
    assert result.best_config == config
    assert result.best_record.success
    assert result.best_record.runtime_ms > 0.0
    assert result.best_record.metadata["numerical_gate"] == {
        "reference": "representation-matched float32 attention oracle",
        "rtol": STRICT_RTOL,
        "atol": STRICT_ATOL,
    }
    assert result.best_record.metadata["numerics"]["float32_validation_output"]["max_tolerance_ratio"] <= 1.0
    assert result.best_record.metadata["numerics"]["timed_output_vs_rounded_oracle"]["max_tolerance_ratio"] <= 1.0


@requires_gpu
def test_autotune_attention_split_decode_validates_fp32_output() -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=1, key_length=64, head_dim=32, value_dim=16, seed=133)
    config = Int4AttentionConfig(block_m=16, block_n=64, decode_splits=2)

    result = autotune_attention(
        q,
        k,
        v,
        is_causal=True,
        query_position_offset=63,
        output_dtype=torch.float32,
        candidates=(config,),
        warmup_ms=1,
        rep_ms=2,
    )

    assert result.output_dtype == "float32"
    assert result.best_config == config
    assert result.best_record.metadata["arithmetic"]["timed_output"] == "float32"
    assert result.best_record.metadata["numerics"]["timed_output_vs_rounded_oracle"]["max_tolerance_ratio"] <= 1.0


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
@pytest.mark.parametrize("mask_kind", ["causal_local", "bool", "additive"])
def test_optimized_attention_masking_matches_quantized_oracle(qk_int4, pv_int4, mask_kind) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=9, key_length=23, head_dim=48, value_dim=17, seed=137)
    query, key, value, operand_kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=pv_int4)
    mask_kwargs = {}
    if mask_kind == "causal_local":
        mask_kwargs.update(is_causal=True, window_size=(4, 0), query_position_offset=7)
    elif mask_kind == "bool":
        mask = torch.rand((1, 1, 9, 23), device="cuda") > 0.35
        mask[..., 0] = True
        mask_kwargs["attn_mask"] = mask
    else:
        mask_kwargs["attn_mask"] = torch.linspace(-1.0, 0.0, 23, device="cuda", dtype=torch.bfloat16)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **operand_kwargs,
        **mask_kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **operand_kwargs,
        **mask_kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
def test_optimized_attention_gqa_matches_quantized_oracle(qk_int4, pv_int4) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_heads=4, kv_heads=2, query_length=7, key_length=19, seed=139)
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=pv_int4)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        output_dtype=torch.float32,
        **kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
def test_split_decode_matches_quantized_oracle(qk_int4, pv_int4) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=1, key_length=513, seed=143)
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=pv_int4)
    config = Int4AttentionConfig(
        block_m=16,
        block_n=16 if pv_int4 else 64,
        decode_splits=8,
    )

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        config=config,
        output_dtype=torch.float32,
        **kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize(
    ("head_dim", "value_dim"),
    [(32, 32), (80, 64), (96, 80), (128, 96), (256, 256)],
)
def test_attention_supported_feature_dimensions(qk_int4, head_dim, value_dim) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(
        batch=2,
        query_heads=4,
        kv_heads=2,
        query_length=7,
        key_length=19,
        head_dim=head_dim,
        value_dim=value_dim,
        seed=147 + head_dim,
    )
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=False)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        scale=0.125,
        output_dtype=torch.float32,
        **kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        scale=0.125,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
def test_attention_noncontiguous_broadcast_mask_matches_oracle() -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=17, key_length=23, seed=148)
    mask = (torch.rand((23, 17), device="cuda") > 0.2).transpose(0, 1)
    mask[:, 0] = True
    assert not mask.is_contiguous()

    actual = int4_scaled_dot_product_attention(q, k, v, attn_mask=mask, output_dtype=torch.float32)
    expected = reference_scaled_dot_product_attention(q, k, v, attn_mask=mask, output_dtype=torch.float32)

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
def test_int4_qk_bf16_pv_preserves_sdpa_quality() -> None:
    q, k, v = _logical_inputs(query_length=31, key_length=37, head_dim=64, value_dim=48, seed=149)
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=True, pv_int4=False)

    actual = reference_scaled_dot_product_attention(query, key, value, output_dtype=torch.float32, **kwargs)
    expected = torch.nn.functional.scaled_dot_product_attention(q.float(), k.float(), v.float())

    _assert_quality(actual, expected, max_relative_l2=0.03, min_cosine=0.999)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("case", ["dense", "ragged", "causal", "local", "gqa"])
def test_int4_value_attention_preserves_pytorch_sdpa_quality(qk_int4, case) -> None:
    query_heads, kv_heads = (4, 2) if case == "gqa" else (2, 2)
    query_length, key_length = (16, 16) if case == "dense" else (31, 37)
    q, k, v = _logical_inputs(
        query_heads=query_heads,
        kv_heads=kv_heads,
        query_length=query_length,
        key_length=key_length,
        head_dim=64,
        value_dim=48,
        seed=151 + query_length + int(qk_int4),
    )
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=True)
    library_kwargs = {}
    torch_kwargs = {}
    if case == "causal":
        library_kwargs["is_causal"] = True
        torch_kwargs["is_causal"] = True
    elif case == "local":
        library_kwargs["window_size"] = (5, 1)
        query_positions = torch.arange(query_length, device="cuda")
        key_positions = torch.arange(key_length, device="cuda")
        torch_kwargs["attn_mask"] = (
            (key_positions[None, :] >= query_positions[:, None] - 5)
            & (key_positions[None, :] <= query_positions[:, None] + 1)
        )
    elif case == "gqa":
        library_kwargs["enable_gqa"] = True
        torch_kwargs["enable_gqa"] = True

    actual = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **library_kwargs,
        **kwargs,
    )
    expected = torch.nn.functional.scaled_dot_product_attention(
        q.float(),
        k.float(),
        v.float(),
        **torch_kwargs,
    )

    _assert_quality(actual, expected, max_relative_l2=0.12, min_cosine=0.99)


@requires_gpu
@pytest.mark.parametrize(("query_length", "key_length"), [(0, 7), (5, 0)])
def test_empty_bf16_attention_returns_zero(query_length, key_length) -> None:
    q, k, v = _logical_inputs(query_length=query_length, key_length=key_length, seed=154)

    actual = int4_scaled_dot_product_attention(q, k, v, output_dtype=torch.float32)

    assert tuple(actual.shape) == (1, 2, query_length, 32)
    assert torch.count_nonzero(actual) == 0


@requires_gpu
def test_fully_masked_rows_are_zero() -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=5, key_length=7, seed=157)
    mask = torch.ones((5, 7), device="cuda", dtype=torch.bool)
    mask[2] = False

    actual = int4_scaled_dot_product_attention(q, k, v, attn_mask=mask, output_dtype=torch.float32)

    assert torch.count_nonzero(actual[:, :, 2, :]) == 0
    assert torch.isfinite(actual).all()


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
def test_attention_cudagraph_replay_matches_oracle(qk_int4, pv_int4) -> None:
    pytest.importorskip("triton")
    first = _logical_inputs(query_length=8, key_length=19, seed=163)
    second = _logical_inputs(query_length=8, key_length=19, seed=167)
    query, key, value, kwargs = _attention_operands(*first, qk_int4=qk_int4, pv_int4=pv_int4)
    next_query, next_key, next_value, next_kwargs = _attention_operands(
        *second,
        qk_int4=qk_int4,
        pv_int4=pv_int4,
    )
    out = torch.empty((1, 2, 8, 32), device="cuda", dtype=torch.float32)
    launch_kwargs = dict(output_dtype=torch.float32, out=out, window_size=(5, 1), **kwargs)

    int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)

    query.copy_(next_query)
    key.copy_(next_key)
    value.copy_(next_value)
    for name in ("query_scale", "key_scale", "value_scale"):
        if name in kwargs:
            kwargs[name].copy_(next_kwargs[name])
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        window_size=(5, 1),
        **kwargs,
    )

    assert captured.data_ptr() == out.data_ptr()
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
@pytest.mark.parametrize("mask_kind", ["bool", "additive"])
def test_attention_cudagraph_replay_observes_mutated_mask(qk_int4, pv_int4, mask_kind) -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=8, key_length=19, seed=171)
    query, key, value, kwargs = _attention_operands(q, k, v, qk_int4=qk_int4, pv_int4=pv_int4)
    if mask_kind == "bool":
        mask = torch.ones((1, 1, 8, 19), device="cuda", dtype=torch.bool)
    else:
        mask = torch.zeros((1, 1, 8, 19), device="cuda", dtype=torch.float32)
    out = torch.empty((1, 2, 8, 32), device="cuda", dtype=torch.float32)
    launch_kwargs = dict(attn_mask=mask, output_dtype=torch.float32, out=out, **kwargs)

    int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    initial = captured.clone()

    if mask_kind == "bool":
        mask.zero_()
        mask[..., 0] = True
    else:
        mask[..., 1::2] = -20.0
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        attn_mask=mask,
        output_dtype=torch.float32,
        **kwargs,
    )

    assert captured.data_ptr() == out.data_ptr()
    assert not torch.allclose(captured, initial, rtol=STRICT_RTOL, atol=STRICT_ATOL)
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("pv_int4", [False, True], ids=["bf16-pv", "int4-pv"])
def test_split_decode_cudagraph_replay_matches_oracle(qk_int4, pv_int4) -> None:
    pytest.importorskip("triton")
    first = _logical_inputs(query_length=1, key_length=129, seed=181)
    second = _logical_inputs(query_length=1, key_length=129, seed=191)
    query, key, value, kwargs = _attention_operands(*first, qk_int4=qk_int4, pv_int4=pv_int4)
    next_query, next_key, next_value, next_kwargs = _attention_operands(
        *second,
        qk_int4=qk_int4,
        pv_int4=pv_int4,
    )
    config = Int4AttentionConfig(
        block_m=16,
        block_n=16 if pv_int4 else 64,
        decode_splits=4,
    )
    workspace = torch.empty((1, 2, 4, 34), device="cuda", dtype=torch.float32)
    out = torch.empty((1, 2, 1, 32), device="cuda", dtype=torch.float32)
    launch_kwargs = dict(
        output_dtype=torch.float32,
        out=out,
        workspace=workspace,
        config=config,
        **kwargs,
    )

    int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)

    query.copy_(next_query)
    key.copy_(next_key)
    value.copy_(next_value)
    for name in ("query_scale", "key_scale", "value_scale"):
        if name in kwargs:
            kwargs[name].copy_(next_kwargs[name])
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        **kwargs,
    )

    assert captured.data_ptr() == out.data_ptr()
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_gpu
def test_attention_validation_failures() -> None:
    q, k, v = _logical_inputs(query_length=5, key_length=7, seed=173)

    with pytest.raises(ValueError, match="dropout_p=0"):
        int4_scaled_dot_product_attention(q, k, v, dropout_p=0.1)
    with pytest.raises(ValueError, match="cannot both"):
        int4_scaled_dot_product_attention(
            q,
            k,
            v,
            attn_mask=torch.ones((5, 7), device="cuda", dtype=torch.bool),
            is_causal=True,
        )
    with pytest.raises(ValueError, match="enable_gqa"):
        int4_scaled_dot_product_attention(q.repeat(1, 2, 1, 1), k, v)
    with pytest.raises(TypeError, match="query_scale"):
        packed_q, _, head_dim = quantize_attention_qk_int4(q)
        packed_k, k_scale, _ = quantize_attention_qk_int4(k)
        int4_scaled_dot_product_attention(
            packed_q,
            packed_k,
            v,
            key_scale=k_scale,
            head_dim=head_dim,
        )
    with pytest.raises(ValueError, match="broadcastable"):
        int4_scaled_dot_product_attention(
            q,
            k,
            v,
            attn_mask=torch.ones((3, 5, 7), device="cuda", dtype=torch.bool),
        )
    with pytest.raises(ValueError, match="forward-only"):
        int4_scaled_dot_product_attention(q.requires_grad_(), k, v)
    with pytest.raises(ValueError, match="query_length=1"):
        int4_scaled_dot_product_attention(
            q.detach(),
            k,
            v,
            config=Int4AttentionConfig(decode_splits=2),
        )
    with pytest.raises(TypeError, match="is_causal"):
        int4_scaled_dot_product_attention(q.detach(), k, v, is_causal=1)
    with pytest.raises(TypeError, match="enable_gqa"):
        int4_scaled_dot_product_attention(q.detach(), k, v, enable_gqa=1)
    with pytest.raises(TypeError, match="scale"):
        int4_scaled_dot_product_attention(q.detach(), k, v, scale=True)
    with pytest.raises(TypeError, match="head_dim"):
        int4_scaled_dot_product_attention(q.detach(), k, v, head_dim=48.0)
    with pytest.raises(ValueError, match="workspace is not used"):
        int4_scaled_dot_product_attention(
            q.detach(),
            k,
            v,
            workspace=torch.empty(1, device="cuda"),
            use_reference=True,
        )
    with pytest.raises(TypeError, match="use_reference"):
        int4_scaled_dot_product_attention(q.detach(), k, v, use_reference=1)
    with pytest.raises(TypeError, match="use_precompiled"):
        int4_scaled_dot_product_attention(q.detach(), k, v, use_precompiled=1)
    with pytest.raises(ValueError, match="cannot be combined"):
        int4_scaled_dot_product_attention(
            q.detach(),
            k,
            v,
            use_reference=True,
            use_precompiled=True,
        )
    alias_q, alias_k, alias_v = _logical_inputs(query_length=5, key_length=5, seed=177)
    with pytest.raises(ValueError, match="out must not share storage with value"):
        int4_scaled_dot_product_attention(alias_q, alias_k, alias_v, out=alias_v)


@requires_gpu
def test_attention_output_dtype_and_preallocated_output() -> None:
    pytest.importorskip("triton")
    q, k, v = _logical_inputs(query_length=5, key_length=7, value_dim=19, seed=179)
    out = torch.empty((1, 2, 5, 19), device="cuda", dtype=torch.bfloat16)

    actual = int4_scaled_dot_product_attention(q, k, v, out=out)
    expected = reference_scaled_dot_product_attention(q, k, v)

    assert actual.data_ptr() == out.data_ptr()
    assert actual.dtype is torch.bfloat16
    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)

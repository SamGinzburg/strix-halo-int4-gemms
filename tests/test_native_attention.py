import os
from pathlib import Path

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
from amd_strix_halo_kernels.attention_artifacts import (
    ATTENTION_MASK_BF16,
    ATTENTION_MASK_BOOL,
    ATTENTION_MASK_DTYPES,
    ATTENTION_MASK_FP32,
    ATTENTION_MASK_NONE,
    ATTENTION_OUTPUT_BF16,
    ATTENTION_OUTPUT_DTYPES,
    ATTENTION_PRECOMPILED_CONFIGS,
    ATTENTION_PRECOMPILED_DECODE_SPLITS,
    ATTENTION_SEMANTICS,
    ATTENTION_SEMANTICS_CAUSAL,
    ATTENTION_SEMANTICS_CAUSAL_LOCAL,
    ATTENTION_SEMANTICS_FULL,
    ATTENTION_SEMANTICS_LOCAL,
    attention_forward_kernel_id,
    attention_precompiled_workload_shapes,
    attention_reduce_kernel_id,
    precompiled_attention_forward_available,
    precompiled_attention_reduce_available,
)


STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3
NATIVE_ROOT = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
requires_native_attention = pytest.mark.skipif(
    not torch.cuda.is_available()
    or NATIVE_ROOT is None
    or not (Path(NATIVE_ROOT) / "libamd_strix_halo_kernels_dispatch.so").exists(),
    reason="built native attention artifacts are required",
)


def _config(values):
    return Int4AttentionConfig(
        block_m=values[0],
        block_n=values[1],
        num_warps=values[2],
        num_stages=values[3],
        decode_splits=values[4],
    )


FORWARD_CASES = tuple(
    (mode, _config(values), mask_dtype, None, output_dtype, None)
    for mode, configs in ATTENTION_PRECOMPILED_CONFIGS.items()
    for values in configs
    for mask_dtype in ATTENTION_MASK_DTYPES
    for output_dtype in ATTENTION_OUTPUT_DTYPES
) + tuple(
    (mode, _config(values), mask_dtype, semantics, output_dtype, workload_shape)
    for mode, configs in ATTENTION_PRECOMPILED_CONFIGS.items()
    for values in configs
    for mask_dtype in ATTENTION_MASK_DTYPES
    for output_dtype in ATTENTION_OUTPUT_DTYPES
    for workload_shape in attention_precompiled_workload_shapes(_config(values))
    for semantics in ATTENTION_SEMANTICS
    if mask_dtype == ATTENTION_MASK_NONE
    or semantics not in {ATTENTION_SEMANTICS_CAUSAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL}
)

SEMANTIC_CASES = tuple(
    (mode, mask_dtype, semantics)
    for mode in ATTENTION_PRECOMPILED_CONFIGS
    for mask_dtype in ATTENTION_MASK_DTYPES
    for semantics in ATTENTION_SEMANTICS
    if mask_dtype == ATTENTION_MASK_NONE
    or semantics not in {ATTENTION_SEMANTICS_CAUSAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL}
)


def _logical_inputs(*, query_length, key_length, seed, query_heads=4, kv_heads=2):
    generator = torch.Generator(device="cuda").manual_seed(seed)
    query = torch.randn(
        (1, query_heads, query_length, 64),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    key = torch.randn(
        (1, kv_heads, key_length, 64),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    value = torch.randn(
        (1, kv_heads, key_length, 64),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ) * 0.2
    return query.contiguous(), key.contiguous(), value.contiguous()


def _operands(mode, query, key, value):
    qk_mode, pv_mode = mode.split("-", 1)
    kwargs = {"enable_gqa": True}
    if qk_mode == "int4":
        query, query_scale, head_dim = quantize_attention_qk_int4(query)
        key, key_scale, key_head_dim = quantize_attention_qk_int4(key)
        assert head_dim == key_head_dim == 64
        kwargs.update(query_scale=query_scale, key_scale=key_scale, head_dim=head_dim)
    if pv_mode == "int4":
        value, value_scale = quantize_attention_value_int4(value)
        kwargs["value_scale"] = value_scale
    return query, key, value, kwargs


def _mask_kwargs(mask_dtype, semantics, *, query_length, key_length, query_position_offset):
    kwargs = {"query_position_offset": query_position_offset}
    if mask_dtype == ATTENTION_MASK_BOOL:
        query_positions = torch.arange(query_length, device="cuda")[:, None]
        key_positions = torch.arange(key_length, device="cuda")[None, :]
        mask = ((query_positions + key_positions) % 3) != 0
        mask[:, 0] = True
        kwargs["attn_mask"] = mask
    elif mask_dtype != ATTENTION_MASK_NONE:
        dtype = torch.bfloat16 if mask_dtype == ATTENTION_MASK_BF16 else torch.float32
        kwargs["attn_mask"] = torch.linspace(
            -0.25,
            0.0,
            key_length,
            device="cuda",
            dtype=dtype,
        )
    if semantics in {ATTENTION_SEMANTICS_CAUSAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL}:
        kwargs["is_causal"] = True
    if semantics in {ATTENTION_SEMANTICS_LOCAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL}:
        kwargs["window_size"] = (9, 2)
    return kwargs


def _case_id(case):
    mode, config, mask_dtype, semantics, output_dtype, workload_shape = case
    workload_label = (
        "runtime"
        if workload_shape is None
        else (
            f"hq{workload_shape[0]}-hkv{workload_shape[1]}-"
            f"lq{workload_shape[2]}-lk{workload_shape[3]}"
        )
    )
    return (
        f"{mode}-{mask_dtype}-{semantics or 'runtime'}-{output_dtype}-{workload_label}-"
        f"bm{config.block_m}-bn{config.block_n}-"
        f"w{config.num_warps}-ds{config.decode_splits}"
    )


def _assert_native_numerics(actual, expected) -> None:
    if actual.dtype == torch.float32:
        torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)
        return

    # At magnitudes >= 0.25, one BF16 ULP is 1.953125e-3, so a literal 1e-3
    # absolute threshold can reject two correctly rounded neighboring BF16
    # values. Require the strict 1e-3 criterion everywhere it is representable,
    # and allow only an adjacent BF16 value where quantization is coarser.
    assert actual.dtype == expected.dtype == torch.bfloat16
    strict_close = torch.isclose(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)
    negative_infinity = torch.full_like(expected, -float("inf"))
    positive_infinity = torch.full_like(expected, float("inf"))
    lower = torch.nextafter(expected, negative_infinity)
    upper = torch.nextafter(expected, positive_infinity)
    adjacent = (actual >= lower) & (actual <= upper)
    outside = ~(strict_close | adjacent)
    assert not bool(outside.any()), f"{int(outside.sum())} BF16 values exceed strict/one-ULP bounds"


@requires_native_attention
def test_all_precompiled_attention_artifacts_are_installed() -> None:
    assert len(FORWARD_CASES) == 484
    for mode, config, mask_dtype, semantics, output_dtype, workload_shape in FORWARD_CASES:
        kernel_id = attention_forward_kernel_id(
            mode=mode,
            mask_dtype=mask_dtype,
            semantics=semantics,
            output_dtype=output_dtype,
            head_dim=64,
            value_dim=64,
            config=config,
            workload_shape=workload_shape,
        )
        assert precompiled_attention_forward_available(kernel_id)
    for decode_splits in ATTENTION_PRECOMPILED_DECODE_SPLITS:
        for output_dtype in ATTENTION_OUTPUT_DTYPES:
            kernel_id = attention_reduce_kernel_id(
                output_dtype=output_dtype,
                value_dim=64,
                decode_splits=decode_splits,
            )
            assert precompiled_attention_reduce_available(kernel_id)


@requires_native_attention
@pytest.mark.parametrize(
    ("mode", "config", "mask_dtype", "artifact_semantics", "output_dtype", "workload_shape"),
    FORWARD_CASES,
    ids=[_case_id(case) for case in FORWARD_CASES],
)
def test_every_precompiled_attention_forward_has_strict_numerics(
    mode,
    config,
    mask_dtype,
    artifact_semantics,
    output_dtype,
    workload_shape,
) -> None:
    split_decode = config.decode_splits > 1
    if workload_shape is not None:
        query_heads, kv_heads, query_length, key_length = workload_shape
    else:
        query_heads, kv_heads = 4, 2
        query_length, key_length = (1, 130) if split_decode else (17, 29)
    query_offset = key_length - query_length if split_decode else 2
    logical = _logical_inputs(
        query_length=query_length,
        key_length=key_length,
        seed=301 + config.block_m + config.block_n + config.decode_splits,
        query_heads=query_heads,
        kv_heads=kv_heads,
    )
    query, key, value, operand_kwargs = _operands(mode, *logical)
    if artifact_semantics is None:
        semantic_index = tuple(ATTENTION_PRECOMPILED_CONFIGS).index(mode) + config.block_m + config.block_n
        allowed_semantics = (
            ATTENTION_SEMANTICS
            if mask_dtype == ATTENTION_MASK_NONE
            else (ATTENTION_SEMANTICS_FULL, ATTENTION_SEMANTICS_LOCAL)
        )
        semantics = allowed_semantics[semantic_index % len(allowed_semantics)]
    else:
        semantics = artifact_semantics
    mask_kwargs = _mask_kwargs(
        mask_dtype,
        semantics,
        query_length=query_length,
        key_length=key_length,
        query_position_offset=query_offset,
    )
    dtype = torch.bfloat16 if output_dtype == ATTENTION_OUTPUT_BF16 else torch.float32
    workspace = None
    if split_decode:
        workspace = torch.empty(
            (1, query_heads, config.decode_splits, 66),
            device="cuda",
            dtype=torch.float32,
        )

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        config=config,
        workspace=workspace,
        output_dtype=dtype,
        use_precompiled=True,
        **operand_kwargs,
        **mask_kwargs,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=dtype,
        **operand_kwargs,
        **mask_kwargs,
    )

    _assert_native_numerics(actual, expected)


@requires_native_attention
@pytest.mark.parametrize(("mode", "mask_dtype", "semantics"), SEMANTIC_CASES)
def test_precompiled_attention_all_runtime_semantics(mode, mask_dtype, semantics) -> None:
    config = _config(next(values for values in ATTENTION_PRECOMPILED_CONFIGS[mode] if values[-1] == 1))
    logical = _logical_inputs(query_length=19, key_length=29, seed=383)
    query, key, value, operand_kwargs = _operands(mode, *logical)
    mask_kwargs = _mask_kwargs(
        mask_dtype,
        semantics,
        query_length=19,
        key_length=29,
        query_position_offset=3,
    )

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        config=config,
        output_dtype=torch.float32,
        use_precompiled=True,
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


@requires_native_attention
@pytest.mark.parametrize("mode", tuple(ATTENTION_PRECOMPILED_CONFIGS))
def test_precompiled_attention_dense_numerics(mode) -> None:
    config = _config(next(values for values in ATTENTION_PRECOMPILED_CONFIGS[mode] if values[-1] == 1))
    logical = _logical_inputs(query_length=16, key_length=16, seed=409)
    query, key, value, kwargs = _operands(mode, *logical)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        config=config,
        output_dtype=torch.float32,
        use_precompiled=True,
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


@requires_native_attention
def test_attention_auto_dispatch_does_not_require_triton(monkeypatch) -> None:
    import amd_strix_halo_kernels.attention as attention_module

    def fail_if_jit_is_loaded():
        raise AssertionError("covered installed attention config attempted Triton JIT")

    monkeypatch.setattr(attention_module, "_triton", fail_if_jit_is_loaded)
    query, key, value = _logical_inputs(query_length=64, key_length=64, seed=431)

    actual = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        output_dtype=torch.float32,
    )
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        enable_gqa=True,
        output_dtype=torch.float32,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_native_attention
def test_attention_autotuner_can_require_precompiled_backend() -> None:
    query, key, value = _logical_inputs(query_length=64, key_length=64, seed=449)
    config = Int4AttentionConfig(block_m=64, block_n=64)

    result = autotune_attention(
        query,
        key,
        value,
        enable_gqa=True,
        candidates=(config,),
        warmup_ms=1,
        rep_ms=1,
        use_precompiled=True,
    )

    assert result.best_config == config
    assert result.best_record.success
    assert result.best_record.metadata["dispatch_preference"] == "precompiled"
    assert result.best_record.max_abs_diff <= STRICT_ATOL


@requires_native_attention
@pytest.mark.parametrize("mode", tuple(ATTENTION_PRECOMPILED_CONFIGS))
def test_precompiled_split_decode_cudagraph_replay(mode) -> None:
    config = _config(next(values for values in ATTENTION_PRECOMPILED_CONFIGS[mode] if values[-1] > 1))
    logical = _logical_inputs(query_length=1, key_length=130, seed=503)
    query, key, value, kwargs = _operands(mode, *logical)
    workspace = torch.empty((1, 4, config.decode_splits, 66), device="cuda", dtype=torch.float32)
    out = torch.empty((1, 4, 1, 64), device="cuda", dtype=torch.float32)
    mask = torch.ones((1, 1, 1, 130), device="cuda", dtype=torch.bool)
    launch_kwargs = dict(
        attn_mask=mask,
        window_size=(63, 0),
        query_position_offset=129,
        config=config,
        workspace=workspace,
        out=out,
        output_dtype=torch.float32,
        use_precompiled=True,
        **kwargs,
    )

    int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = int4_scaled_dot_product_attention(query, key, value, **launch_kwargs)
    mask[..., ::2] = False
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_scaled_dot_product_attention(
        query,
        key,
        value,
        attn_mask=mask,
        window_size=(63, 0),
        query_position_offset=129,
        output_dtype=torch.float32,
        **kwargs,
    )

    assert captured.data_ptr() == out.data_ptr()
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)

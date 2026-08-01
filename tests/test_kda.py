from __future__ import annotations

import math

import pytest


torch = pytest.importorskip("torch")

from amd_strix_halo_kernels.kda import (  # noqa: E402
    KimiDeltaAttentionConfig,
    kimi_delta_attention,
    quantize_kda_int4,
    reference_kimi_delta_attention,
)
from amd_strix_halo_kernels.kda_backward import (  # noqa: E402
    kimi_delta_attention_backward,
    reference_kimi_delta_attention_backward,
)
from amd_strix_halo_kernels.quant import unpack_int4_k_major  # noqa: E402


pytestmark = pytest.mark.skipif(
    not torch.cuda.is_available(),
    reason="KDA kernels require a CUDA/HIP device",
)


def _inputs(
    *,
    batch: int = 1,
    sequence: int = 5,
    heads: int = 2,
    head_dim: int = 16,
    value_dim: int = 8,
    zero_rows: bool = True,
) -> tuple[torch.Tensor, ...]:
    generator = torch.Generator(device="cuda").manual_seed(20260801)
    shape_qk = (batch, sequence, heads, head_dim)
    shape_v = (batch, sequence, heads, value_dim)
    query = torch.randn(shape_qk, device="cuda", dtype=torch.bfloat16, generator=generator)
    key = torch.randn(shape_qk, device="cuda", dtype=torch.bfloat16, generator=generator)
    value = torch.randn(shape_v, device="cuda", dtype=torch.bfloat16, generator=generator)
    if zero_rows:
        # Exercise the zero-norm normalization path without introducing NaNs.
        query[:, 0, 0].zero_()
        key[:, -1, -1].zero_()
    log_decay = -torch.rand(shape_qk, device="cuda", dtype=torch.float32, generator=generator)
    beta = torch.rand(
        (batch, sequence, heads),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    initial_state = torch.randn(
        (batch, heads, head_dim, value_dim),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    return query, key, value, log_decay, beta, initial_state


def _maybe_quantize(
    tensor: torch.Tensor,
    enabled: bool,
) -> tuple[torch.Tensor, torch.Tensor | None, int | None]:
    if not enabled:
        return tensor, None, None
    packed, scale, logical_dim = quantize_kda_int4(tensor)
    return packed, scale, logical_dim


def test_kda_config_rejects_invalid_values() -> None:
    with pytest.raises(ValueError, match="power of two"):
        KimiDeltaAttentionConfig(value_block=3)
    with pytest.raises(TypeError, match="positive Python int"):
        KimiDeltaAttentionConfig(checkpoint_interval=True)
    with pytest.raises(ValueError, match="must not exceed 64"):
        KimiDeltaAttentionConfig(value_block=128)


def test_quantize_kda_int4_round_trip_layout() -> None:
    (query, _, _, _, _, _) = _inputs(head_dim=19)
    packed, scale, logical_dim = quantize_kda_int4(query)
    assert packed.shape == (*query.shape[:-1], 16)
    assert scale.shape == query.shape[:-1]
    assert logical_dim == 19
    dequantized = unpack_int4_k_major(packed)[..., :logical_dim].float()
    dequantized *= scale.float()[..., None]
    error = (dequantized - query.float()).abs()
    assert error.max().item() <= scale.float().max().item() / 2 + 1.0e-3


@pytest.mark.parametrize(
    ("qk_int4", "value_int4"),
    [(False, False), (True, False), (False, True), (True, True)],
)
@pytest.mark.parametrize("output_dtype", [torch.bfloat16, torch.float32])
def test_kda_forward_matches_fp32_oracle(
    qk_int4: bool,
    value_int4: bool,
    output_dtype: torch.dtype,
) -> None:
    query, key, value, log_decay, beta, initial_state = _inputs()
    query_arg, query_scale, head_dim = _maybe_quantize(query, qk_int4)
    key_arg, key_scale, _ = _maybe_quantize(key, qk_int4)
    value_arg, value_scale, value_dim = _maybe_quantize(value, value_int4)
    kwargs = dict(
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        value_dim=value_dim,
        scale=1.0 / math.sqrt(query.shape[-1]),
        initial_state=initial_state,
        output_final_state=True,
        output_dtype=output_dtype,
    )
    actual, actual_final = kimi_delta_attention(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        **kwargs,
    )
    expected, expected_final = reference_kimi_delta_attention(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        **{name: value for name, value in kwargs.items() if name != "output_final_state"},
    )
    torch.testing.assert_close(actual, expected, atol=1.0e-3, rtol=1.0e-3)
    torch.testing.assert_close(actual_final, expected_final, atol=1.0e-3, rtol=1.0e-3)


def test_kda_forward_writes_checkpoint_cache_and_handles_tail() -> None:
    query, key, value, log_decay, beta, initial_state = _inputs(sequence=17)
    config = KimiDeltaAttentionConfig(value_block=8, checkpoint_interval=8)
    checkpoints = math.ceil(query.shape[1] / config.checkpoint_interval) + 1
    cache = torch.empty(
        (query.shape[0], query.shape[2], checkpoints, query.shape[3], value.shape[3]),
        device="cuda",
        dtype=torch.float32,
    )
    actual, actual_final = kimi_delta_attention(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
        output_final_state=True,
        state_cache=cache,
        config=config,
    )
    expected, expected_final = reference_kimi_delta_attention(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
    )
    torch.testing.assert_close(actual, expected, atol=1.0e-3, rtol=1.0e-3)
    torch.testing.assert_close(actual_final, expected_final, atol=1.0e-3, rtol=1.0e-3)
    torch.testing.assert_close(cache[:, :, 0], initial_state, atol=0.0, rtol=0.0)
    torch.testing.assert_close(cache[:, :, -1], expected_final, atol=1.0e-3, rtol=1.0e-3)


def test_kda_rejects_missing_int4_scales_and_overlapping_output() -> None:
    query, key, value, log_decay, beta, _ = _inputs()
    packed_query, _, head_dim = quantize_kda_int4(query)
    packed_key, key_scale, _ = quantize_kda_int4(key)
    with pytest.raises(TypeError, match="query_scale"):
        kimi_delta_attention(
            packed_query,
            packed_key,
            value,
            log_decay,
            beta,
            key_scale=key_scale,
            head_dim=head_dim,
        )
    with pytest.raises(ValueError, match="must not share storage"):
        kimi_delta_attention(
            query,
            key,
            value,
            log_decay,
            beta,
            out=value,
        )


def test_kda_rejects_implicit_autograd_and_invalid_chunk_contract() -> None:
    query, key, value, log_decay, beta, _ = _inputs()
    query.requires_grad_(True)
    with pytest.raises(ValueError, match="does not register autograd"):
        kimi_delta_attention(query, key, value, log_decay, beta)
    query.requires_grad_(False)
    with pytest.raises(ValueError, match="requires BF16 output"):
        kimi_delta_attention(
            query,
            key,
            value,
            log_decay,
            beta,
            output_dtype=torch.float32,
            config=KimiDeltaAttentionConfig(chunked=True),
        )


@pytest.mark.parametrize(
    ("qk_int4", "value_int4"),
    [(False, False), (True, False), (False, True), (True, True)],
)
def test_kda_backward_matches_autograd_oracle(
    qk_int4: bool,
    value_int4: bool,
) -> None:
    query, key, value, log_decay, beta, initial_state = _inputs(zero_rows=False)
    query_arg, query_scale, head_dim = _maybe_quantize(query, qk_int4)
    key_arg, key_scale, _ = _maybe_quantize(key, qk_int4)
    value_arg, value_scale, value_dim = _maybe_quantize(value, value_int4)
    generator = torch.Generator(device="cuda").manual_seed(7)
    grad_output = torch.randn(
        value.shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    grad_final_state = torch.randn(
        initial_state.shape,
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    kwargs = dict(
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        value_dim=value_dim,
        scale=1.0 / math.sqrt(query.shape[-1]),
        initial_state=initial_state,
        grad_final_state=grad_final_state,
        config=KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=4),
    )
    actual = kimi_delta_attention_backward(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        grad_output,
        **kwargs,
    )
    expected = reference_kimi_delta_attention_backward(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        grad_output,
        **{name: value for name, value in kwargs.items() if name != "config"},
    )
    for actual_grad, expected_grad in zip(actual, expected, strict=True):
        assert actual_grad is not None
        assert expected_grad is not None
        torch.testing.assert_close(
            actual_grad,
            expected_grad,
            atol=1.0e-3,
            rtol=1.0e-3,
        )


def test_kda_backward_without_initial_state_returns_no_initial_gradient() -> None:
    query, key, value, log_decay, beta, _ = _inputs(
        sequence=3,
        heads=1,
        zero_rows=False,
    )
    grad_output = torch.ones_like(value)
    actual = kimi_delta_attention_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        config=KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=2),
    )
    expected = reference_kimi_delta_attention_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
    )
    assert actual[-1] is None
    assert expected[-1] is None
    for actual_grad, expected_grad in zip(actual[:-1], expected[:-1], strict=True):
        torch.testing.assert_close(
            actual_grad,
            expected_grad,
            atol=1.0e-3,
            rtol=1.0e-3,
        )


def test_kda_backward_handles_zero_norms_and_bf16_gates() -> None:
    query, key, value, log_decay, beta, initial_state = _inputs(
        sequence=3,
        heads=1,
    )
    log_decay = log_decay.bfloat16()
    beta = beta.bfloat16()
    grad_output = torch.randn_like(value)
    config = KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=2)
    actual = kimi_delta_attention_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        initial_state=initial_state,
        config=config,
    )
    expected = reference_kimi_delta_attention_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        initial_state=initial_state,
    )
    for actual_grad, expected_grad in zip(actual, expected, strict=True):
        assert actual_grad is not None
        assert expected_grad is not None
        torch.testing.assert_close(
            actual_grad,
            expected_grad,
            atol=1.0e-3,
            rtol=1.0e-3,
        )


def test_kda_empty_sequence_preserves_state_and_has_exact_gradients() -> None:
    query, key, value, log_decay, beta, initial_state = _inputs(
        sequence=0,
        zero_rows=False,
    )
    config = KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=2)
    cache = torch.empty(
        (query.shape[0], query.shape[2], 1, query.shape[3], value.shape[3]),
        device="cuda",
        dtype=torch.float32,
    )
    output, final_state = kimi_delta_attention(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
        output_final_state=True,
        state_cache=cache,
        config=config,
    )
    assert output.shape == value.shape
    torch.testing.assert_close(final_state, initial_state, atol=0.0, rtol=0.0)
    torch.testing.assert_close(cache[:, :, 0], initial_state, atol=0.0, rtol=0.0)

    grad_final_state = torch.randn_like(initial_state)
    gradients = kimi_delta_attention_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        torch.empty_like(value),
        initial_state=initial_state,
        grad_final_state=grad_final_state,
        state_cache=cache,
        config=config,
    )
    for gradient in gradients[:-1]:
        assert gradient is not None
        assert gradient.numel() == 0
    torch.testing.assert_close(
        gradients[-1],
        grad_final_state,
        atol=0.0,
        rtol=0.0,
    )


def test_kda_opt_in_chunk_forward_matches_oracle() -> None:
    query, key, value, log_decay, beta, _ = _inputs(
        sequence=17,
        heads=1,
        value_dim=16,
    )
    config = KimiDeltaAttentionConfig(
        value_block=8,
        checkpoint_interval=16,
        chunked=True,
    )
    actual, _ = kimi_delta_attention(
        query,
        key,
        value,
        log_decay,
        beta,
        config=config,
    )
    expected, _ = reference_kimi_delta_attention(
        query,
        key,
        value,
        log_decay,
        beta,
    )
    torch.testing.assert_close(actual, expected, atol=1.0e-3, rtol=1.0e-3)


@pytest.mark.parametrize(
    ("qk_int4", "value_int4"),
    [(False, False), (True, False), (False, True), (True, True)],
)
def test_kda_forward_backward_cudagraph_replay_matches_oracle(
    qk_int4: bool,
    value_int4: bool,
) -> None:
    query, key, value, log_decay, beta, _ = _inputs(
        sequence=5,
        heads=1,
        zero_rows=False,
    )
    query_arg, query_scale, head_dim = _maybe_quantize(query, qk_int4)
    key_arg, key_scale, _ = _maybe_quantize(key, qk_int4)
    value_arg, value_scale, value_dim = _maybe_quantize(value, value_int4)
    representation_kwargs = {
        "query_scale": query_scale,
        "key_scale": key_scale,
        "value_scale": value_scale,
        "head_dim": head_dim,
        "value_dim": value_dim,
    }
    config = KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=4)
    qk_shape = tuple(query.shape)
    output_shape = tuple(value.shape)
    cache = torch.empty(
        (
            query.shape[0],
            query.shape[2],
            math.ceil(query.shape[1] / config.checkpoint_interval) + 1,
            query.shape[3],
            value.shape[3],
        ),
        device="cuda",
        dtype=torch.float32,
    )
    out = torch.empty(output_shape, device="cuda", dtype=torch.bfloat16)
    grad_output = torch.randn_like(value)
    buffers = {
        "grad_query": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
        "grad_key": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
        "grad_value": torch.empty(output_shape, device="cuda", dtype=torch.float32),
        "grad_log_decay": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
        "grad_beta": torch.empty(beta.shape, device="cuda", dtype=torch.float32),
        "grad_query_normalized": torch.empty(
            qk_shape,
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_key_normalized": torch.empty(
            qk_shape,
            device="cuda",
            dtype=torch.float32,
        ),
    }

    def launch() -> tuple[torch.Tensor, ...]:
        kimi_delta_attention(
            query_arg,
            key_arg,
            value_arg,
            log_decay,
            beta,
            out=out,
            state_cache=cache,
            config=config,
            **representation_kwargs,
        )
        return kimi_delta_attention_backward(
            query_arg,
            key_arg,
            value_arg,
            log_decay,
            beta,
            grad_output,
            state_cache=cache,
            config=config,
            **buffers,
            **representation_kwargs,
        )

    launch()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured_grads = launch()
    graph.replay()
    torch.cuda.synchronize()

    expected_output, _ = reference_kimi_delta_attention(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        **representation_kwargs,
    )
    expected_grads = reference_kimi_delta_attention_backward(
        query_arg,
        key_arg,
        value_arg,
        log_decay,
        beta,
        grad_output,
        **representation_kwargs,
    )
    torch.testing.assert_close(out, expected_output, atol=1.0e-3, rtol=1.0e-3)
    for actual_grad, expected_grad in zip(
        captured_grads[:-1],
        expected_grads[:-1],
        strict=True,
    ):
        torch.testing.assert_close(
            actual_grad,
            expected_grad,
            atol=1.0e-3,
            rtol=1.0e-3,
        )

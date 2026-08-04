from __future__ import annotations

import math
import os
from pathlib import Path

import pytest


torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import (  # noqa: E402
    KimiDeltaAttentionConfig,
    QwenGatedDeltaNetShape,
    quantize_kda_int4,
    qwen_gated_delta_net,
    qwen_gated_delta_net_backward,
    reference_qwen_gated_delta_net,
    reference_qwen_gated_delta_net_backward,
)


pytestmark = pytest.mark.skipif(
    not torch.cuda.is_available(),
    reason="Qwen Gated DeltaNet kernels require a CUDA/HIP device",
)

STRICT_ATOL = 1.0e-3
STRICT_RTOL = 1.0e-3
NATIVE_ROOT = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
requires_native_gdn = pytest.mark.skipif(
    NATIVE_ROOT is None
    or not (Path(NATIVE_ROOT) / "libamd_strix_halo_kernels_dispatch.so").exists(),
    reason="built Qwen Gated DeltaNet HSACO profiles are required",
)


def _inputs(
    *,
    batch: int = 1,
    sequence: int = 7,
    query_key_heads: int = 2,
    value_heads: int = 6,
    head_dim: int = 16,
    value_dim: int = 16,
    seed: int = 20260802,
) -> tuple[torch.Tensor, ...]:
    generator = torch.Generator(device="cuda").manual_seed(seed)
    query = torch.randn(
        (batch, sequence, query_key_heads, head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    key = torch.randn(
        (batch, sequence, query_key_heads, head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    value = torch.randn(
        (batch, sequence, value_heads, value_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    # Official Qwen produces these already-activated scalar gates as
    # g=-exp(A_log)*softplus(a+dt_bias) and beta=sigmoid(b).
    log_decay = -torch.rand(
        (batch, sequence, value_heads),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    ).mul_(0.05)
    beta = torch.rand(
        (batch, sequence, value_heads),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    initial_state = torch.randn(
        (batch, value_heads, head_dim, value_dim),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    ).mul_(0.05)
    return query, key, value, log_decay, beta, initial_state


def _official_recurrent_oracle(
    query: torch.Tensor,
    key: torch.Tensor,
    value: torch.Tensor,
    log_decay: torch.Tensor,
    beta: torch.Tensor,
    *,
    initial_state: torch.Tensor | None = None,
) -> tuple[torch.Tensor, torch.Tensor]:
    group_size = value.shape[2] // query.shape[2]
    query = torch.nn.functional.normalize(query.float(), p=2, dim=-1)
    key = torch.nn.functional.normalize(key.float(), p=2, dim=-1)
    query = query.repeat_interleave(group_size, dim=2) / math.sqrt(query.shape[-1])
    key = key.repeat_interleave(group_size, dim=2)
    value = value.float()
    state = torch.zeros(
        (query.shape[0], query.shape[2], query.shape[-1], value.shape[-1]),
        device=query.device,
        dtype=torch.float32,
    )
    if initial_state is not None:
        state = state + initial_state.float()
    outputs = []
    for token in range(query.shape[1]):
        q_t = query[:, token]
        k_t = key[:, token]
        v_t = value[:, token]
        state = state * log_decay[:, token].float().exp()[..., None, None]
        prediction = torch.einsum("bhd,bhdv->bhv", k_t, state)
        delta = (v_t - prediction) * beta[:, token].float()[..., None]
        state = state + torch.einsum("bhd,bhv->bhdv", k_t, delta)
        outputs.append(torch.einsum("bhd,bhdv->bhv", q_t, state))
    return torch.stack(outputs, dim=1), state


def _representation(
    inputs: tuple[torch.Tensor, ...],
    *,
    qk_int4: bool,
    value_int4: bool,
) -> tuple[tuple[torch.Tensor, ...], dict[str, object]]:
    query, key, value, log_decay, beta, initial_state = inputs
    kwargs: dict[str, object] = {}
    if qk_int4:
        query, query_scale, head_dim = quantize_kda_int4(query)
        key, key_scale, _ = quantize_kda_int4(key)
        kwargs.update(query_scale=query_scale, key_scale=key_scale, head_dim=head_dim)
    if value_int4:
        value, value_scale, value_dim = quantize_kda_int4(value)
        kwargs.update(value_scale=value_scale, value_dim=value_dim)
    return (query, key, value, log_decay, beta, initial_state), kwargs


def test_qwen36_production_shape_contract() -> None:
    shape = QwenGatedDeltaNetShape()

    assert (
        shape.batch,
        shape.sequence,
        shape.query_key_heads,
        shape.value_heads,
        shape.head_dim,
        shape.value_dim,
        shape.head_group_size,
    ) == (7, 2048, 16, 48, 128, 128, 3)
    with pytest.raises(ValueError, match="divisible"):
        QwenGatedDeltaNetShape(query_key_heads=16, value_heads=47)
    with pytest.raises(TypeError, match="batch"):
        QwenGatedDeltaNetShape(batch=True)


def test_reference_matches_official_qwen_scalar_decay_recurrence() -> None:
    query, key, value, log_decay, beta, initial_state = _inputs()

    actual, actual_final = reference_qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
        output_dtype=torch.float32,
    )
    expected, expected_final = _official_recurrent_oracle(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
    )

    torch.testing.assert_close(actual, expected, rtol=1.0e-6, atol=1.0e-6)
    torch.testing.assert_close(actual_final, expected_final, rtol=1.0e-6, atol=1.0e-6)


@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("value_int4", [False, True], ids=["bf16-v", "int4-v"])
def test_optimized_forward_matches_representation_oracle(qk_int4: bool, value_int4: bool) -> None:
    pytest.importorskip("triton")
    represented, kwargs = _representation(
        _inputs(),
        qk_int4=qk_int4,
        value_int4=value_int4,
    )
    query, key, value, log_decay, beta, initial_state = represented
    config = KimiDeltaAttentionConfig(
        value_block=8,
        backward_value_block=4,
        checkpoint_interval=4,
    )

    actual, actual_final = qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
        output_final_state=True,
        output_dtype=torch.float32,
        config=config,
        **kwargs,
    )
    expected, expected_final = reference_qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        initial_state=initial_state,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)
    torch.testing.assert_close(actual_final, expected_final, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("value_int4", [False, True], ids=["bf16-v", "int4-v"])
def test_optimized_backward_matches_representation_oracle(qk_int4: bool, value_int4: bool) -> None:
    pytest.importorskip("triton")
    represented, kwargs = _representation(
        _inputs(sequence=5, seed=20260803),
        qk_int4=qk_int4,
        value_int4=value_int4,
    )
    query, key, value, log_decay, beta, initial_state = represented
    generator = torch.Generator(device="cuda").manual_seed(19)
    grad_output = torch.randn(
        (1, 5, 6, 16),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    grad_final = torch.randn(
        (1, 6, 16, 16),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    config = KimiDeltaAttentionConfig(
        value_block=8,
        backward_value_block=4,
        checkpoint_interval=4,
    )

    actual = qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        initial_state=initial_state,
        grad_final_state=grad_final,
        config=config,
        **kwargs,
    )
    expected = reference_qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        initial_state=initial_state,
        grad_final_state=grad_final,
        **kwargs,
    )

    for candidate, reference in zip(actual, expected, strict=True):
        assert candidate is not None and reference is not None
        torch.testing.assert_close(candidate, reference, rtol=STRICT_RTOL, atol=STRICT_ATOL)


def test_rejects_non_integral_qk_to_value_head_group() -> None:
    query, key, _, log_decay, beta, _ = _inputs(value_heads=6)
    value = torch.empty((1, 7, 5, 16), device="cuda", dtype=torch.bfloat16)
    with pytest.raises(ValueError, match="divisible"):
        qwen_gated_delta_net(
            query,
            key,
            value,
            log_decay[..., :5].contiguous(),
            beta[..., :5].contiguous(),
        )


def test_rejects_aliased_expansion_workspaces_but_allows_aliased_inputs() -> None:
    query, _, value, log_decay, beta, _ = _inputs(
        sequence=5,
        query_key_heads=1,
        value_heads=1,
    )
    with pytest.raises(ValueError, match="query_workspace must not share storage with query"):
        qwen_gated_delta_net(
            query,
            query,
            value,
            log_decay,
            beta,
            query_workspace=query,
        )

    actual, _ = qwen_gated_delta_net(query, query, value, log_decay, beta)
    expected, _ = reference_qwen_gated_delta_net(query, query, value, log_decay, beta)
    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


def test_rejects_gluon_cache_requiring_more_than_two_descriptor_pages(monkeypatch) -> None:
    import amd_strix_halo_kernels.gated_delta_net as gdn_module

    query, key, value, log_decay, beta, _ = _inputs(
        sequence=5,
        query_key_heads=1,
        value_heads=3,
    )
    # Force the small fixture to exercise the same page-count boundary as the
    # Qwen B7/H48/CI4 production workload without allocating production memory.
    cache_span = (math.ceil(5 / 4) + 1) * 16 * 16
    monkeypatch.setattr(gdn_module, "_RDNA_BUFFER_DESCRIPTOR_ELEMENTS", cache_span + 1)

    with pytest.raises(ValueError, match="two RDNA 3.5"):
        qwen_gated_delta_net_backward(
            query,
            key,
            value,
            log_decay,
            beta,
            torch.randn_like(value),
            backend="gluon",
            config=KimiDeltaAttentionConfig(checkpoint_interval=4),
        )


@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("value_int4", [False, True], ids=["bf16-v", "int4-v"])
def test_forward_cudagraph_replay_matches_oracle(qk_int4: bool, value_int4: bool) -> None:
    pytest.importorskip("triton")
    represented, kwargs = _representation(
        _inputs(sequence=5, query_key_heads=1, value_heads=3, seed=20260807),
        qk_int4=qk_int4,
        value_int4=value_int4,
    )
    query, key, value, log_decay, beta, _ = represented
    head_dim = int(kwargs.get("head_dim", 16))
    config = KimiDeltaAttentionConfig(value_block=8, checkpoint_interval=4)
    checkpoints = math.ceil(5 / config.checkpoint_interval) + 1
    out = torch.empty((1, 5, 3, 16), device="cuda", dtype=torch.bfloat16)
    state_cache = torch.empty(
        (1, 3, checkpoints, 16, 16),
        device="cuda",
        dtype=torch.float32,
    )
    workspaces: dict[str, torch.Tensor] = {
        "query_workspace": torch.empty(
            (1, 5, 3, query.shape[-1]), device="cuda", dtype=query.dtype
        ),
        "key_workspace": torch.empty(
            (1, 5, 3, key.shape[-1]), device="cuda", dtype=key.dtype
        ),
        "log_decay_workspace": torch.empty(
            (1, 5, 3, head_dim), device="cuda", dtype=log_decay.dtype
        ),
    }
    if qk_int4:
        workspaces["query_scale_workspace"] = torch.empty(
            (1, 5, 3), device="cuda", dtype=torch.bfloat16
        )
        workspaces["key_scale_workspace"] = torch.empty(
            (1, 5, 3), device="cuda", dtype=torch.bfloat16
        )

    def launch() -> torch.Tensor:
        result, _ = qwen_gated_delta_net(
            query,
            key,
            value,
            log_decay,
            beta,
            out=out,
            state_cache=state_cache,
            config=config,
            **workspaces,
            **kwargs,
        )
        return result

    launch()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = launch()
    graph.replay()
    torch.cuda.synchronize()
    expected, _ = reference_qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        **kwargs,
    )

    assert captured.data_ptr() == out.data_ptr()
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


def test_forward_backward_cudagraph_replay_matches_oracle() -> None:
    pytest.importorskip("triton")
    query, key, value, log_decay, beta, _ = _inputs(
        sequence=5,
        query_key_heads=1,
        value_heads=3,
        seed=20260808,
    )
    config = KimiDeltaAttentionConfig(
        value_block=8,
        backward_value_block=4,
        checkpoint_interval=4,
    )
    checkpoints = math.ceil(5 / config.checkpoint_interval) + 1
    qk_expanded_shape = (1, 5, 3, 16)
    out = torch.empty((1, 5, 3, 16), device="cuda", dtype=torch.bfloat16)
    grad_output = torch.randn_like(out)
    state_cache = torch.empty(
        (1, 3, checkpoints, 16, 16),
        device="cuda",
        dtype=torch.float32,
    )
    expansion = {
        "query_workspace": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.bfloat16),
        "key_workspace": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.bfloat16),
        "log_decay_workspace": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
    }
    gradients = {
        "grad_query_expanded": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
        "grad_key_expanded": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
        "grad_log_decay_expanded": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
        "grad_query": torch.empty((1, 5, 1, 16), device="cuda", dtype=torch.float32),
        "grad_key": torch.empty((1, 5, 1, 16), device="cuda", dtype=torch.float32),
        "grad_value": torch.empty_like(value, dtype=torch.float32),
        "grad_log_decay": torch.empty_like(log_decay, dtype=torch.float32),
        "grad_beta": torch.empty_like(beta, dtype=torch.float32),
        "grad_query_normalized": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
        "grad_key_normalized": torch.empty(qk_expanded_shape, device="cuda", dtype=torch.float32),
    }

    def launch() -> tuple[torch.Tensor, ...]:
        qwen_gated_delta_net(
            query,
            key,
            value,
            log_decay,
            beta,
            out=out,
            state_cache=state_cache,
            config=config,
            **expansion,
        )
        result = qwen_gated_delta_net_backward(
            query,
            key,
            value,
            log_decay,
            beta,
            grad_output,
            state_cache=state_cache,
            config=config,
            **expansion,
            **gradients,
        )
        return result[:-1]

    launch()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = launch()
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
    )
    for candidate, reference in zip(captured, expected[:-1], strict=True):
        torch.testing.assert_close(candidate, reference, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@requires_native_gdn
@pytest.mark.parametrize("qk_int4", [False, True], ids=["bf16-qk", "int4-qk"])
@pytest.mark.parametrize("value_int4", [False, True], ids=["bf16-v", "int4-v"])
def test_precompiled_ci8_forward_backward_strict_numerics(
    qk_int4: bool,
    value_int4: bool,
) -> None:
    represented, kwargs = _representation(
        _inputs(
            sequence=5,
            query_key_heads=1,
            value_heads=3,
            head_dim=128,
            value_dim=128,
            seed=20260814,
        ),
        qk_int4=qk_int4,
        value_int4=value_int4,
    )
    query, key, value, log_decay, beta, _ = represented
    config = KimiDeltaAttentionConfig(checkpoint_interval=8)
    state_cache = torch.empty(
        (1, 3, 2, 128, 128),
        device="cuda",
        dtype=torch.float32,
    )
    actual, _ = qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        state_cache=state_cache,
        config=config,
        backend="gluon",
        use_precompiled=True,
        **kwargs,
    )
    expected, _ = reference_qwen_gated_delta_net(
        query,
        key,
        value,
        log_decay,
        beta,
        **kwargs,
    )
    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)

    grad_output = torch.randn_like(actual)
    actual_gradients = qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        state_cache=state_cache,
        config=config,
        backend="gluon",
        use_precompiled=True,
        **kwargs,
    )
    expected_gradients = reference_qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        **kwargs,
    )
    for candidate, reference in zip(
        actual_gradients[:-1],
        expected_gradients[:-1],
        strict=True,
    ):
        torch.testing.assert_close(
            candidate,
            reference,
            rtol=STRICT_RTOL,
            atol=STRICT_ATOL,
        )

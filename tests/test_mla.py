from __future__ import annotations

import os
from pathlib import Path

import pytest


torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import (  # noqa: E402
    Int4AttentionBackwardConfig,
    Int4AttentionConfig,
    MultiHeadLatentAttentionShape,
    multi_head_latent_attention,
    multi_head_latent_attention_backward,
    reference_multi_head_latent_attention,
    reference_multi_head_latent_attention_backward,
)


pytestmark = pytest.mark.skipif(
    not torch.cuda.is_available(),
    reason="MLA kernels require a CUDA/HIP device",
)

STRICT_ATOL = 1.0e-3
STRICT_RTOL = 1.0e-3
NATIVE_ROOT = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
requires_native_mla = pytest.mark.skipif(
    NATIVE_ROOT is None
    or not (Path(NATIVE_ROOT) / "libamd_strix_halo_kernels_dispatch.so").exists(),
    reason="built MLA attention HSACO profiles are required",
)


def _inputs(
    *,
    batch: int = 1,
    query_length: int = 7,
    key_length: int = 9,
    heads: int = 2,
    latent_dim: int = 16,
    qk_nope_dim: int = 8,
    qk_rope_dim: int = 8,
    value_dim: int = 8,
    seed: int = 20260804,
) -> tuple[torch.Tensor, ...]:
    generator = torch.Generator(device="cuda").manual_seed(seed)

    def randn(shape: tuple[int, ...], *, scale: float = 0.2) -> torch.Tensor:
        return torch.randn(
            shape,
            device="cuda",
            dtype=torch.bfloat16,
            generator=generator,
        ).mul_(scale)

    return (
        randn((batch, heads, query_length, qk_nope_dim)),
        randn((batch, heads, query_length, qk_rope_dim)),
        randn((batch, key_length, latent_dim)),
        randn((batch, key_length, qk_rope_dim)),
        # DeepSeek-family MLA projection weights use initializer_range=0.02.
        randn((heads, qk_nope_dim + value_dim, latent_dim), scale=0.02),
    )


def _expanded(inputs: tuple[torch.Tensor, ...]) -> tuple[torch.Tensor, ...]:
    query_nope, query_rope, compressed_kv, key_rope, kv_up_weight = inputs
    qk_nope_dim = query_nope.shape[-1]
    expanded = torch.matmul(
        compressed_kv[:, None],
        kv_up_weight[None].transpose(-1, -2),
    )
    query = torch.cat((query_nope, query_rope), dim=-1)
    key = torch.cat(
        (
            expanded[..., :qk_nope_dim],
            key_rope[:, None].expand(-1, query.shape[1], -1, -1),
        ),
        dim=-1,
    )
    value = expanded[..., qk_nope_dim:]
    return query, key, value


def _kwargs(case: str, inputs: tuple[torch.Tensor, ...]) -> dict[str, object]:
    query_length = inputs[0].shape[2]
    key_length = inputs[2].shape[1]
    if case == "causal":
        return {"is_causal": True}
    if case == "local":
        return {"window_size": (3, 1)}
    if case == "bool-mask":
        positions = torch.arange(query_length * key_length, device="cuda")
        mask = (positions.reshape(1, 1, query_length, key_length) % 4) != 0
        mask[..., 0] = True
        return {"attn_mask": mask}
    if case == "additive-mask":
        mask = torch.linspace(
            -0.5,
            0.0,
            key_length,
            device="cuda",
            dtype=torch.float32,
        )
        return {"attn_mask": mask}
    return {}


def test_mla_production_shape_contract() -> None:
    shape = MultiHeadLatentAttentionShape()

    assert (
        shape.batch,
        shape.query_length,
        shape.key_length,
        shape.heads,
        shape.latent_dim,
        shape.qk_nope_dim,
        shape.qk_rope_dim,
        shape.value_dim,
        shape.qk_head_dim,
        shape.kv_up_dim,
    ) == (4, 2048, 2048, 128, 512, 128, 64, 128, 192, 256)
    with pytest.raises(TypeError, match="heads"):
        MultiHeadLatentAttentionShape(heads=True)
    with pytest.raises(ValueError, match="latent_dim"):
        MultiHeadLatentAttentionShape(latent_dim=0)


@pytest.mark.parametrize("case", ["dense", "causal", "local", "bool-mask", "additive-mask"])
def test_reference_matches_pytorch_sdpa_composition(case: str) -> None:
    inputs = _inputs()
    kwargs = _kwargs(case, inputs)
    query, key, value = _expanded(inputs)

    actual = reference_multi_head_latent_attention(
        *inputs,
        output_dtype=torch.float32,
        **kwargs,
    )
    torch_kwargs: dict[str, object] = {}
    if case == "causal":
        torch_kwargs["is_causal"] = True
    elif case == "local":
        q_positions = torch.arange(query.shape[2], device="cuda")
        k_positions = torch.arange(key.shape[2], device="cuda")
        torch_kwargs["attn_mask"] = (
            (k_positions[None] >= q_positions[:, None] - 3)
            & (k_positions[None] <= q_positions[:, None] + 1)
        )
    elif "attn_mask" in kwargs:
        torch_kwargs["attn_mask"] = kwargs["attn_mask"]
    expected = torch.nn.functional.scaled_dot_product_attention(
        query.float(),
        key.float(),
        value.float(),
        **torch_kwargs,
    )

    # The package intentionally rounds online-softmax probabilities to BF16
    # before P@V so the reference matches the WMMA kernel arithmetic.
    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize(
    "case",
    ["dense", "causal", "local", "bool-mask", "additive-mask"],
)
def test_optimized_forward_matches_reference(case: str) -> None:
    pytest.importorskip("triton")
    inputs = _inputs(seed=20260805)
    kwargs = _kwargs(case, inputs)
    config = Int4AttentionConfig(block_m=16, block_n=16, num_warps=2)

    actual = multi_head_latent_attention(
        *inputs,
        output_dtype=torch.float32,
        config=config,
        **kwargs,
    )
    expected = reference_multi_head_latent_attention(
        *inputs,
        output_dtype=torch.float32,
        **kwargs,
    )

    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize(
    "case",
    ["dense", "causal", "local", "bool-mask", "additive-mask"],
)
def test_optimized_backward_matches_reference(case: str) -> None:
    pytest.importorskip("triton")
    inputs = _inputs(query_length=5, key_length=7, seed=20260806)
    kwargs = _kwargs(case, inputs)
    forward_config = Int4AttentionConfig(block_m=16, block_n=16, num_warps=2)
    backward_config = Int4AttentionBackwardConfig(
        block_m=16,
        block_n=16,
        num_warps=2,
        dkv_block_m=16,
        dkv_block_n=16,
        dkv_num_warps=2,
    )
    output = multi_head_latent_attention(
        *inputs,
        output_dtype=torch.bfloat16,
        config=forward_config,
        **kwargs,
    )
    generator = torch.Generator(device="cuda").manual_seed(23)
    grad_output = torch.randn(
        output.shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )

    actual = multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        config=backward_config,
        **kwargs,
    )
    expected = reference_multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        **kwargs,
    )

    gradient_names = ("dQ_nope", "dQ_rope", "dCompressedKV", "dK_rope", "dKVUpWeight")
    for name, candidate, reference in zip(gradient_names, actual, expected, strict=True):
        torch.testing.assert_close(
            candidate,
            reference,
            rtol=STRICT_RTOL,
            atol=STRICT_ATOL,
            msg=lambda message, name=name: f"{name}: {message}",
        )


def test_rejects_inconsistent_latent_up_projection() -> None:
    query_nope, query_rope, compressed_kv, key_rope, _ = _inputs()
    bad_weight = torch.empty((3, 16, 16), device="cuda", dtype=torch.bfloat16)

    with pytest.raises(ValueError, match="kv_up_weight"):
        multi_head_latent_attention(
            query_nope,
            query_rope,
            compressed_kv,
            key_rope,
            bad_weight,
        )


def test_rejects_non_bf16_inputs_and_aliased_workspaces() -> None:
    inputs = _inputs(query_length=7, key_length=7)
    query_nope, query_rope, compressed_kv, key_rope, kv_up_weight = inputs
    with pytest.raises(ValueError, match="compressed_kv must be BF16"):
        multi_head_latent_attention(
            query_nope,
            query_rope,
            compressed_kv.float(),
            key_rope,
            kv_up_weight,
        )

    shared = torch.empty((1, 2, 7, 16), device="cuda", dtype=torch.bfloat16)
    with pytest.raises(ValueError, match="query_workspace must not share storage"):
        multi_head_latent_attention(
            *inputs,
            query_workspace=shared,
            key_workspace=shared,
        )


def test_padded_ragged_batch_mask_matches_reference() -> None:
    inputs = _inputs(batch=2, query_length=5, key_length=7, seed=20260817)
    mask = torch.zeros((2, 1, 5, 7), device="cuda", dtype=torch.bool)
    mask[0, :, :, :7] = True
    mask[1, :, :3, :4] = True
    # Padded query rows retain one valid sentinel key so softmax is defined;
    # consumers ignore those output rows according to their sequence lengths.
    mask[1, :, 3:, 0] = True

    actual = multi_head_latent_attention(*inputs, attn_mask=mask)
    expected = reference_multi_head_latent_attention(*inputs, attn_mask=mask)
    torch.testing.assert_close(actual, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


def _forward_workspaces(inputs: tuple[torch.Tensor, ...]) -> dict[str, torch.Tensor]:
    query_nope, query_rope, compressed_kv, _, kv_up_weight = inputs
    batch, heads, query_length, qk_nope_dim = query_nope.shape
    key_length = compressed_kv.shape[1]
    qk_rope_dim = query_rope.shape[-1]
    value_dim = kv_up_weight.shape[1] - qk_nope_dim
    return {
        "query_workspace": torch.empty(
            (batch, heads, query_length, qk_nope_dim + qk_rope_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "key_workspace": torch.empty(
            (batch, heads, key_length, qk_nope_dim + qk_rope_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "value_workspace": torch.empty(
            (batch, heads, key_length, value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "kv_workspace": torch.empty(
            (batch, heads, key_length, qk_nope_dim + value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
    }


def test_forward_cudagraph_replay_matches_reference() -> None:
    pytest.importorskip("triton")
    inputs = _inputs(query_length=5, key_length=7, seed=20260809)
    workspaces = _forward_workspaces(inputs)
    out = torch.empty((1, 2, 5, 8), device="cuda", dtype=torch.float32)
    config = Int4AttentionConfig(block_m=16, block_n=16, num_warps=2)

    def launch() -> torch.Tensor:
        return multi_head_latent_attention(
            *inputs,
            is_causal=True,
            output_dtype=torch.float32,
            out=out,
            config=config,
            **workspaces,
        )

    launch()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = launch()
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_multi_head_latent_attention(
        *inputs,
        is_causal=True,
        output_dtype=torch.float32,
    )

    assert captured.data_ptr() == out.data_ptr()
    torch.testing.assert_close(captured, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


def test_forward_backward_cudagraph_replay_matches_reference() -> None:
    pytest.importorskip("triton")
    inputs = _inputs(query_length=5, key_length=7, seed=20260810)
    query_nope, query_rope, compressed_kv, key_rope, kv_up_weight = inputs
    workspaces = _forward_workspaces(inputs)
    out = torch.empty((1, 2, 5, 8), device="cuda", dtype=torch.bfloat16)
    generator = torch.Generator(device="cuda").manual_seed(20260811)
    # Keep the graph fixture deterministic and in the gradient range observed
    # by the production model instead of relying on an unscaled N(0, 1) draw.
    grad_output = torch.randn(
        out.shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ).mul_(0.2)
    forward_config = Int4AttentionConfig(block_m=16, block_n=16, num_warps=2)
    backward_config = Int4AttentionBackwardConfig(
        block_m=16,
        block_n=16,
        num_warps=2,
        dkv_block_m=16,
        dkv_block_n=16,
        dkv_num_warps=2,
    )
    batch, heads, query_length, qk_nope_dim = query_nope.shape
    key_length, latent_dim = compressed_kv.shape[1:]
    qk_rope_dim = query_rope.shape[-1]
    value_dim = kv_up_weight.shape[1] - qk_nope_dim
    qk_dim = qk_nope_dim + qk_rope_dim
    kv_up_dim = qk_nope_dim + value_dim
    backward_workspaces = {
        "grad_query_workspace": torch.empty(
            (batch, heads, query_length, qk_dim), device="cuda", dtype=torch.float32
        ),
        "grad_key_workspace": torch.empty(
            (batch, heads, key_length, qk_dim), device="cuda", dtype=torch.float32
        ),
        "grad_value_workspace": torch.empty(
            (batch, heads, key_length, value_dim), device="cuda", dtype=torch.float32
        ),
        "grad_kv_workspace": torch.empty(
            (batch, heads, key_length, kv_up_dim), device="cuda", dtype=torch.float32
        ),
        "weight_f32_workspace": torch.empty_like(kv_up_weight, dtype=torch.float32),
        "compressed_f32_workspace": torch.empty_like(compressed_kv, dtype=torch.float32),
        "grad_latent_by_head_workspace": torch.empty(
            (batch, heads, key_length, latent_dim), device="cuda", dtype=torch.float32
        ),
        "grad_weight_by_batch_workspace": torch.empty(
            (batch, heads, kv_up_dim, latent_dim), device="cuda", dtype=torch.float32
        ),
        "grad_query_nope": torch.empty_like(query_nope, dtype=torch.float32),
        "grad_query_rope": torch.empty_like(query_rope, dtype=torch.float32),
        "grad_compressed_kv": torch.empty_like(compressed_kv, dtype=torch.float32),
        "grad_key_rope": torch.empty_like(key_rope, dtype=torch.float32),
        "grad_kv_up_weight": torch.empty_like(kv_up_weight, dtype=torch.float32),
        "lse": torch.empty((batch, heads, query_length), device="cuda", dtype=torch.float32),
        "delta": torch.empty((batch, heads, query_length), device="cuda", dtype=torch.float32),
    }

    def launch() -> tuple[torch.Tensor, ...]:
        multi_head_latent_attention(
            *inputs,
            is_causal=True,
            out=out,
            config=forward_config,
            **workspaces,
        )
        return multi_head_latent_attention_backward(
            *inputs,
            out,
            grad_output,
            is_causal=True,
            config=backward_config,
            **workspaces,
            **backward_workspaces,
        )

    launch()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = launch()
    graph.replay()
    torch.cuda.synchronize()
    expected = reference_multi_head_latent_attention_backward(
        *inputs,
        out,
        grad_output,
        is_causal=True,
    )
    gradient_names = ("dQ_nope", "dQ_rope", "dCompressedKV", "dK_rope", "dKVUpWeight")
    for name, candidate, reference in zip(
        gradient_names,
        captured,
        expected,
        strict=True,
    ):
        torch.testing.assert_close(
            candidate,
            reference,
            rtol=STRICT_RTOL,
            atol=STRICT_ATOL,
            msg=lambda message, name=name: f"{name}: {message}",
        )


@requires_native_mla
@pytest.mark.parametrize(
    "semantic_kwargs",
    ({"is_causal": True}, {"window_size": (3, 1)}),
    ids=("causal", "local"),
)
def test_precompiled_d192_forward_backward_strict_numerics(
    semantic_kwargs: dict[str, object],
) -> None:
    inputs = _inputs(
        query_length=5,
        key_length=7,
        heads=2,
        latent_dim=16,
        qk_nope_dim=128,
        qk_rope_dim=64,
        value_dim=128,
        seed=20260815,
    )
    output = multi_head_latent_attention(
        *inputs,
        use_precompiled=True,
        **semantic_kwargs,
    )
    reference = reference_multi_head_latent_attention(
        *inputs,
        **semantic_kwargs,
    )
    torch.testing.assert_close(output, reference, rtol=STRICT_RTOL, atol=STRICT_ATOL)

    generator = torch.Generator(device="cuda").manual_seed(20260816)
    grad_output = torch.randn(
        output.shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ).mul_(0.2)
    actual_gradients = multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        use_precompiled=True,
        **semantic_kwargs,
    )
    reference_gradients = reference_multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        **semantic_kwargs,
    )
    for candidate, expected in zip(actual_gradients, reference_gradients, strict=True):
        torch.testing.assert_close(
            candidate,
            expected,
            rtol=STRICT_RTOL,
            atol=STRICT_ATOL,
        )

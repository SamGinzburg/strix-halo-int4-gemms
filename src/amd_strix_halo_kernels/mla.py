from __future__ import annotations

from dataclasses import dataclass
from typing import Any

from .attention import (
    Int4AttentionBackwardConfig,
    Int4AttentionConfig,
    int4_scaled_dot_product_attention,
)
from .attention_backward import int4_scaled_dot_product_attention_backward


@dataclass(frozen=True, slots=True)
class MultiHeadLatentAttentionShape:
    """Production MLA dimensions used by DeepSeek-V3/R1-style models."""

    batch: int = 4
    query_length: int = 2048
    key_length: int = 2048
    heads: int = 128
    latent_dim: int = 512
    qk_nope_dim: int = 128
    qk_rope_dim: int = 64
    value_dim: int = 128

    def __post_init__(self) -> None:
        for name, value in (
            ("batch", self.batch),
            ("query_length", self.query_length),
            ("key_length", self.key_length),
            ("heads", self.heads),
            ("latent_dim", self.latent_dim),
            ("qk_nope_dim", self.qk_nope_dim),
            ("qk_rope_dim", self.qk_rope_dim),
            ("value_dim", self.value_dim),
        ):
            if isinstance(value, bool) or not isinstance(value, int):
                raise TypeError(f"{name} must be a positive Python int")
            if value <= 0:
                raise ValueError(f"{name} must be positive")

    @property
    def qk_head_dim(self) -> int:
        return self.qk_nope_dim + self.qk_rope_dim

    @property
    def kv_up_dim(self) -> int:
        return self.qk_nope_dim + self.value_dim


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for Multi-Head Latent Attention") from exc
    return torch


def _require_cuda_tensor(torch: Any, name: str, tensor: Any) -> None:
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


def _validate_workspace_storage(
    sources: tuple[tuple[str, Any], ...],
    workspaces: tuple[tuple[str, Any], ...],
) -> None:
    """Reject destructive workspace aliases while permitting aliased inputs."""

    for index, (name, tensor) in enumerate(workspaces):
        for source_name, source in sources:
            if _shares_storage(tensor, source):
                raise ValueError(f"{name} must not share storage with {source_name}")
        for other_name, other in workspaces[index + 1 :]:
            if _shares_storage(tensor, other):
                raise ValueError(f"{name} must not share storage with {other_name}")


def _prepare_workspace(
    torch: Any,
    name: str,
    tensor: Any | None,
    *,
    shape: tuple[int, ...],
    dtype: Any,
    device: Any,
) -> Any:
    if tensor is None:
        if torch.cuda.is_current_stream_capturing():
            raise ValueError(f"{name} must be preallocated during CUDA graph capture")
        return torch.empty(shape, device=device, dtype=dtype)
    _require_cuda_tensor(torch, name, tensor)
    if tensor.device != device or tensor.dtype != dtype or tuple(tensor.shape) != shape:
        raise ValueError(f"{name} must have shape {shape}, dtype {dtype}, and device {device}")
    if not tensor.is_contiguous():
        raise ValueError(f"{name} must be contiguous")
    return tensor


def _resolve_forward_config(config: Int4AttentionConfig | None) -> Int4AttentionConfig:
    if config is None:
        return Int4AttentionConfig(
            block_m=64,
            block_n=32,
            num_warps=4,
            num_stages=2,
        )
    if not isinstance(config, Int4AttentionConfig):
        raise TypeError("config must be an Int4AttentionConfig or None")
    return config


def _resolve_backward_config(
    config: Int4AttentionBackwardConfig | None,
) -> Int4AttentionBackwardConfig:
    if config is None:
        return Int4AttentionBackwardConfig(
            block_m=32,
            block_n=32,
            num_warps=4,
            num_stages=1,
            dkv_block_m=32,
            dkv_block_n=16,
            dkv_num_warps=2,
            dkv_num_stages=1,
        )
    if not isinstance(config, Int4AttentionBackwardConfig):
        raise TypeError("config must be an Int4AttentionBackwardConfig or None")
    return config


def _validate_inputs(
    torch: Any,
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
) -> tuple[int, int, int, int, int, int, int, int]:
    for name, tensor, ndim in (
        ("query_nope", query_nope, 4),
        ("query_rope", query_rope, 4),
        ("compressed_kv", compressed_kv, 3),
        ("key_rope", key_rope, 3),
        ("kv_up_weight", kv_up_weight, 3),
    ):
        _require_cuda_tensor(torch, name, tensor)
        if tensor.ndim != ndim:
            raise ValueError(f"{name} must have {ndim} dimensions; got {tuple(tensor.shape)}")
        if tensor.device != query_nope.device:
            raise ValueError(f"{name} must be on device {query_nope.device}; got {tensor.device}")
        if tensor.dtype != torch.bfloat16:
            raise ValueError(f"{name} must be BF16")
        if not tensor.is_contiguous():
            raise ValueError(f"{name} must be contiguous")

    batch, heads, query_length, qk_nope_dim = (
        int(size) for size in query_nope.shape
    )
    if min(batch, heads, qk_nope_dim) <= 0:
        raise ValueError("batch, heads, and qk_nope_dim must be positive")
    if tuple(query_rope.shape[:3]) != (batch, heads, query_length):
        raise ValueError("query_rope must share query_nope B, H, and Lq")
    qk_rope_dim = int(query_rope.shape[-1])
    if qk_rope_dim <= 0:
        raise ValueError("qk_rope_dim must be positive")
    if int(compressed_kv.shape[0]) != batch:
        raise ValueError("compressed_kv must share the query batch")
    key_length = int(compressed_kv.shape[1])
    latent_dim = int(compressed_kv.shape[2])
    if latent_dim <= 0:
        raise ValueError("latent_dim must be positive")
    if tuple(key_rope.shape) != (batch, key_length, qk_rope_dim):
        raise ValueError(
            f"key_rope must have shape {(batch, key_length, qk_rope_dim)}"
        )
    if int(kv_up_weight.shape[0]) != heads or int(kv_up_weight.shape[2]) != latent_dim:
        raise ValueError(
            "kv_up_weight must have shape [H, qk_nope_dim + value_dim, latent_dim]"
        )
    kv_up_dim = int(kv_up_weight.shape[1])
    value_dim = kv_up_dim - qk_nope_dim
    if value_dim <= 0:
        raise ValueError("kv_up_weight must include a positive value projection")
    if qk_nope_dim + qk_rope_dim > 256 or value_dim > 256:
        raise ValueError(
            "optimized MLA currently requires qk_nope_dim + qk_rope_dim <= 256 "
            "and value_dim <= 256"
        )
    return (
        batch,
        heads,
        query_length,
        key_length,
        latent_dim,
        qk_nope_dim,
        qk_rope_dim,
        value_dim,
    )


def _materialize_attention_operands(
    torch: Any,
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
    *,
    dimensions: tuple[int, int, int, int, int, int, int, int],
    query_workspace: Any | None,
    key_workspace: Any | None,
    value_workspace: Any | None,
    kv_workspace: Any | None,
) -> tuple[Any, Any, Any, Any]:
    (
        batch,
        heads,
        query_length,
        key_length,
        _,
        qk_nope_dim,
        qk_rope_dim,
        value_dim,
    ) = dimensions
    qk_dim = qk_nope_dim + qk_rope_dim
    kv_up_dim = qk_nope_dim + value_dim
    query_workspace = _prepare_workspace(
        torch,
        "query_workspace",
        query_workspace,
        shape=(batch, heads, query_length, qk_dim),
        dtype=torch.bfloat16,
        device=query_nope.device,
    )
    key_workspace = _prepare_workspace(
        torch,
        "key_workspace",
        key_workspace,
        shape=(batch, heads, key_length, qk_dim),
        dtype=torch.bfloat16,
        device=query_nope.device,
    )
    value_workspace = _prepare_workspace(
        torch,
        "value_workspace",
        value_workspace,
        shape=(batch, heads, key_length, value_dim),
        dtype=torch.bfloat16,
        device=query_nope.device,
    )
    kv_workspace = _prepare_workspace(
        torch,
        "kv_workspace",
        kv_workspace,
        shape=(batch, heads, key_length, kv_up_dim),
        dtype=torch.bfloat16,
        device=query_nope.device,
    )
    sources = {
        "query_nope": query_nope,
        "query_rope": query_rope,
        "compressed_kv": compressed_kv,
        "key_rope": key_rope,
        "kv_up_weight": kv_up_weight,
    }
    workspaces = {
        "query_workspace": query_workspace,
        "key_workspace": key_workspace,
        "value_workspace": value_workspace,
        "kv_workspace": kv_workspace,
    }
    _validate_workspace_storage(tuple(sources.items()), tuple(workspaces.items()))

    torch.matmul(
        compressed_kv[:, None],
        kv_up_weight[None].transpose(-1, -2),
        out=kv_workspace,
    )
    query_workspace[..., :qk_nope_dim].copy_(query_nope)
    query_workspace[..., qk_nope_dim:].copy_(query_rope)
    key_workspace[..., :qk_nope_dim].copy_(kv_workspace[..., :qk_nope_dim])
    key_workspace[..., qk_nope_dim:].copy_(key_rope[:, None])
    value_workspace.copy_(kv_workspace[..., qk_nope_dim:])
    return query_workspace, key_workspace, value_workspace, kv_workspace


def reference_multi_head_latent_attention(
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
    **kwargs: Any,
) -> Any:
    """Torch/reference oracle for decompressed training-form MLA."""

    kwargs = dict(kwargs)
    kwargs["use_reference"] = True
    return multi_head_latent_attention(
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
        **kwargs,
    )


def multi_head_latent_attention(
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
    *,
    attn_mask: Any | None = None,
    is_causal: bool = False,
    scale: float | None = None,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    output_dtype: Any | None = None,
    out: Any | None = None,
    query_workspace: Any | None = None,
    key_workspace: Any | None = None,
    value_workspace: Any | None = None,
    kv_workspace: Any | None = None,
    attention_workspace: Any | None = None,
    config: Int4AttentionConfig | None = None,
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> Any:
    """Run training-form Multi-Head Latent Attention.

    ``query_nope`` is ``[B,H,Lq,Dn]``, ``query_rope`` is ``[B,H,Lq,Dr]``,
    the shared latent cache ``compressed_kv`` is ``[B,Lk,C]``, and
    ``key_rope`` is ``[B,Lk,Dr]``. ``kv_up_weight`` uses the explicit layout
    ``[H,Dn+Dv,C]``. The operation expands latent K/V in BF16, concatenates
    the partial-RoPE components, and invokes the package's flash-style
    attention kernel without materializing the score matrix.

    Pass all four operand workspaces plus ``out`` to keep this composition
    allocation-free during CUDA graph capture. ``attention_workspace`` is
    needed only when ``config.decode_splits > 1``.
    """

    torch = _torch()
    if not isinstance(use_reference, bool):
        raise TypeError("use_reference must be a Python bool")
    dimensions = _validate_inputs(
        torch,
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
    )
    config = _resolve_forward_config(config)
    if not use_reference:
        for name, tensor in (
            ("query_nope", query_nope),
            ("query_rope", query_rope),
            ("compressed_kv", compressed_kv),
            ("key_rope", key_rope),
            ("kv_up_weight", kv_up_weight),
            ("attn_mask", attn_mask),
        ):
            if tensor is not None and tensor.requires_grad:
                raise ValueError(f"optimized MLA is explicit; {name}.requires_grad must be False")
    query, key, value, _ = _materialize_attention_operands(
        torch,
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
        dimensions=dimensions,
        query_workspace=query_workspace,
        key_workspace=key_workspace,
        value_workspace=value_workspace,
        kv_workspace=kv_workspace,
    )
    return int4_scaled_dot_product_attention(
        query,
        key,
        value,
        attn_mask=attn_mask,
        is_causal=is_causal,
        scale=scale,
        window_size=window_size,
        query_position_offset=query_position_offset,
        output_dtype=output_dtype,
        out=out,
        workspace=attention_workspace,
        config=config,
        use_reference=use_reference,
        use_precompiled=use_precompiled,
    )


def reference_multi_head_latent_attention_backward(
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
    output: Any,
    grad_output: Any,
    **kwargs: Any,
) -> tuple[Any, Any, Any, Any, Any]:
    """Reference backward for training-form MLA."""

    kwargs = dict(kwargs)
    kwargs["use_reference"] = True
    return multi_head_latent_attention_backward(
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
        output,
        grad_output,
        **kwargs,
    )


def multi_head_latent_attention_backward(
    query_nope: Any,
    query_rope: Any,
    compressed_kv: Any,
    key_rope: Any,
    kv_up_weight: Any,
    output: Any,
    grad_output: Any,
    *,
    attn_mask: Any | None = None,
    is_causal: bool = False,
    scale: float | None = None,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    query_workspace: Any | None = None,
    key_workspace: Any | None = None,
    value_workspace: Any | None = None,
    kv_workspace: Any | None = None,
    grad_query_workspace: Any | None = None,
    grad_key_workspace: Any | None = None,
    grad_value_workspace: Any | None = None,
    grad_kv_workspace: Any | None = None,
    weight_f32_workspace: Any | None = None,
    compressed_f32_workspace: Any | None = None,
    grad_latent_by_head_workspace: Any | None = None,
    grad_weight_by_batch_workspace: Any | None = None,
    grad_query_nope: Any | None = None,
    grad_query_rope: Any | None = None,
    grad_compressed_kv: Any | None = None,
    grad_key_rope: Any | None = None,
    grad_kv_up_weight: Any | None = None,
    lse: Any | None = None,
    delta: Any | None = None,
    config: Int4AttentionBackwardConfig | None = None,
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> tuple[Any, Any, Any, Any, Any]:
    """Explicit MLA backward.

    Returns ``(dQ_nope, dQ_rope, dCompressedKV, dK_rope, dKVUpWeight)`` as
    logical FP32 gradients. The compressed-KV gradient includes both its key
    and value paths; the shared RoPE-key gradient sums all attention heads.
    """

    torch = _torch()
    dimensions = _validate_inputs(
        torch,
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
    )
    config = _resolve_backward_config(config)
    (
        batch,
        heads,
        query_length,
        key_length,
        latent_dim,
        qk_nope_dim,
        qk_rope_dim,
        value_dim,
    ) = dimensions
    early_sources = (
        ("query_nope", query_nope),
        ("query_rope", query_rope),
        ("compressed_kv", compressed_kv),
        ("key_rope", key_rope),
        ("kv_up_weight", kv_up_weight),
        ("output", output),
        ("grad_output", grad_output),
    )
    early_workspaces = tuple(
        (name, tensor)
        for name, tensor in (
            ("query_workspace", query_workspace),
            ("key_workspace", key_workspace),
            ("value_workspace", value_workspace),
            ("kv_workspace", kv_workspace),
            ("grad_query_workspace", grad_query_workspace),
            ("grad_key_workspace", grad_key_workspace),
            ("grad_value_workspace", grad_value_workspace),
            ("lse", lse),
            ("delta", delta),
        )
        if torch.is_tensor(tensor)
    )
    _validate_workspace_storage(early_sources, early_workspaces)
    query, key, value, kv_materialized = _materialize_attention_operands(
        torch,
        query_nope,
        query_rope,
        compressed_kv,
        key_rope,
        kv_up_weight,
        dimensions=dimensions,
        query_workspace=query_workspace,
        key_workspace=key_workspace,
        value_workspace=value_workspace,
        kv_workspace=kv_workspace,
    )
    qk_dim = qk_nope_dim + qk_rope_dim
    kv_up_dim = qk_nope_dim + value_dim
    grad_query_workspace = _prepare_workspace(
        torch,
        "grad_query_workspace",
        grad_query_workspace,
        shape=(batch, heads, query_length, qk_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_key_workspace = _prepare_workspace(
        torch,
        "grad_key_workspace",
        grad_key_workspace,
        shape=(batch, heads, key_length, qk_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_value_workspace = _prepare_workspace(
        torch,
        "grad_value_workspace",
        grad_value_workspace,
        shape=(batch, heads, key_length, value_dim),
        dtype=torch.float32,
        device=query.device,
    )
    attention_grads = int4_scaled_dot_product_attention_backward(
        query,
        key,
        value,
        output,
        grad_output,
        attn_mask=attn_mask,
        is_causal=is_causal,
        scale=scale,
        window_size=window_size,
        query_position_offset=query_position_offset,
        gradient_dtype=torch.float32,
        grad_query=None if use_reference else grad_query_workspace,
        grad_key=None if use_reference else grad_key_workspace,
        grad_value=None if use_reference else grad_value_workspace,
        lse=lse,
        delta=delta,
        config=config,
        use_reference=use_reference,
        use_precompiled=use_precompiled,
    )
    if use_reference:
        grad_query_workspace.copy_(attention_grads[0])
        grad_key_workspace.copy_(attention_grads[1])
        grad_value_workspace.copy_(attention_grads[2])

    grad_query_nope = _prepare_workspace(
        torch,
        "grad_query_nope",
        grad_query_nope,
        shape=(batch, heads, query_length, qk_nope_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_query_rope = _prepare_workspace(
        torch,
        "grad_query_rope",
        grad_query_rope,
        shape=(batch, heads, query_length, qk_rope_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_compressed_kv = _prepare_workspace(
        torch,
        "grad_compressed_kv",
        grad_compressed_kv,
        shape=(batch, key_length, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_key_rope = _prepare_workspace(
        torch,
        "grad_key_rope",
        grad_key_rope,
        shape=(batch, key_length, qk_rope_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_kv_up_weight = _prepare_workspace(
        torch,
        "grad_kv_up_weight",
        grad_kv_up_weight,
        shape=(heads, kv_up_dim, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_kv_workspace = _prepare_workspace(
        torch,
        "grad_kv_workspace",
        grad_kv_workspace,
        shape=(batch, heads, key_length, kv_up_dim),
        dtype=torch.float32,
        device=query.device,
    )
    weight_f32_workspace = _prepare_workspace(
        torch,
        "weight_f32_workspace",
        weight_f32_workspace,
        shape=(heads, kv_up_dim, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )
    compressed_f32_workspace = _prepare_workspace(
        torch,
        "compressed_f32_workspace",
        compressed_f32_workspace,
        shape=(batch, key_length, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_latent_by_head_workspace = _prepare_workspace(
        torch,
        "grad_latent_by_head_workspace",
        grad_latent_by_head_workspace,
        shape=(batch, heads, key_length, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )
    grad_weight_by_batch_workspace = _prepare_workspace(
        torch,
        "grad_weight_by_batch_workspace",
        grad_weight_by_batch_workspace,
        shape=(batch, heads, kv_up_dim, latent_dim),
        dtype=torch.float32,
        device=query.device,
    )

    backward_sources = early_sources
    backward_workspaces = [
        ("query_workspace", query),
        ("key_workspace", key),
        ("value_workspace", value),
        ("kv_workspace", kv_materialized),
        ("grad_query_workspace", grad_query_workspace),
        ("grad_key_workspace", grad_key_workspace),
        ("grad_value_workspace", grad_value_workspace),
        ("grad_kv_workspace", grad_kv_workspace),
        ("weight_f32_workspace", weight_f32_workspace),
        ("compressed_f32_workspace", compressed_f32_workspace),
        ("grad_latent_by_head_workspace", grad_latent_by_head_workspace),
        ("grad_weight_by_batch_workspace", grad_weight_by_batch_workspace),
        ("grad_query_nope", grad_query_nope),
        ("grad_query_rope", grad_query_rope),
        ("grad_compressed_kv", grad_compressed_kv),
        ("grad_key_rope", grad_key_rope),
        ("grad_kv_up_weight", grad_kv_up_weight),
    ]
    if lse is not None:
        backward_workspaces.append(("lse", lse))
    if delta is not None:
        backward_workspaces.append(("delta", delta))
    _validate_workspace_storage(backward_sources, tuple(backward_workspaces))

    grad_query_nope.copy_(grad_query_workspace[..., :qk_nope_dim])
    grad_query_rope.copy_(grad_query_workspace[..., qk_nope_dim:])
    torch.sum(
        grad_key_workspace[..., qk_nope_dim:],
        dim=1,
        out=grad_key_rope,
    )
    grad_kv_workspace[..., :qk_nope_dim].copy_(
        grad_key_workspace[..., :qk_nope_dim]
    )
    grad_kv_workspace[..., qk_nope_dim:].copy_(grad_value_workspace)
    weight_f32_workspace.copy_(kv_up_weight)
    compressed_f32_workspace.copy_(compressed_kv)
    torch.matmul(
        grad_kv_workspace,
        weight_f32_workspace[None],
        out=grad_latent_by_head_workspace,
    )
    torch.sum(grad_latent_by_head_workspace, dim=1, out=grad_compressed_kv)
    torch.matmul(
        grad_kv_workspace.transpose(-1, -2),
        compressed_f32_workspace[:, None],
        out=grad_weight_by_batch_workspace,
    )
    torch.sum(grad_weight_by_batch_workspace, dim=0, out=grad_kv_up_weight)
    return (
        grad_query_nope,
        grad_query_rope,
        grad_compressed_kv,
        grad_key_rope,
        grad_kv_up_weight,
    )

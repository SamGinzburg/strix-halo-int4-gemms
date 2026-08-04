from __future__ import annotations

from dataclasses import dataclass
from typing import Any

from .kda import KimiDeltaAttentionConfig, kimi_delta_attention, reference_kimi_delta_attention
from .kda_backward import (
    kimi_delta_attention_backward,
    reference_kimi_delta_attention_backward,
)


_RDNA_BUFFER_DESCRIPTOR_ELEMENTS = 2**30


@dataclass(frozen=True, slots=True)
class QwenGatedDeltaNetShape:
    """Logical shape of a Qwen 3.5/3.6 Gated DeltaNet core workload.

    The defaults are the Qwen3.6-27B training shape used by this package's
    production benchmark. Q/K heads are repeated in contiguous groups to the
    value-head count, matching the official Transformers implementation.
    """

    batch: int = 7
    sequence: int = 2048
    query_key_heads: int = 16
    value_heads: int = 48
    head_dim: int = 128
    value_dim: int = 128

    def __post_init__(self) -> None:
        for name, value in (
            ("batch", self.batch),
            ("sequence", self.sequence),
            ("query_key_heads", self.query_key_heads),
            ("value_heads", self.value_heads),
            ("head_dim", self.head_dim),
            ("value_dim", self.value_dim),
        ):
            if isinstance(value, bool) or not isinstance(value, int):
                raise TypeError(f"{name} must be a positive Python int")
            if value <= 0:
                raise ValueError(f"{name} must be positive")
        if self.value_heads % self.query_key_heads:
            raise ValueError("value_heads must be divisible by query_key_heads")

    @property
    def head_group_size(self) -> int:
        return self.value_heads // self.query_key_heads


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for Qwen Gated DeltaNet") from exc
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


def _validate_inputs(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    head_dim: int | None,
    value_dim: int | None,
) -> tuple[bool, bool, int, int, int, int, int, int]:
    for name, tensor in (
        ("query", query),
        ("key", key),
        ("value", value),
        ("log_decay", log_decay),
        ("beta", beta),
    ):
        _require_cuda_tensor(torch, name, tensor)
        if tensor.device != query.device:
            raise ValueError(f"{name} must be on device {query.device}; got {tensor.device}")
        if not tensor.is_contiguous():
            raise ValueError(f"{name} must be contiguous")
    if query.ndim != 4 or key.ndim != 4 or value.ndim != 4:
        raise ValueError("query, key, and value must have shapes [B, T, H, D]")
    if log_decay.ndim != 3 or beta.ndim != 3:
        raise ValueError("log_decay and beta must have shapes [B, T, Hv]")
    if query.dtype != key.dtype or query.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("query and key must both be BF16 or both be packed-INT4 uint8")
    if value.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("value must be BF16 or packed-INT4 uint8")
    if log_decay.dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("log_decay must be BF16 or FP32")
    if beta.dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("beta must be BF16 or FP32")

    batch, sequence, qk_heads = (int(size) for size in query.shape[:3])
    if batch <= 0 or qk_heads <= 0:
        raise ValueError("batch and query/key heads must be positive")
    if tuple(key.shape[:3]) != (batch, sequence, qk_heads):
        raise ValueError("query and key must share B, T, and Hqk")
    if tuple(value.shape[:2]) != (batch, sequence):
        raise ValueError("value must share query B and T")
    value_heads = int(value.shape[2])
    if value_heads <= 0:
        raise ValueError("value heads must be positive")
    if value_heads % qk_heads:
        raise ValueError("value heads must be divisible by query/key heads")
    if tuple(log_decay.shape) != (batch, sequence, value_heads):
        raise ValueError(f"log_decay must have shape {(batch, sequence, value_heads)}")
    if tuple(beta.shape) != (batch, sequence, value_heads):
        raise ValueError(f"beta must have shape {(batch, sequence, value_heads)}")

    qk_int4 = query.dtype == torch.uint8
    value_int4 = value.dtype == torch.uint8
    if qk_int4:
        if isinstance(head_dim, bool) or not isinstance(head_dim, int) or head_dim <= 0:
            raise ValueError("positive head_dim is required for packed-INT4 Q/K")
        logical_head_dim = head_dim
        packed_head_dim = ((head_dim + 15) // 16) * 8
        if int(query.shape[-1]) != packed_head_dim or int(key.shape[-1]) != packed_head_dim:
            raise ValueError("packed query/key width must equal ceil(head_dim / 16) * 8")
    else:
        logical_head_dim = int(query.shape[-1])
        if int(key.shape[-1]) != logical_head_dim:
            raise ValueError("BF16 query and key must share head_dim")
        if head_dim is not None and head_dim != logical_head_dim:
            raise ValueError("head_dim must match the BF16 query/key last dimension")
    if value_int4:
        if isinstance(value_dim, bool) or not isinstance(value_dim, int) or value_dim <= 0:
            raise ValueError("positive value_dim is required for packed-INT4 V")
        logical_value_dim = value_dim
        if int(value.shape[-1]) != ((value_dim + 15) // 16) * 8:
            raise ValueError("packed value width must equal ceil(value_dim / 16) * 8")
    else:
        logical_value_dim = int(value.shape[-1])
        if value_dim is not None and value_dim != logical_value_dim:
            raise ValueError("value_dim must match the BF16 value last dimension")
    if logical_head_dim > 256 or logical_value_dim > 256:
        raise ValueError("optimized Gated DeltaNet supports head_dim and value_dim up to 256")

    for name, tensor, required, shape in (
        ("query_scale", query_scale, qk_int4, (batch, sequence, qk_heads)),
        ("key_scale", key_scale, qk_int4, (batch, sequence, qk_heads)),
        ("value_scale", value_scale, value_int4, (batch, sequence, value_heads)),
    ):
        if required:
            _require_cuda_tensor(torch, name, tensor)
            if tensor.device != query.device or tensor.dtype != torch.bfloat16:
                raise ValueError(f"{name} must be BF16 on device {query.device}")
            if tuple(tensor.shape) != shape or not tensor.is_contiguous():
                raise ValueError(f"{name} must be contiguous with shape {shape}")
        elif tensor is not None:
            raise ValueError(f"{name} is valid only for its packed-INT4 operand")
    return (
        qk_int4,
        value_int4,
        batch,
        sequence,
        qk_heads,
        value_heads,
        logical_head_dim,
        logical_value_dim,
    )


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


def _resolve_config(config: KimiDeltaAttentionConfig | None) -> KimiDeltaAttentionConfig:
    if config is None:
        # Qwen3.6-27B B7/H48 needs three CI=4 cache pages, while the current
        # Gluon ABI provides two descriptors. CI=8 fits in two pages and is
        # also 31% faster than CI=16 in the measured production backward.
        return KimiDeltaAttentionConfig(checkpoint_interval=8)
    if not isinstance(config, KimiDeltaAttentionConfig):
        raise TypeError("config must be a KimiDeltaAttentionConfig or None")
    return config


def _validate_gluon_cache_span(
    *,
    backend: str,
    use_reference: bool,
    needs_state_cache: bool,
    batch: int,
    sequence: int,
    heads: int,
    head_dim: int,
    value_dim: int,
    config: KimiDeltaAttentionConfig,
) -> None:
    if backend != "gluon" or use_reference or not needs_state_cache:
        return
    checkpoints = (sequence + config.checkpoint_interval - 1) // config.checkpoint_interval + 1
    cache_span = checkpoints * head_dim * value_dim
    heads_per_page = max(1, (_RDNA_BUFFER_DESCRIPTOR_ELEMENTS - 1) // cache_span)
    if batch * heads > 2 * heads_per_page:
        raise ValueError(
            "Gluon Qwen Gated DeltaNet state_cache exceeds its two RDNA 3.5 "
            "buffer-descriptor pages; increase checkpoint_interval or use backend='triton'"
        )


def _expand_grouped_operands(
    torch: Any,
    query: Any,
    key: Any,
    log_decay: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    batch: int,
    sequence: int,
    qk_heads: int,
    value_heads: int,
    head_dim: int,
    query_workspace: Any | None,
    key_workspace: Any | None,
    log_decay_workspace: Any | None,
    query_scale_workspace: Any | None,
    key_scale_workspace: Any | None,
) -> tuple[Any, Any, Any, Any | None, Any | None]:
    group_size = value_heads // qk_heads
    stored_head_dim = int(query.shape[-1])
    expanded_qk_shape = (batch, sequence, value_heads, stored_head_dim)
    expanded_decay_shape = (batch, sequence, value_heads, head_dim)
    expanded_query = _prepare_workspace(
        torch,
        "query_workspace",
        query_workspace,
        shape=expanded_qk_shape,
        dtype=query.dtype,
        device=query.device,
    )
    expanded_key = _prepare_workspace(
        torch,
        "key_workspace",
        key_workspace,
        shape=expanded_qk_shape,
        dtype=key.dtype,
        device=query.device,
    )
    expanded_decay = _prepare_workspace(
        torch,
        "log_decay_workspace",
        log_decay_workspace,
        shape=expanded_decay_shape,
        dtype=log_decay.dtype,
        device=query.device,
    )
    expanded_query_scale = None
    expanded_key_scale = None
    if query_scale is not None:
        scale_shape = (batch, sequence, value_heads)
        expanded_query_scale = _prepare_workspace(
            torch,
            "query_scale_workspace",
            query_scale_workspace,
            shape=scale_shape,
            dtype=torch.bfloat16,
            device=query.device,
        )
        expanded_key_scale = _prepare_workspace(
            torch,
            "key_scale_workspace",
            key_scale_workspace,
            shape=scale_shape,
            dtype=torch.bfloat16,
            device=query.device,
        )
    elif query_scale_workspace is not None or key_scale_workspace is not None:
        raise ValueError("Q/K scale workspaces are valid only for packed-INT4 Q/K")
    sources = [
        ("query", query),
        ("key", key),
        ("log_decay", log_decay),
    ]
    workspaces = [
        ("query_workspace", expanded_query),
        ("key_workspace", expanded_key),
        ("log_decay_workspace", expanded_decay),
    ]
    if query_scale is not None:
        sources.extend(
            (
                ("query_scale", query_scale),
                ("key_scale", key_scale),
            )
        )
        workspaces.extend(
            (
                ("query_scale_workspace", expanded_query_scale),
                ("key_scale_workspace", expanded_key_scale),
            )
        )
    _validate_workspace_storage(tuple(sources), tuple(workspaces))
    expanded_query.view(batch, sequence, qk_heads, group_size, stored_head_dim).copy_(
        query.unsqueeze(3)
    )
    expanded_key.view(batch, sequence, qk_heads, group_size, stored_head_dim).copy_(
        key.unsqueeze(3)
    )
    expanded_decay.copy_(log_decay.unsqueeze(-1))
    if query_scale is not None:
        expanded_query_scale.view(batch, sequence, qk_heads, group_size).copy_(
            query_scale.unsqueeze(3)
        )
        expanded_key_scale.view(batch, sequence, qk_heads, group_size).copy_(
            key_scale.unsqueeze(3)
        )
    return (
        expanded_query,
        expanded_key,
        expanded_decay,
        expanded_query_scale,
        expanded_key_scale,
    )


def reference_qwen_gated_delta_net(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    **kwargs: Any,
) -> tuple[Any, Any]:
    """FP32 oracle for the Qwen3.5/3.6 gated-delta-rule core.

    Inputs are post-convolution Q/K/V and already activated scalar
    ``log_decay`` and ``beta`` values. The surrounding projections, causal
    depthwise convolution, and RMSNorm-gated output projection remain model
    operations outside this low-level recurrence API.
    """

    kwargs = dict(kwargs)
    kwargs["use_reference"] = True
    kwargs["output_final_state"] = True
    output, final_state = qwen_gated_delta_net(query, key, value, log_decay, beta, **kwargs)
    assert final_state is not None
    return output, final_state


def qwen_gated_delta_net(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    head_dim: int | None = None,
    value_dim: int | None = None,
    scale: float | None = None,
    initial_state: Any | None = None,
    output_final_state: bool = False,
    output_dtype: Any | None = None,
    out: Any | None = None,
    final_state: Any | None = None,
    state_cache: Any | None = None,
    query_workspace: Any | None = None,
    key_workspace: Any | None = None,
    log_decay_workspace: Any | None = None,
    query_scale_workspace: Any | None = None,
    key_scale_workspace: Any | None = None,
    w_workspace: Any | None = None,
    u_workspace: Any | None = None,
    config: KimiDeltaAttentionConfig | None = None,
    backend: str = "triton",
    use_reference: bool = False,
    use_precompiled: bool | None = None,
) -> tuple[Any, Any | None]:
    """Run the Qwen3.5/3.6 grouped-head gated-delta-rule recurrence.

    Q/K have shape ``[B,T,Hqk,D]`` and V has shape ``[B,T,Hv,Dv]``, where
    ``Hv % Hqk == 0``. ``log_decay`` and ``beta`` are scalar per value head,
    shaped ``[B,T,Hv]``. Q/K and V may independently be BF16 or packed INT4.
    Explicit expansion workspaces make the grouped-head adapter allocation-free
    under CUDA graph capture; the remaining KDA workspaces follow
    :func:`kimi_delta_attention`.
    """

    torch = _torch()
    (
        _,
        _,
        batch,
        sequence,
        qk_heads,
        value_heads,
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
    config = _resolve_config(config)
    _validate_gluon_cache_span(
        backend=backend,
        use_reference=use_reference,
        needs_state_cache=state_cache is not None,
        batch=batch,
        sequence=sequence,
        heads=value_heads,
        head_dim=logical_head_dim,
        value_dim=logical_value_dim,
        config=config,
    )
    (
        expanded_query,
        expanded_key,
        expanded_decay,
        expanded_query_scale,
        expanded_key_scale,
    ) = _expand_grouped_operands(
        torch,
        query,
        key,
        log_decay,
        query_scale=query_scale,
        key_scale=key_scale,
        batch=batch,
        sequence=sequence,
        qk_heads=qk_heads,
        value_heads=value_heads,
        head_dim=logical_head_dim,
        query_workspace=query_workspace,
        key_workspace=key_workspace,
        log_decay_workspace=log_decay_workspace,
        query_scale_workspace=query_scale_workspace,
        key_scale_workspace=key_scale_workspace,
    )
    return kimi_delta_attention(
        expanded_query,
        expanded_key,
        value,
        expanded_decay,
        beta,
        query_scale=expanded_query_scale,
        key_scale=expanded_key_scale,
        value_scale=value_scale,
        head_dim=logical_head_dim,
        value_dim=logical_value_dim,
        scale=scale,
        initial_state=initial_state,
        output_final_state=output_final_state,
        output_dtype=output_dtype,
        normalize_qk=True,
        out=out,
        final_state=final_state,
        state_cache=state_cache,
        w_workspace=w_workspace,
        u_workspace=u_workspace,
        config=config,
        backend=backend,
        use_reference=use_reference,
        use_precompiled=use_precompiled,
    )


def reference_qwen_gated_delta_net_backward(
    query: Any,
    key: Any,
    value: Any,
    log_decay: Any,
    beta: Any,
    grad_output: Any,
    **kwargs: Any,
) -> tuple[Any, Any, Any, Any, Any, Any | None]:
    """Differentiate the FP32 grouped-head Qwen gated-delta oracle."""

    kwargs = dict(kwargs)
    kwargs["use_reference"] = True
    return qwen_gated_delta_net_backward(
        query,
        key,
        value,
        log_decay,
        beta,
        grad_output,
        **kwargs,
    )


def qwen_gated_delta_net_backward(
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
    state_cache: Any | None = None,
    query_workspace: Any | None = None,
    key_workspace: Any | None = None,
    log_decay_workspace: Any | None = None,
    query_scale_workspace: Any | None = None,
    key_scale_workspace: Any | None = None,
    grad_query_expanded: Any | None = None,
    grad_key_expanded: Any | None = None,
    grad_log_decay_expanded: Any | None = None,
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
    """Explicit Qwen gated-delta backward returning logical FP32 gradients.

    The returned order is ``(dQ, dK, dV, dLogDecay, dBeta, dInitialState)``.
    Gradients from repeated value-head groups are summed back into the original
    Q/K heads, and the per-channel KDA decay gradient is reduced to Qwen's
    scalar-per-value-head decay contract.
    """

    torch = _torch()
    (
        _,
        _,
        batch,
        sequence,
        qk_heads,
        value_heads,
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
    config = _resolve_config(config)
    _validate_gluon_cache_span(
        backend=backend,
        use_reference=use_reference,
        needs_state_cache=True,
        batch=batch,
        sequence=sequence,
        heads=value_heads,
        head_dim=logical_head_dim,
        value_dim=logical_value_dim,
        config=config,
    )
    (
        expanded_query,
        expanded_key,
        expanded_decay,
        expanded_query_scale,
        expanded_key_scale,
    ) = _expand_grouped_operands(
        torch,
        query,
        key,
        log_decay,
        query_scale=query_scale,
        key_scale=key_scale,
        batch=batch,
        sequence=sequence,
        qk_heads=qk_heads,
        value_heads=value_heads,
        head_dim=logical_head_dim,
        query_workspace=query_workspace,
        key_workspace=key_workspace,
        log_decay_workspace=log_decay_workspace,
        query_scale_workspace=query_scale_workspace,
        key_scale_workspace=key_scale_workspace,
    )
    expanded_qk_grad_shape = (batch, sequence, value_heads, logical_head_dim)
    expanded_decay_grad_shape = expanded_qk_grad_shape
    grad_query_expanded = _prepare_workspace(
        torch,
        "grad_query_expanded",
        grad_query_expanded,
        shape=expanded_qk_grad_shape,
        dtype=torch.float32,
        device=query.device,
    )
    grad_key_expanded = _prepare_workspace(
        torch,
        "grad_key_expanded",
        grad_key_expanded,
        shape=expanded_qk_grad_shape,
        dtype=torch.float32,
        device=query.device,
    )
    grad_log_decay_expanded = _prepare_workspace(
        torch,
        "grad_log_decay_expanded",
        grad_log_decay_expanded,
        shape=expanded_decay_grad_shape,
        dtype=torch.float32,
        device=query.device,
    )
    qk_grad_shape = (batch, sequence, qk_heads, logical_head_dim)
    scalar_decay_shape = (batch, sequence, value_heads)
    grad_query = _prepare_workspace(
        torch,
        "grad_query",
        grad_query,
        shape=qk_grad_shape,
        dtype=torch.float32,
        device=query.device,
    )
    grad_key = _prepare_workspace(
        torch,
        "grad_key",
        grad_key,
        shape=qk_grad_shape,
        dtype=torch.float32,
        device=query.device,
    )
    grad_log_decay = _prepare_workspace(
        torch,
        "grad_log_decay",
        grad_log_decay,
        shape=scalar_decay_shape,
        dtype=torch.float32,
        device=query.device,
    )
    if use_reference:
        gradients = reference_kimi_delta_attention_backward(
            expanded_query,
            expanded_key,
            value,
            expanded_decay,
            beta,
            grad_output,
            query_scale=expanded_query_scale,
            key_scale=expanded_key_scale,
            value_scale=value_scale,
            head_dim=logical_head_dim,
            value_dim=logical_value_dim,
            scale=scale,
            initial_state=initial_state,
            grad_final_state=grad_final_state,
            normalize_qk=True,
        )
    else:
        gradients = kimi_delta_attention_backward(
            expanded_query,
            expanded_key,
            value,
            expanded_decay,
            beta,
            grad_output,
            query_scale=expanded_query_scale,
            key_scale=expanded_key_scale,
            value_scale=value_scale,
            head_dim=logical_head_dim,
            value_dim=logical_value_dim,
            scale=scale,
            initial_state=initial_state,
            grad_final_state=grad_final_state,
            state_cache=state_cache,
            grad_query=grad_query_expanded,
            grad_key=grad_key_expanded,
            grad_value=grad_value,
            grad_log_decay=grad_log_decay_expanded,
            grad_beta=grad_beta,
            grad_initial_state=grad_initial_state,
            grad_query_normalized=grad_query_normalized,
            grad_key_normalized=grad_key_normalized,
            config=config,
            backend=backend,
            use_precompiled=use_precompiled,
        )
    expanded_dq, expanded_dk, result_dv, expanded_dg, result_dbeta, result_dinitial = gradients
    if use_reference:
        grad_query_expanded.copy_(expanded_dq)
        grad_key_expanded.copy_(expanded_dk)
        grad_log_decay_expanded.copy_(expanded_dg)
        if grad_value is not None:
            grad_value.copy_(result_dv)
            result_dv = grad_value
        if grad_beta is not None:
            grad_beta.copy_(result_dbeta)
            result_dbeta = grad_beta
        if grad_initial_state is not None and result_dinitial is not None:
            grad_initial_state.copy_(result_dinitial)
            result_dinitial = grad_initial_state
    group_size = value_heads // qk_heads
    torch.sum(
        grad_query_expanded.view(batch, sequence, qk_heads, group_size, logical_head_dim),
        dim=3,
        out=grad_query,
    )
    torch.sum(
        grad_key_expanded.view(batch, sequence, qk_heads, group_size, logical_head_dim),
        dim=3,
        out=grad_key,
    )
    torch.sum(grad_log_decay_expanded, dim=-1, out=grad_log_decay)
    return grad_query, grad_key, result_dv, grad_log_decay, result_dbeta, result_dinitial

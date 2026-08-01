from __future__ import annotations

import json
import os
from dataclasses import asdict
from functools import lru_cache
from pathlib import Path
from typing import Any, Iterable

from .metadata import ARCH


ATTENTION_FAMILY = "fused_attention"
ATTENTION_FORWARD = "forward"
ATTENTION_DECODE_REDUCE = "decode_reduce"
ATTENTION_BACKWARD_DQ = "backward_dq"
ATTENTION_BACKWARD_DKV = "backward_dkv"
ATTENTION_BACKWARD_PHASES = (ATTENTION_BACKWARD_DQ, ATTENTION_BACKWARD_DKV)
ATTENTION_MASK_NONE = "none"
ATTENTION_MASK_BOOL = "bool"
ATTENTION_MASK_BF16 = "bf16"
ATTENTION_MASK_FP32 = "fp32"
ATTENTION_MASK_DTYPES = (
    ATTENTION_MASK_NONE,
    ATTENTION_MASK_BOOL,
    ATTENTION_MASK_BF16,
    ATTENTION_MASK_FP32,
)
ATTENTION_OUTPUT_BF16 = "bfloat16"
ATTENTION_OUTPUT_FP32 = "float32"
ATTENTION_OUTPUT_DTYPES = (ATTENTION_OUTPUT_BF16, ATTENTION_OUTPUT_FP32)
ATTENTION_SEMANTICS_FULL = "full"
ATTENTION_SEMANTICS_CAUSAL = "causal"
ATTENTION_SEMANTICS_LOCAL = "local"
ATTENTION_SEMANTICS_CAUSAL_LOCAL = "causal_local"
ATTENTION_SEMANTICS = (
    ATTENTION_SEMANTICS_FULL,
    ATTENTION_SEMANTICS_CAUSAL,
    ATTENTION_SEMANTICS_LOCAL,
    ATTENTION_SEMANTICS_CAUSAL_LOCAL,
)
ATTENTION_PRECOMPILED_HEAD_DIM = 64
ATTENTION_PRECOMPILED_VALUE_DIM = 64

# These are the default-dispatch and measured-winner configurations recorded
# in benchmarks/gfx1151_attention*.json. Generic artifacts keep shapes and
# attention semantics at runtime; measured workload profiles additionally
# specialize heads and sequence lengths.
ATTENTION_PRECOMPILED_CONFIGS: dict[str, tuple[tuple[int, int, int, int, int], ...]] = {
    "bf16-bf16": (
        (64, 64, 4, 1, 1),
        (64, 32, 4, 1, 1),
        (16, 64, 4, 1, 8),
        (16, 64, 4, 1, 4),
    ),
    "int4-bf16": (
        (64, 64, 4, 1, 1),
        (32, 32, 2, 1, 1),
        (16, 64, 4, 1, 8),
        (16, 64, 8, 1, 4),
    ),
    "bf16-int4": (
        (32, 16, 4, 1, 1),
        (64, 16, 4, 1, 1),
        (16, 16, 4, 1, 8),
        (16, 16, 8, 1, 8),
    ),
    "int4-int4": (
        (64, 16, 4, 1, 1),
        (16, 16, 4, 1, 8),
    ),
}
ATTENTION_PRECOMPILED_DECODE_SPLITS = (4, 8)
ATTENTION_PRECOMPILED_BACKWARD_CONFIGS = (
    # Spill-free measured winner for both full and bounded attention.
    (32, 16, 2, 1, 32, 16, 2, 1),
)
ATTENTION_FORWARD_RUNTIME_SCALAR_ARGS = (
    "batch",
    "query_heads",
    "kv_heads",
    "query_length",
    "key_length",
    "head_dim",
    "packed_head_dim",
    "value_dim",
    "decode_splits",
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
ATTENTION_BACKWARD_RUNTIME_SCALAR_ARGS = (
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


def attention_config_tuple(config: Any) -> tuple[int, int, int, int, int]:
    return (
        int(config.block_m),
        int(config.block_n),
        int(config.num_warps),
        int(config.num_stages),
        int(config.decode_splits),
    )


def attention_config_label(config: Any) -> str:
    block_m, block_n, num_warps, num_stages, decode_splits = attention_config_tuple(config)
    return f"bm{block_m}_bn{block_n}_w{num_warps}_s{num_stages}_ds{decode_splits}"


def attention_backward_config_tuple(config: Any) -> tuple[int, int, int, int, int, int, int, int]:
    return (
        int(config.block_m),
        int(config.block_n),
        int(config.num_warps),
        int(config.num_stages),
        int(config.dkv_block_m),
        int(config.dkv_block_n),
        int(config.dkv_num_warps),
        int(config.dkv_num_stages),
    )


def attention_backward_config_label(config: Any) -> str:
    values = attention_backward_config_tuple(config)
    return (
        f"dqm{values[0]}_dqn{values[1]}_dqw{values[2]}_dqs{values[3]}_"
        f"dkvm{values[4]}_dkvn{values[5]}_dkvw{values[6]}_dkvs{values[7]}"
    )


def attention_precompiled_workload_shapes(config: Any) -> tuple[tuple[int, int, int, int], ...]:
    if int(config.decode_splits) > 1:
        return ((8, 8, 1, 2048),)
    return ((8, 8, 512, 512), (16, 8, 2048, 2048))


def attention_mode(*, qk_int4: bool, pv_int4: bool) -> str:
    return f"{'int4' if qk_int4 else 'bf16'}-{'int4' if pv_int4 else 'bf16'}"


def attention_forward_kernel_id(
    *,
    mode: str,
    mask_dtype: str,
    semantics: str | None,
    output_dtype: str,
    head_dim: int,
    value_dim: int,
    config: Any,
    workload_shape: tuple[int, int, int, int] | None = None,
    arch: str = ARCH,
) -> str:
    if mode not in ATTENTION_PRECOMPILED_CONFIGS:
        raise ValueError(f"unsupported attention mode {mode!r}")
    if mask_dtype not in ATTENTION_MASK_DTYPES:
        raise ValueError(f"unsupported attention mask dtype {mask_dtype!r}")
    if semantics is not None and semantics not in ATTENTION_SEMANTICS:
        raise ValueError(f"unsupported attention semantics {semantics!r}")
    if mask_dtype != ATTENTION_MASK_NONE and semantics in {
        ATTENTION_SEMANTICS_CAUSAL,
        ATTENTION_SEMANTICS_CAUSAL_LOCAL,
    }:
        raise ValueError("explicit attention masks cannot use causal semantics")
    if output_dtype not in ATTENTION_OUTPUT_DTYPES:
        raise ValueError(f"unsupported attention output dtype {output_dtype!r}")
    if min(head_dim, value_dim) <= 0:
        raise ValueError("attention head and value dimensions must be positive")
    if workload_shape is not None and (len(workload_shape) != 4 or min(workload_shape) <= 0):
        raise ValueError("attention workload specialization values must be four positive ints")
    workload_label = (
        "shaperuntime"
        if workload_shape is None
        else (
            f"hq{int(workload_shape[0])}_hkv{int(workload_shape[1])}_"
            f"lq{int(workload_shape[2])}_lk{int(workload_shape[3])}"
        )
    )
    semantics_label = "runtime" if semantics is None else semantics
    return (
        f"{arch}_attention_fwd_{mode.replace('-', 'x')}_{mask_dtype}_{semantics_label}_{output_dtype}_"
        f"d{head_dim}_dv{value_dim}_{workload_label}_{attention_config_label(config)}"
    )


def attention_backward_kernel_id(
    *,
    phase: str,
    mode: str,
    mask_dtype: str,
    semantics: str | None,
    output_dtype: str,
    grad_output_dtype: str,
    head_dim: int,
    value_dim: int,
    config: Any,
    workload_shape: tuple[int, int, int, int] | None = None,
    arch: str = ARCH,
) -> str:
    if phase not in ATTENTION_BACKWARD_PHASES:
        raise ValueError(f"unsupported attention backward phase {phase!r}")
    if mode not in ATTENTION_PRECOMPILED_CONFIGS:
        raise ValueError(f"unsupported attention mode {mode!r}")
    if mask_dtype not in ATTENTION_MASK_DTYPES:
        raise ValueError(f"unsupported attention mask dtype {mask_dtype!r}")
    if semantics is not None and semantics not in ATTENTION_SEMANTICS:
        raise ValueError(f"unsupported attention semantics {semantics!r}")
    if mask_dtype != ATTENTION_MASK_NONE and semantics in {
        ATTENTION_SEMANTICS_CAUSAL,
        ATTENTION_SEMANTICS_CAUSAL_LOCAL,
    }:
        raise ValueError("explicit attention masks cannot use causal semantics")
    if min(head_dim, value_dim) <= 0:
        raise ValueError("attention head and value dimensions must be positive")
    if output_dtype not in ATTENTION_OUTPUT_DTYPES:
        raise ValueError(f"unsupported saved attention output dtype {output_dtype!r}")
    if grad_output_dtype not in ATTENTION_OUTPUT_DTYPES:
        raise ValueError(f"unsupported attention grad_output dtype {grad_output_dtype!r}")
    if attention_backward_config_tuple(config) not in ATTENTION_PRECOMPILED_BACKWARD_CONFIGS:
        raise ValueError(f"unsupported attention backward config {config!r}")
    if workload_shape is not None and (len(workload_shape) != 4 or min(workload_shape) <= 0):
        raise ValueError("attention workload specialization values must be four positive ints")
    workload_label = (
        "shaperuntime"
        if workload_shape is None
        else (
            f"hq{int(workload_shape[0])}_hkv{int(workload_shape[1])}_"
            f"lq{int(workload_shape[2])}_lk{int(workload_shape[3])}"
        )
    )
    phase_label = "dq" if phase == ATTENTION_BACKWARD_DQ else "dkv"
    semantics_label = "runtime" if semantics is None else semantics
    return (
        f"{arch}_attention_bwd_{phase_label}_{mode.replace('-', 'x')}_{mask_dtype}_"
        f"{semantics_label}_out{output_dtype}_dout{grad_output_dtype}_float32_"
        f"d{head_dim}_dv{value_dim}_{workload_label}_"
        f"{attention_backward_config_label(config)}"
    )


def attention_reduce_kernel_id(
    *,
    output_dtype: str,
    value_dim: int,
    decode_splits: int,
    arch: str = ARCH,
) -> str:
    if output_dtype not in ATTENTION_OUTPUT_DTYPES:
        raise ValueError(f"unsupported attention output dtype {output_dtype!r}")
    if value_dim <= 0:
        raise ValueError("attention value dimension must be positive")
    if decode_splits <= 1 or decode_splits & (decode_splits - 1):
        raise ValueError("decode_splits must be a power of two greater than one")
    return f"{arch}_attention_reduce_{output_dtype}_dv{value_dim}_ds{decode_splits}"


def is_precompiled_attention_config(mode: str, config: Any) -> bool:
    return attention_config_tuple(config) in ATTENTION_PRECOMPILED_CONFIGS.get(mode, ())


def is_precompiled_attention_backward_config(config: Any) -> bool:
    return attention_backward_config_tuple(config) in ATTENTION_PRECOMPILED_BACKWARD_CONFIGS


def attention_forward_metadata_dict(
    *,
    kernel_id: str,
    mode: str,
    mask_dtype: str,
    semantics: str | None,
    output_dtype: str,
    head_dim: int,
    value_dim: int,
    config: Any,
    workload_shape: tuple[int, int, int, int] | None,
    amdgcn_symbol: str,
    launch_metadata: dict[str, int],
    asm_keys: Iterable[str],
    source_triton_commit: str | None,
    amdgcn: str,
    kernel_arg_layout: dict[str, Any],
) -> dict[str, Any]:
    return {
        "kernel_id": kernel_id,
        "family": ATTENTION_FAMILY,
        "phase": ATTENTION_FORWARD,
        "arch": ARCH,
        "mode": mode,
        "mask_dtype": mask_dtype,
        "semantics": "runtime" if semantics is None else semantics,
        "output_dtype": output_dtype,
        "head_dim": head_dim,
        "value_dim": value_dim,
        "config": asdict(config),
        "config_label": attention_config_label(config),
        "shape_specialization": (
            "runtime"
            if workload_shape is None
            else {
                "query_heads": workload_shape[0],
                "kv_heads": workload_shape[1],
                "query_length": workload_shape[2],
                "key_length": workload_shape[3],
            }
        ),
        "runtime_shape_args": [
            "batch",
            "query_heads",
            "kv_heads",
            "query_length",
            "key_length",
            "head_dim",
            "packed_head_dim",
            "value_dim",
            "decode_splits",
        ],
        "runtime_semantics_args": [
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
        ],
        "asm_keys": sorted(asm_keys),
        "status": "generated",
        "source_triton_commit": source_triton_commit,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "kernel_arg_layout": kernel_arg_layout,
        "amdgcn_stats": {
            "iu4_wmma": amdgcn.count("v_wmma_i32_16x16x16_iu4"),
            "bf16_wmma": amdgcn.count("v_wmma_f32_16x16x16_bf16"),
            "waitcnt": amdgcn.count("s_waitcnt"),
            "lines": len(amdgcn.splitlines()),
        },
    }


def attention_backward_metadata_dict(
    *,
    kernel_id: str,
    phase: str,
    mode: str,
    mask_dtype: str,
    semantics: str | None,
    output_dtype: str,
    grad_output_dtype: str,
    head_dim: int,
    value_dim: int,
    config: Any,
    workload_shape: tuple[int, int, int, int] | None,
    amdgcn_symbol: str,
    launch_metadata: dict[str, int],
    asm_keys: Iterable[str],
    source_triton_commit: str | None,
    amdgcn: str,
    kernel_arg_layout: dict[str, Any],
) -> dict[str, Any]:
    if phase not in ATTENTION_BACKWARD_PHASES:
        raise ValueError(f"unsupported attention backward phase {phase!r}")
    return {
        "kernel_id": kernel_id,
        "family": ATTENTION_FAMILY,
        "phase": phase,
        "arch": ARCH,
        "mode": mode,
        "mask_dtype": mask_dtype,
        "semantics": "runtime" if semantics is None else semantics,
        "saved_output_dtype": output_dtype,
        "grad_output_dtype": grad_output_dtype,
        "gradient_dtype": "float32",
        "head_dim": head_dim,
        "value_dim": value_dim,
        "config": asdict(config),
        "config_label": attention_backward_config_label(config),
        "shape_specialization": (
            "runtime"
            if workload_shape is None
            else {
                "query_heads": workload_shape[0],
                "kv_heads": workload_shape[1],
                "query_length": workload_shape[2],
                "key_length": workload_shape[3],
            }
        ),
        "runtime_shape_args": [
            "batch",
            "query_heads",
            "kv_heads",
            "query_length",
            "key_length",
            "head_dim",
            "packed_head_dim",
            "value_dim",
        ],
        "runtime_semantics_args": [
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
        ],
        "asm_keys": sorted(asm_keys),
        "status": "generated",
        "source_triton_commit": source_triton_commit,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "kernel_arg_layout": kernel_arg_layout,
        "amdgcn_stats": {
            "iu4_wmma": amdgcn.count("v_wmma_i32_16x16x16_iu4"),
            "bf16_wmma": amdgcn.count("v_wmma_f32_16x16x16_bf16"),
            "waitcnt": amdgcn.count("s_waitcnt"),
            "lines": len(amdgcn.splitlines()),
        },
    }


def attention_reduce_metadata_dict(
    *,
    kernel_id: str,
    output_dtype: str,
    value_dim: int,
    decode_splits: int,
    amdgcn_symbol: str,
    launch_metadata: dict[str, int],
    asm_keys: Iterable[str],
    source_triton_commit: str | None,
    amdgcn: str,
    kernel_arg_layout: dict[str, Any],
) -> dict[str, Any]:
    return {
        "kernel_id": kernel_id,
        "family": ATTENTION_FAMILY,
        "phase": ATTENTION_DECODE_REDUCE,
        "arch": ARCH,
        "output_dtype": output_dtype,
        "value_dim": value_dim,
        "decode_splits": decode_splits,
        "shape_specialization": "runtime",
        "runtime_shape_args": ["value_dim", "decode_splits"],
        "asm_keys": sorted(asm_keys),
        "status": "generated",
        "source_triton_commit": source_triton_commit,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "kernel_arg_layout": kernel_arg_layout,
        "amdgcn_stats": {
            "waitcnt": amdgcn.count("s_waitcnt"),
            "lines": len(amdgcn.splitlines()),
        },
    }


def attention_native_root() -> Path | None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    return Path(configured) if configured else None


@lru_cache(maxsize=None)
def _read_attention_metadata(path_value: str) -> dict[str, Any]:
    return json.loads(Path(path_value).read_text())


def _attention_artifact(
    kernel_id: str,
    *,
    phase: str,
    root: str | Path | None = None,
) -> tuple[Path, Path, dict[str, Any]] | None:
    from .native import (
        amdgcn_metadata_path_for_kernel_id,
        hsaco_path_for_kernel_id,
        native_library_path,
    )

    resolved_root = attention_native_root() if root is None else Path(root)
    library = native_library_path(root=resolved_root)
    hsaco = hsaco_path_for_kernel_id(kernel_id, root=resolved_root)
    metadata_path = amdgcn_metadata_path_for_kernel_id(kernel_id, root=resolved_root)
    if not library.exists() or not hsaco.exists() or not metadata_path.exists():
        return None
    metadata = _read_attention_metadata(str(metadata_path))
    if metadata.get("family") != ATTENTION_FAMILY or metadata.get("phase") != phase:
        raise RuntimeError(f"{kernel_id} is not a generated {phase} attention artifact")
    if metadata.get("kernel_id") != kernel_id:
        raise RuntimeError(f"attention metadata kernel_id mismatch for {kernel_id}")
    return library, hsaco, metadata


def precompiled_attention_forward_available(kernel_id: str, *, root: str | Path | None = None) -> bool:
    return _attention_artifact(kernel_id, phase=ATTENTION_FORWARD, root=root) is not None


def precompiled_attention_reduce_available(kernel_id: str, *, root: str | Path | None = None) -> bool:
    return _attention_artifact(kernel_id, phase=ATTENTION_DECODE_REDUCE, root=root) is not None


def precompiled_attention_backward_available(
    kernel_id: str,
    *,
    phase: str,
    root: str | Path | None = None,
) -> bool:
    if phase not in ATTENTION_BACKWARD_PHASES:
        raise ValueError(f"unsupported attention backward phase {phase!r}")
    return _attention_artifact(kernel_id, phase=phase, root=root) is not None


def _launch_values(kernel_id: str, metadata: dict[str, Any]) -> tuple[str, int, int]:
    symbol = metadata.get("amdgcn_symbol")
    launch = metadata.get("launch_metadata")
    if not isinstance(symbol, str) or not symbol:
        raise RuntimeError(f"{kernel_id} metadata is missing amdgcn_symbol")
    if not isinstance(launch, dict):
        raise RuntimeError(f"{kernel_id} metadata is missing launch_metadata")
    num_warps = launch.get("num_warps")
    shared = launch.get("shared_memory_bytes")
    if not isinstance(num_warps, int) or num_warps <= 0:
        raise RuntimeError(f"{kernel_id} metadata has invalid num_warps")
    if not isinstance(shared, int) or shared < 0:
        raise RuntimeError(f"{kernel_id} metadata has invalid shared_memory_bytes")
    return symbol, num_warps * 32, shared


def _attention_forward_runtime_scalar_mask(kernel_id: str, metadata: dict[str, Any]) -> int:
    layout = metadata.get("kernel_arg_layout")
    runtime_args = layout.get("runtime_scalar_args") if isinstance(layout, dict) else None
    if not isinstance(runtime_args, list) or not all(isinstance(name, str) for name in runtime_args):
        raise RuntimeError(f"{kernel_id} metadata is missing the forward runtime scalar ABI")
    expected_order = [name for name in ATTENTION_FORWARD_RUNTIME_SCALAR_ARGS if name in runtime_args]
    if runtime_args != expected_order or len(runtime_args) != len(set(runtime_args)):
        raise RuntimeError(f"{kernel_id} metadata has an invalid forward runtime scalar ABI")
    return sum(
        1 << index
        for index, name in enumerate(ATTENTION_FORWARD_RUNTIME_SCALAR_ARGS)
        if name in runtime_args
    )


def _attention_backward_runtime_scalar_mask(kernel_id: str, metadata: dict[str, Any]) -> int:
    layout = metadata.get("kernel_arg_layout")
    runtime_args = layout.get("runtime_scalar_args") if isinstance(layout, dict) else None
    if not isinstance(runtime_args, list) or not all(isinstance(name, str) for name in runtime_args):
        raise RuntimeError(f"{kernel_id} metadata is missing the backward runtime scalar ABI")
    expected_order = [name for name in ATTENTION_BACKWARD_RUNTIME_SCALAR_ARGS if name in runtime_args]
    if runtime_args != expected_order or len(runtime_args) != len(set(runtime_args)):
        raise RuntimeError(f"{kernel_id} metadata has an invalid backward runtime scalar ABI")
    return sum(
        1 << index
        for index, name in enumerate(ATTENTION_BACKWARD_RUNTIME_SCALAR_ARGS)
        if name in runtime_args
    )


def launch_precompiled_attention_forward(
    kernel_id: str,
    *,
    query: Any,
    key: Any,
    value: Any,
    query_scale: Any,
    key_scale: Any,
    value_scale: Any,
    attn_mask: Any,
    out: Any,
    workspace: Any,
    grid: tuple[int, int, int],
    batch: int,
    query_heads: int,
    kv_heads: int,
    query_length: int,
    key_length: int,
    head_dim: int,
    packed_head_dim: int,
    value_dim: int,
    decode_splits: int,
    softmax_scale: float,
    mask_strides: tuple[int, int, int, int],
    is_causal: bool,
    has_window: bool,
    window_left: int,
    window_right: int,
    query_position_offset: int,
    root: str | Path | None = None,
) -> None:
    from .native import launch_attention_fwd_hsaco

    artifact = _attention_artifact(kernel_id, phase=ATTENTION_FORWARD, root=root)
    if artifact is None:
        raise RuntimeError(f"precompiled attention artifact {kernel_id} is not installed")
    library, hsaco, metadata = artifact
    symbol, block_size, shared = _launch_values(kernel_id, metadata)
    runtime_scalar_mask = _attention_forward_runtime_scalar_mask(kernel_id, metadata)
    import torch

    device_index = 0 if query.device.index is None else int(query.device.index)
    stream_handle = int(torch.cuda.current_stream(query.device).cuda_stream)
    launch_attention_fwd_hsaco(
        hsaco_path=hsaco,
        symbol=symbol,
        device_index=device_index,
        grid=grid,
        block=(block_size, 1, 1),
        shared_memory_bytes=shared,
        stream_handle=stream_handle,
        query_ptr=query.data_ptr(),
        key_ptr=key.data_ptr(),
        value_ptr=value.data_ptr(),
        query_scale_ptr=query_scale.data_ptr(),
        key_scale_ptr=key_scale.data_ptr(),
        value_scale_ptr=value_scale.data_ptr(),
        attn_mask_ptr=attn_mask.data_ptr(),
        out_ptr=out.data_ptr(),
        workspace_ptr=workspace.data_ptr(),
        batch=batch,
        query_heads=query_heads,
        kv_heads=kv_heads,
        query_length=query_length,
        key_length=key_length,
        head_dim=head_dim,
        packed_head_dim=packed_head_dim,
        value_dim=value_dim,
        decode_splits=decode_splits,
        softmax_scale=softmax_scale,
        mask_strides=mask_strides,
        is_causal=is_causal,
        has_window=has_window,
        window_left=window_left,
        window_right=window_right,
        query_position_offset=query_position_offset,
        runtime_scalar_mask=runtime_scalar_mask,
        library_path=library,
    )


def launch_precompiled_attention_backward(
    kernel_id: str,
    *,
    phase: str,
    query: Any,
    key: Any,
    value: Any,
    query_scale: Any,
    key_scale: Any,
    value_scale: Any,
    attn_mask: Any,
    output: Any,
    grad_output: Any,
    lse: Any,
    delta: Any,
    grad_query: Any,
    grad_key: Any,
    grad_value: Any,
    grid: tuple[int, int, int],
    batch: int,
    query_heads: int,
    kv_heads: int,
    query_length: int,
    key_length: int,
    head_dim: int,
    packed_head_dim: int,
    value_dim: int,
    softmax_scale: float,
    mask_strides: tuple[int, int, int, int],
    is_causal: bool,
    has_window: bool,
    window_left: int,
    window_right: int,
    query_position_offset: int,
    root: str | Path | None = None,
) -> None:
    from .native import launch_attention_bwd_hsaco

    if phase not in ATTENTION_BACKWARD_PHASES:
        raise ValueError(f"unsupported attention backward phase {phase!r}")
    artifact = _attention_artifact(kernel_id, phase=phase, root=root)
    if artifact is None:
        raise RuntimeError(f"precompiled attention artifact {kernel_id} is not installed")
    library, hsaco, metadata = artifact
    symbol, block_size, shared = _launch_values(kernel_id, metadata)
    runtime_scalar_mask = _attention_backward_runtime_scalar_mask(kernel_id, metadata)
    if phase == ATTENTION_BACKWARD_DQ:
        buffers = (
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
            delta,
            grad_query,
        )
    else:
        buffers = (
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
        )
    import torch

    device_index = 0 if query.device.index is None else int(query.device.index)
    stream_handle = int(torch.cuda.current_stream(query.device).cuda_stream)
    launch_attention_bwd_hsaco(
        hsaco_path=hsaco,
        symbol=symbol,
        device_index=device_index,
        grid=grid,
        block=(block_size, 1, 1),
        shared_memory_bytes=shared,
        stream_handle=stream_handle,
        buffer_ptrs=tuple(buffer.data_ptr() for buffer in buffers),
        batch=batch,
        query_heads=query_heads,
        kv_heads=kv_heads,
        query_length=query_length,
        key_length=key_length,
        head_dim=head_dim,
        packed_head_dim=packed_head_dim,
        value_dim=value_dim,
        softmax_scale=softmax_scale,
        mask_strides=mask_strides,
        is_causal=is_causal,
        has_window=has_window,
        window_left=window_left,
        window_right=window_right,
        query_position_offset=query_position_offset,
        runtime_scalar_mask=runtime_scalar_mask,
        library_path=library,
    )


def launch_precompiled_attention_reduce(
    kernel_id: str,
    *,
    workspace: Any,
    out: Any,
    grid: tuple[int, int, int],
    value_dim: int,
    decode_splits: int,
    root: str | Path | None = None,
) -> None:
    from .native import launch_attention_reduce_hsaco

    artifact = _attention_artifact(kernel_id, phase=ATTENTION_DECODE_REDUCE, root=root)
    if artifact is None:
        raise RuntimeError(f"precompiled attention artifact {kernel_id} is not installed")
    library, hsaco, metadata = artifact
    symbol, block_size, shared = _launch_values(kernel_id, metadata)
    import torch

    device_index = 0 if workspace.device.index is None else int(workspace.device.index)
    stream_handle = int(torch.cuda.current_stream(workspace.device).cuda_stream)
    launch_attention_reduce_hsaco(
        hsaco_path=hsaco,
        symbol=symbol,
        device_index=device_index,
        grid=grid,
        block=(block_size, 1, 1),
        shared_memory_bytes=shared,
        stream_handle=stream_handle,
        workspace_ptr=workspace.data_ptr(),
        out_ptr=out.data_ptr(),
        value_dim=value_dim,
        decode_splits=decode_splits,
        library_path=library,
    )

from __future__ import annotations

import json
import os
from functools import lru_cache
from pathlib import Path
from typing import Any

from .kda_artifacts import (
    KDA_ARGUMENT_NAMES,
    KDA_FAMILY,
    KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD,
    KDA_PRECOMPILED_CHECKPOINT_INTERVAL,
    KDA_PRECOMPILED_HEAD_DIM,
    KDA_PRECOMPILED_MAX_SEQUENCE,
    KDA_PRECOMPILED_MIN_SEQUENCE,
    KDA_PRECOMPILED_VALUE_BLOCK,
    KDA_PRECOMPILED_VALUE_DIM,
    KdaArtifactJob,
    kda_kernel_id,
)


_RDNA_BUFFER_DESCRIPTOR_BYTES = 2**32


def kda_native_root() -> Path | None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    return Path(configured) if configured else None


@lru_cache(maxsize=None)
def _read_kda_metadata(path_value: str) -> dict[str, Any]:
    return json.loads(Path(path_value).read_text())


def _kda_artifact(
    job: KdaArtifactJob,
    *,
    root: str | Path | None = None,
) -> tuple[Path, Path, dict[str, Any]] | None:
    from .native import (
        amdgcn_metadata_path_for_kernel_id,
        hsaco_path_for_kernel_id,
        native_library_path,
    )

    resolved_root = kda_native_root() if root is None else Path(root)
    kernel_id = kda_kernel_id(job)
    library = native_library_path(root=resolved_root)
    hsaco = hsaco_path_for_kernel_id(kernel_id, root=resolved_root)
    metadata_path = amdgcn_metadata_path_for_kernel_id(kernel_id, root=resolved_root)
    if not library.exists() or not hsaco.exists() or not metadata_path.exists():
        return None
    metadata = _read_kda_metadata(str(metadata_path))
    if metadata.get("family") != KDA_FAMILY or metadata.get("phase") != job.phase:
        raise RuntimeError(f"{kernel_id} is not a generated {job.phase} KDA artifact")
    if metadata.get("kernel_id") != kernel_id:
        raise RuntimeError(f"KDA metadata kernel_id mismatch for {kernel_id}")
    return library, hsaco, metadata


def precompiled_kda_available(
    job: KdaArtifactJob,
    *,
    root: str | Path | None = None,
) -> bool:
    return _kda_artifact(job, root=root) is not None


def is_precompiled_kda_workload(
    *,
    batch: int,
    sequence: int,
    heads: int,
    head_dim: int,
    value_dim: int,
    value_block: int,
    checkpoint_interval: int,
    needs_state_cache: bool = False,
) -> bool:
    if not (
        batch > 0
        and KDA_PRECOMPILED_MIN_SEQUENCE <= sequence <= KDA_PRECOMPILED_MAX_SEQUENCE
        and heads > 0
        and head_dim == KDA_PRECOMPILED_HEAD_DIM
        and value_dim == KDA_PRECOMPILED_VALUE_DIM
        and value_block == KDA_PRECOMPILED_VALUE_BLOCK
        and checkpoint_interval == KDA_PRECOMPILED_CHECKPOINT_INTERVAL
    ):
        return False

    # RDNA 3.5 buffer descriptors expose a 32-bit byte offset.  Ordinary KDA
    # tensors and the FP32 backward workspaces use one descriptor each.
    rows = batch * sequence * heads
    largest_row_bytes = max(head_dim, value_dim) * 4
    if rows * largest_row_bytes > _RDNA_BUFFER_DESCRIPTOR_BYTES:
        return False
    if not needs_state_cache:
        return True

    # The FP32 checkpoint cache is split at a compile-time batch-head index.
    # Both the base and tail descriptor must independently stay within 4 GiB.
    num_checkpoints = (sequence + checkpoint_interval - 1) // checkpoint_interval + 1
    cache_bytes_per_batch_head = num_checkpoints * head_dim * value_dim * 4
    batch_heads = batch * heads
    base_batch_heads = min(batch_heads, KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD)
    tail_batch_heads = max(0, batch_heads - KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD)
    return (
        max(base_batch_heads, tail_batch_heads) * cache_bytes_per_batch_head
        <= _RDNA_BUFFER_DESCRIPTOR_BYTES
    )


def kda_precompiled_cache_tail(state_cache: Any) -> Any:
    if getattr(state_cache, "ndim", None) != 5:
        raise ValueError("state_cache must have shape [B, H, checkpoints, D, Dv]")
    batch_heads = int(state_cache.shape[0]) * int(state_cache.shape[1])
    if batch_heads <= KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD:
        # The tail descriptor is not dereferenced for this grid.  Reusing the
        # base pointer avoids passing a null pointer for an empty slice.
        return state_cache
    elements_per_batch_head = (
        int(state_cache.shape[2])
        * int(state_cache.shape[3])
        * int(state_cache.shape[4])
    )
    tail_start = KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD * elements_per_batch_head
    return state_cache.reshape(-1)[tail_start:]


def _launch_values(
    kernel_id: str,
    metadata: dict[str, Any],
    runtime_grid: tuple[int, ...],
) -> tuple[str, tuple[int, int, int], tuple[int, int, int], int]:
    symbol = metadata.get("amdgcn_symbol")
    launch = metadata.get("launch_metadata")
    if not isinstance(symbol, str) or not symbol:
        raise RuntimeError(f"{kernel_id} metadata is missing amdgcn_symbol")
    if not isinstance(launch, dict):
        raise RuntimeError(f"{kernel_id} metadata is missing launch_metadata")
    values = {
        name: launch.get(name)
        for name in (
            "num_warps",
            "shared_memory_bytes",
            "grid_x",
            "grid_y",
            "grid_z",
        )
    }
    if not isinstance(values["num_warps"], int) or values["num_warps"] <= 0:
        raise RuntimeError(f"{kernel_id} metadata has invalid num_warps")
    if not isinstance(values["shared_memory_bytes"], int) or values["shared_memory_bytes"] < 0:
        raise RuntimeError(f"{kernel_id} metadata has invalid shared_memory_bytes")
    for name in ("grid_x", "grid_y", "grid_z"):
        if not isinstance(values[name], int) or values[name] <= 0:
            raise RuntimeError(f"{kernel_id} metadata has invalid {name}")
    if len(runtime_grid) not in {2, 3}:
        raise ValueError("KDA runtime grid must have two or three dimensions")
    grid = tuple(runtime_grid) if len(runtime_grid) == 3 else (*runtime_grid, 1)
    if any(not isinstance(value, int) or isinstance(value, bool) or value <= 0 for value in grid):
        raise ValueError("KDA runtime grid dimensions must be positive integers")
    if any(value > 0xFFFFFFFF for value in grid):
        raise ValueError("KDA runtime grid dimensions must fit uint32")
    block = (values["num_warps"] * 32, 1, 1)
    return symbol, grid, block, values["shared_memory_bytes"]


def _raw_arguments(
    *,
    job: KdaArtifactJob,
    kernel_id: str,
    metadata: dict[str, Any],
    values: dict[str, Any],
) -> tuple[tuple[str, int | float], ...]:
    layout = metadata.get("kernel_arg_layout")
    arguments = layout.get("arguments") if isinstance(layout, dict) else None
    if not isinstance(arguments, list) or not all(isinstance(arg, dict) for arg in arguments):
        raise RuntimeError(f"{kernel_id} metadata is missing the KDA runtime ABI")
    actual_names = tuple(argument.get("name") for argument in arguments)
    if actual_names != KDA_ARGUMENT_NAMES[job.phase]:
        raise RuntimeError(f"{kernel_id} metadata has an invalid KDA runtime ABI")
    raw: list[tuple[str, int | float]] = []
    for argument in arguments:
        name = argument["name"]
        value = values.get(name)
        kind = argument.get("kind")
        type_name = argument.get("type")
        if kind == "pointer":
            if value is None or not callable(getattr(value, "data_ptr", None)):
                raise TypeError(f"KDA pointer argument {name} must be a tensor")
            raw.append(("pointer", int(value.data_ptr())))
        elif kind == "scalar" and type_name in {"i32", "u32", "i64", "u64", "fp32", "fp64"}:
            if value is None:
                raise TypeError(f"KDA scalar argument {name} is missing")
            raw.append((type_name, value))
        else:
            raise RuntimeError(
                f"{kernel_id} metadata has unsupported argument {name}: "
                f"kind={kind!r}, type={type_name!r}"
            )
    return tuple(raw)


def launch_precompiled_kda(
    job: KdaArtifactJob,
    *,
    values: dict[str, Any],
    reference_tensor: Any,
    grid: tuple[int, ...],
    root: str | Path | None = None,
) -> None:
    from .native import launch_raw_hsaco

    kernel_id = kda_kernel_id(job)
    artifact = _kda_artifact(job, root=root)
    if artifact is None:
        raise RuntimeError(f"precompiled KDA artifact {kernel_id} is not installed")
    library, hsaco, metadata = artifact
    symbol, launch_grid, block, shared = _launch_values(kernel_id, metadata, grid)
    arguments = _raw_arguments(
        job=job,
        kernel_id=kernel_id,
        metadata=metadata,
        values=values,
    )
    import torch

    device_index = 0 if reference_tensor.device.index is None else int(reference_tensor.device.index)
    stream_handle = int(torch.cuda.current_stream(reference_tensor.device).cuda_stream)
    launch_raw_hsaco(
        hsaco_path=hsaco,
        symbol=symbol,
        device_index=device_index,
        grid=launch_grid,
        block=block,
        shared_memory_bytes=shared,
        stream_handle=stream_handle,
        arguments=arguments,
        library_path=library,
    )

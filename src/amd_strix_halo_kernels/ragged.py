from __future__ import annotations

from dataclasses import dataclass
from functools import lru_cache
from typing import Any

from .metadata import Epilogue, GemmLayout, OutputDType, ScaleMode, ScaleSpec
from .quant import QuantizedInt4Tensor
from .ragged_artifacts import (
    RAGGED_BWD,
    RAGGED_BWD_ACCUM,
    RAGGED_BWD_PREBUILT_SPECIALIZED_LAYOUTS,
    RAGGED_BWD_PREBUILT_SPECIALIZED_SHAPES,
    RAGGED_EVEN_K,
    RAGGED_FWD,
    RAGGED_MASK_K,
    RAGGED_VARIANTS,
)


@dataclass(frozen=True, slots=True)
class RaggedDotConfig:
    """Triton launch configuration for forward ragged int4 dot."""

    block_m: int = 64
    block_n: int = 256
    block_k: int = 64
    align_tile: int = 8
    group_size_tasks: int = 1
    enable_even_k_fast_path: bool = True
    num_warps: int = 8
    num_stages: int = 3

    def __post_init__(self) -> None:
        if self.block_m <= 0 or self.block_n <= 0 or self.block_k <= 0:
            raise ValueError("block_m, block_n, and block_k must be positive")
        if self.block_k % 2 != 0:
            raise ValueError("block_k must be even for packed int4 operands")
        if self.align_tile <= 0:
            raise ValueError("align_tile must be positive")
        if self.block_m % self.align_tile != 0:
            raise ValueError("block_m must be a multiple of align_tile")
        if self.group_size_tasks <= 0:
            raise ValueError("group_size_tasks must be positive")
        if self.num_warps <= 0 or self.num_stages <= 0:
            raise ValueError("num_warps and num_stages must be positive")


@dataclass(frozen=True, slots=True)
class RaggedBwdDotConfig:
    """Triton launch configuration for K-ragged split-K int4 backward dot."""

    block_m: int = 64
    block_n: int = 256
    block_k: int = 64
    split_k: int = 1
    num_warps: int = 8
    num_stages: int = 3
    enable_even_k_fast_path: bool = True

    def __post_init__(self) -> None:
        if self.block_m <= 0 or self.block_n <= 0 or self.block_k <= 0:
            raise ValueError("block_m, block_n, and block_k must be positive")
        if self.block_k % 2 != 0:
            raise ValueError("block_k must be even for packed int4 operands")
        if self.split_k <= 0:
            raise ValueError("split_k must be positive")
        if self.num_warps <= 0 or self.num_stages <= 0:
            raise ValueError("num_warps and num_stages must be positive")


def _should_try_native_bwd(
    *,
    use_native: bool | None,
    layout: GemmLayout,
    output_is_bf16: bool,
    split_k: int,
    rows: int,
    cols: int,
    logical_k_capacity: int,
    out_data_ptr: int,
) -> bool:
    """Resolve automatic standard-backward dispatch without device reads."""

    if use_native is not None:
        return use_native
    if not output_is_bf16 or split_k != 1:
        return True
    return (
        layout in RAGGED_BWD_PREBUILT_SPECIALIZED_LAYOUTS
        and (rows, cols, logical_k_capacity) in RAGGED_BWD_PREBUILT_SPECIALIZED_SHAPES
        and out_data_ptr % 16 == 0
    )


_RAGGED_BWD_BF16_EVEN_TILES: dict[tuple[GemmLayout, str], tuple[int, int, int]] = {
    (GemmLayout.NN, "pc"): (64, 64, 4),
    (GemmLayout.NN, "sc32"): (64, 256, 8),
    (GemmLayout.NN, "sc64"): (32, 128, 4),
    (GemmLayout.NN, "sc128"): (32, 128, 4),
    (GemmLayout.NN, "sc256"): (64, 64, 4),
    (GemmLayout.NT, "pc"): (128, 64, 8),
    (GemmLayout.NT, "sc32"): (64, 64, 4),
    (GemmLayout.NT, "sc64"): (64, 64, 4),
    (GemmLayout.NT, "sc128"): (64, 64, 4),
    (GemmLayout.NT, "sc256"): (128, 64, 8),
    (GemmLayout.TN, "pc"): (32, 128, 4),
    (GemmLayout.TN, "sc32"): (32, 128, 4),
    (GemmLayout.TN, "sc64"): (32, 128, 4),
    (GemmLayout.TN, "sc128"): (64, 64, 4),
    (GemmLayout.TN, "sc256"): (64, 64, 4),
    (GemmLayout.TT, "pc"): (64, 64, 4),
    (GemmLayout.TT, "sc32"): (64, 64, 4),
    (GemmLayout.TT, "sc64"): (64, 64, 4),
    (GemmLayout.TT, "sc128"): (64, 64, 4),
    (GemmLayout.TT, "sc256"): (64, 64, 4),
}
_RAGGED_BWD_BF16_MASKED_TILES: dict[tuple[GemmLayout, str], tuple[int, int, int]] = {
    (GemmLayout.NN, "pc"): (64, 256, 8),
    (GemmLayout.NN, "sc32"): (64, 256, 8),
    (GemmLayout.NN, "sc64"): (64, 256, 8),
    (GemmLayout.NN, "sc128"): (64, 256, 8),
    (GemmLayout.NN, "sc256"): (64, 256, 8),
    (GemmLayout.NT, "pc"): (128, 64, 8),
    (GemmLayout.NT, "sc32"): (64, 256, 8),
    (GemmLayout.NT, "sc64"): (64, 64, 4),
    (GemmLayout.NT, "sc128"): (64, 64, 4),
    (GemmLayout.NT, "sc256"): (64, 64, 4),
    (GemmLayout.TN, "pc"): (64, 64, 4),
    (GemmLayout.TN, "sc32"): (32, 128, 4),
    (GemmLayout.TN, "sc64"): (64, 64, 4),
    (GemmLayout.TN, "sc128"): (64, 64, 4),
    (GemmLayout.TN, "sc256"): (64, 64, 4),
    (GemmLayout.TT, "pc"): (128, 64, 8),
    (GemmLayout.TT, "sc32"): (128, 64, 8),
    (GemmLayout.TT, "sc64"): (64, 64, 4),
    (GemmLayout.TT, "sc128"): (64, 64, 4),
    (GemmLayout.TT, "sc256"): (64, 64, 4),
}


def default_ragged_bwd_config(
    *,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    output_dtype: str = "bfloat16",
) -> RaggedBwdDotConfig:
    """Return the tuned standard-backward configuration for a dispatch key.

    FP32 keeps the conservative runtime-shape baseline. BF16 uses measured
    layout-, scale-, and K-variant-specific tiles to avoid transpose-related
    register spills and oversized output relayouts.
    """

    layout = _check_layout(layout)
    if variant not in RAGGED_VARIANTS:
        raise ValueError(f"variant must be one of {RAGGED_VARIANTS}; got {variant!r}")
    if output_dtype not in {"bfloat16", "float32"}:
        raise ValueError(f"output_dtype must be 'bfloat16' or 'float32'; got {output_dtype!r}")
    if output_dtype == "float32":
        return RaggedBwdDotConfig(enable_even_k_fast_path=variant == RAGGED_EVEN_K)

    key = (layout, scale.label)
    block_m, block_n, num_warps = (
        _RAGGED_BWD_BF16_EVEN_TILES
        if variant == RAGGED_EVEN_K
        else _RAGGED_BWD_BF16_MASKED_TILES
    ).get(key, (64, 256, 8))
    return RaggedBwdDotConfig(
        block_m=block_m,
        block_n=block_n,
        num_warps=num_warps,
        num_stages=3,
        enable_even_k_fast_path=variant == RAGGED_EVEN_K,
    )


RAGGED_BWD_ACCUM_CONFIG = RaggedBwdDotConfig(
    block_m=32,
    block_n=128,
    num_warps=4,
    num_stages=2,
)


@dataclass(frozen=True, slots=True)
class RaggedGroupInfo:
    """Compact row-block assignments for grouped ragged dot."""

    group_id: Any
    block_start: Any
    actual_start: Any
    actual_end: Any
    start_within_block: Any
    actual_size: Any
    num_tasks: int
    rows: int | None = None
    groups: int | None = None
    tile: int | None = None
    align_tile: int | None = None
    fixed_capacity: bool = False


@dataclass(frozen=True, slots=True)
class RaggedBwdGroupInfo:
    """Prevalidated group metadata for graph-safe standard backward launches."""

    group_sizes: Any
    groups: int
    k_capacity: int
    block_k: int
    scale: ScaleSpec
    variant: str
    dynamic_group_sizes: bool = False


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for ragged_dot_int4") from exc
    return torch


def _triton() -> tuple[Any, Any]:
    try:
        import triton
        import triton.language as tl
    except ImportError as exc:
        raise RuntimeError("triton is required for ragged_dot_int4") from exc
    return triton, tl


def _have_triton() -> bool:
    try:
        import triton  # noqa: F401

        return True
    except ImportError:
        return False


def _cdiv(x: int, y: int) -> int:
    return (x + y - 1) // y


def _raise_or_fallback(use_native: bool | None, exc: Exception) -> None:
    if use_native is True:
        raise exc



def _is_integer_dtype(torch: Any, dtype: Any) -> bool:
    return dtype in {
        torch.int8,
        torch.int16,
        torch.int32,
        torch.int64,
        torch.uint8,
    }


def _check_layout(layout: GemmLayout) -> GemmLayout:
    if type(layout) is not GemmLayout:
        raise TypeError(f"layout must be a GemmLayout, got {type(layout).__name__}")
    return layout


@lru_cache(maxsize=1)
def _calculate_group_info_kernel() -> Any:
    triton, tl = _triton()

    @triton.jit
    def kernel(
        group_starts,
        group_start_tasks,
        group_id_out,
        block_start_out,
        actual_start_out,
        actual_end_out,
        start_within_block_out,
        actual_size_out,
        TASK_CAPACITY: tl.constexpr,
        GROUPS: tl.constexpr,
        TILE: tl.constexpr,
        ALIGN_TILE: tl.constexpr,
        SEARCH_STEPS: tl.constexpr,
        BLOCK_TASKS: tl.constexpr,
    ):
        offsets = tl.program_id(0) * BLOCK_TASKS + tl.arange(0, BLOCK_TASKS)
        in_capacity = offsets < TASK_CAPACITY
        num_tasks = tl.load(group_start_tasks + GROUPS)
        valid_task = offsets < num_tasks

        lo = tl.zeros((BLOCK_TASKS,), tl.int64)
        hi = tl.full((BLOCK_TASKS,), GROUPS, tl.int64)
        for _ in range(0, SEARCH_STEPS):
            mid = (lo + hi) // 2
            task_end = tl.load(group_start_tasks + mid + 1, mask=mid < GROUPS, other=0)
            go_right = task_end <= offsets
            lo = tl.where(go_right, mid + 1, lo)
            hi = tl.where(go_right, hi, mid)

        group_id = tl.minimum(lo, GROUPS - 1)
        group_start = tl.load(group_starts + group_id, mask=valid_task, other=0)
        group_end = tl.load(group_starts + group_id + 1, mask=valid_task, other=0)
        task_start = tl.load(group_start_tasks + group_id, mask=valid_task, other=0)
        task_block = offsets - task_start
        aligned_start = (group_start // ALIGN_TILE) * ALIGN_TILE
        block_start = aligned_start + task_block * TILE
        actual_start = tl.maximum(block_start, group_start)
        actual_end = tl.minimum(block_start + TILE, group_end)
        actual_size = tl.maximum(actual_end - actual_start, 0)

        zero = tl.zeros((BLOCK_TASKS,), tl.int64)
        tl.store(group_id_out + offsets, tl.where(valid_task, group_id, zero), mask=in_capacity)
        tl.store(block_start_out + offsets, tl.where(valid_task, block_start, zero), mask=in_capacity)
        tl.store(actual_start_out + offsets, tl.where(valid_task, actual_start, zero), mask=in_capacity)
        tl.store(actual_end_out + offsets, tl.where(valid_task, actual_end, zero), mask=in_capacity)
        tl.store(
            start_within_block_out + offsets,
            tl.where(valid_task, actual_start - block_start, zero),
            mask=in_capacity,
        )
        tl.store(actual_size_out + offsets, tl.where(valid_task, actual_size, zero), mask=in_capacity)

    return kernel


def _empty_group_info(
    torch: Any,
    *,
    device: Any,
    capacity: int,
    num_tasks: int = 0,
    rows: int | None = None,
    groups: int | None = None,
    tile: int | None = None,
    align_tile: int | None = None,
    fixed_capacity: bool = False,
) -> RaggedGroupInfo:
    kwargs = {"device": device, "dtype": torch.int64}
    return RaggedGroupInfo(
        group_id=torch.empty((capacity,), **kwargs),
        block_start=torch.empty((capacity,), **kwargs),
        actual_start=torch.empty((capacity,), **kwargs),
        actual_end=torch.empty((capacity,), **kwargs),
        start_within_block=torch.empty((capacity,), **kwargs),
        actual_size=torch.empty((capacity,), **kwargs),
        num_tasks=num_tasks,
        rows=rows,
        groups=groups,
        tile=tile,
        align_tile=align_tile,
        fixed_capacity=fixed_capacity,
    )


def ragged_group_info_capacity(rows: int, groups: int, tile: int, *, align_tile: int = 8) -> int:
    """Return a safe fixed task capacity for any valid row partition.

    The bound accounts for one initial task per non-empty group plus the
    cheapest possible additional tile after aligning a group start down to
    ``align_tile``. It depends only on static shapes, so callers can use it
    while capturing a CUDA/HIP graph.
    """

    rows = int(rows)
    groups = int(groups)
    tile = int(tile)
    align_tile = int(align_tile)
    if rows < 0 or groups < 0:
        raise ValueError("rows and groups must be non-negative")
    if tile <= 0 or align_tile <= 0:
        raise ValueError("tile and align_tile must be positive")
    if tile % align_tile != 0:
        raise ValueError("tile must be a multiple of align_tile")
    nonempty_groups = min(rows, groups)
    if nonempty_groups == 0:
        return 0
    rows_per_additional_task = tile - align_tile + 1
    return nonempty_groups + (rows - nonempty_groups) // rows_per_additional_task


def _group_info_prefixes(group_sizes: Any, tile: int, align_tile: int) -> tuple[Any, Any, Any, Any]:
    torch = _torch()
    sizes = torch.clamp(group_sizes.to(dtype=torch.int64), min=0)
    groups = int(sizes.shape[0])
    zero = torch.zeros((1,), device=sizes.device, dtype=torch.int64)
    group_starts = torch.cat((zero, torch.cumsum(sizes, dim=0))) if groups else zero
    starts = group_starts[:-1]
    aligned_starts = torch.div(starts, align_tile, rounding_mode="floor") * align_tile
    ends = starts + sizes
    blocks_numer = ends - aligned_starts + tile - 1
    group_num_blocks = torch.where(
        sizes == 0,
        torch.zeros_like(sizes),
        torch.div(blocks_numer, tile, rounding_mode="floor"),
    )
    group_start_tasks = torch.cat((zero, torch.cumsum(group_num_blocks, dim=0))) if groups else zero
    return sizes, group_starts, aligned_starts, group_start_tasks


def _populate_group_info(
    *,
    sizes: Any,
    group_starts: Any,
    aligned_starts: Any,
    group_start_tasks: Any,
    capacity: int,
    num_tasks: int,
    tile: int,
    align_tile: int,
    rows: int | None,
    fixed_capacity: bool,
    allow_triton: bool,
) -> RaggedGroupInfo:
    torch = _torch()
    groups = int(sizes.shape[0])
    info = _empty_group_info(
        torch,
        device=sizes.device,
        capacity=capacity,
        num_tasks=num_tasks,
        rows=rows,
        groups=groups,
        tile=tile,
        align_tile=align_tile,
        fixed_capacity=fixed_capacity,
    )
    if capacity == 0:
        return info
    if groups == 0:
        info.group_id.zero_()
        info.block_start.zero_()
        info.actual_start.zero_()
        info.actual_end.zero_()
        info.start_within_block.zero_()
        info.actual_size.zero_()
        return info
    if sizes.is_cuda and allow_triton and _have_triton():
        triton, _ = _triton()
        block_tasks = 256
        search_steps = max(1, groups.bit_length())
        _calculate_group_info_kernel()[(triton.cdiv(capacity, block_tasks),)](
            group_starts,
            group_start_tasks,
            info.group_id,
            info.block_start,
            info.actual_start,
            info.actual_end,
            info.start_within_block,
            info.actual_size,
            TASK_CAPACITY=capacity,
            GROUPS=groups,
            TILE=tile,
            ALIGN_TILE=align_tile,
            SEARCH_STEPS=search_steps,
            BLOCK_TASKS=block_tasks,
        )
        return info

    task_idx = torch.arange(capacity, device=sizes.device, dtype=torch.int64)
    actual_num_tasks = group_start_tasks[-1]
    valid = task_idx < actual_num_tasks
    task_group = torch.searchsorted(group_start_tasks[1:], task_idx, right=True)
    task_group = torch.clamp(task_group, max=groups - 1)
    task_block = task_idx - group_start_tasks[task_group]
    block_start = aligned_starts[task_group] + task_block * tile
    group_ends = group_starts[1:]
    actual_start = torch.maximum(block_start, group_starts[task_group])
    actual_end = torch.minimum(block_start + tile, group_ends[task_group])
    actual_size = torch.clamp(actual_end - actual_start, min=0)
    zero = torch.zeros_like(task_idx)
    info.group_id.copy_(torch.where(valid, task_group, zero))
    info.block_start.copy_(torch.where(valid, block_start, zero))
    info.actual_start.copy_(torch.where(valid, actual_start, zero))
    info.actual_end.copy_(torch.where(valid, actual_end, zero))
    info.start_within_block.copy_(torch.where(valid, actual_start - block_start, zero))
    info.actual_size.copy_(torch.where(valid, actual_size, zero))
    return info


def prepare_ragged_group_info(
    group_sizes: Any,
    tile: int,
    *,
    rows: int,
    task_capacity: int | None = None,
    align_tile: int = 8,
    allow_triton: bool = True,
) -> RaggedGroupInfo:
    """Build fixed-capacity routing metadata without device-to-host reads.

    This path is suitable for CUDA/HIP graph capture. ``rows`` and the number
    of groups are static shape inputs; runtime ``group_sizes`` must be
    non-negative and sum to ``rows``. Value validation is intentionally left
    to the producer because synchronously checking it would break capture.
    Unused task slots are zero-filled and safely masked by the ragged kernels.
    """

    torch = _torch()
    if not torch.is_tensor(group_sizes):
        raise TypeError("group_sizes must be a torch.Tensor")
    if group_sizes.ndim != 1:
        raise ValueError(f"group_sizes must be 1D; got shape {tuple(group_sizes.shape)}")
    if not _is_integer_dtype(torch, group_sizes.dtype):
        raise ValueError(f"group_sizes must have integer dtype; got {group_sizes.dtype}")
    rows = int(rows)
    groups = int(group_sizes.shape[0])
    minimum_capacity = ragged_group_info_capacity(rows, groups, tile, align_tile=align_tile)
    capacity = minimum_capacity if task_capacity is None else int(task_capacity)
    if capacity < minimum_capacity:
        raise ValueError(
            f"task_capacity must be at least the static safe bound {minimum_capacity}; got {capacity}"
        )
    sizes, group_starts, aligned_starts, group_start_tasks = _group_info_prefixes(
        group_sizes,
        tile,
        align_tile,
    )
    return _populate_group_info(
        sizes=sizes,
        group_starts=group_starts,
        aligned_starts=aligned_starts,
        group_start_tasks=group_start_tasks,
        capacity=capacity,
        num_tasks=capacity,
        tile=tile,
        align_tile=align_tile,
        rows=rows,
        fixed_capacity=True,
        allow_triton=allow_triton,
    )


def calculate_group_info(
    group_sizes: Any,
    tile: int,
    *,
    tid_size: int | None = None,
    align_tile: int = 8,
    allow_triton: bool = True,
) -> RaggedGroupInfo:
    """Calculate aligned row-block assignments.

    ``group_sizes`` is a 1D integer tensor. Group ``g`` owns the contiguous row
    range ``[sum(group_sizes[:g]), sum(group_sizes[:g + 1]))``. The returned
    tensors map compact task ids to the group and row block that should be
    processed. ``block_start`` may be before ``actual_start`` when a group
    begins inside an aligned block; rows outside ``[actual_start, actual_end)``
    must be masked by the consumer.

    If ``tid_size`` is omitted, output tensors are sized to exactly
    ``num_tasks``. If it is provided, it must be at least ``num_tasks`` and the
    extra slots are zero-filled with ``actual_size == 0``.

    For CUDA inputs the task tensors are built with a Triton kernel by default;
    set ``allow_triton=False`` to use the pure-PyTorch path instead (identical
    results), which the native HSACO ragged dispatch uses so it does not require
    Triton at runtime.
    """

    torch = _torch()
    if not torch.is_tensor(group_sizes):
        raise TypeError("group_sizes must be a torch.Tensor")
    if group_sizes.ndim != 1:
        raise ValueError(f"group_sizes must be 1D; got shape {tuple(group_sizes.shape)}")
    if not _is_integer_dtype(torch, group_sizes.dtype):
        raise ValueError(f"group_sizes must have integer dtype; got {group_sizes.dtype}")
    if tile <= 0:
        raise ValueError("tile must be positive")
    if align_tile <= 0:
        raise ValueError("align_tile must be positive")
    if tile % align_tile != 0:
        raise ValueError("tile must be a multiple of align_tile")
    if tid_size is not None and tid_size < 0:
        raise ValueError("tid_size must be non-negative")

    sizes, group_starts, aligned_starts, group_start_tasks = _group_info_prefixes(
        group_sizes,
        tile,
        align_tile,
    )
    groups = int(sizes.shape[0])
    if groups == 0:
        capacity = tid_size or 0
        return _populate_group_info(
            sizes=sizes,
            group_starts=group_starts,
            aligned_starts=aligned_starts,
            group_start_tasks=group_start_tasks,
            capacity=capacity,
            num_tasks=0,
            tile=tile,
            align_tile=align_tile,
            rows=0,
            fixed_capacity=tid_size is not None,
            allow_triton=allow_triton,
        )

    num_tasks = int(group_start_tasks[-1].detach().cpu().item())
    capacity = num_tasks if tid_size is None else tid_size
    if capacity < num_tasks:
        raise ValueError(f"tid_size must be at least {num_tasks}; got {capacity}")
    return _populate_group_info(
        sizes=sizes,
        group_starts=group_starts,
        aligned_starts=aligned_starts,
        group_start_tasks=group_start_tasks,
        capacity=capacity,
        num_tasks=num_tasks,
        tile=tile,
        align_tile=align_tile,
        rows=None,
        fixed_capacity=tid_size is not None,
        allow_triton=allow_triton,
    )


def _can_use_even_k_fast_path(
    *,
    logical_k: int,
    scale: ScaleSpec,
    config: RaggedDotConfig,
) -> bool:
    if not config.enable_even_k_fast_path:
        return False
    if logical_k % config.block_k != 0:
        return False
    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or 0
        if logical_k % subchannel != 0:
            return False
        if subchannel % config.block_k != 0 and config.block_k % subchannel != 0:
            return False
    return True


def _can_use_bwd_even_k_fast_path(
    torch: Any,
    *,
    group_sizes: Any,
    scale: ScaleSpec,
    config: RaggedBwdDotConfig,
) -> bool:
    if not config.enable_even_k_fast_path:
        return False
    host_sizes = group_sizes.detach().cpu()
    positive_sizes = host_sizes[host_sizes > 0]
    if int(positive_sizes.numel()) == 0:
        return True
    if bool((positive_sizes % config.block_k != 0).any()):
        return False
    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or 0
        if subchannel <= 0 or bool((positive_sizes % subchannel != 0).any()):
            return False
        if subchannel % config.block_k != 0 and config.block_k % subchannel != 0:
            return False
    return True


@lru_cache(maxsize=2)
def _ragged_dot_int4_even_k_kernel(*, specialize_runtime_args: bool = False) -> Any:
    triton, tl = _triton()
    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS")
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
        lhs,
        rhs,
        lhs_scale,
        rhs_scale,
        task_group_ids,
        task_block_starts,
        task_actual_starts,
        task_actual_ends,
        out,
        M,
        N,
        K_PACKED,
        SCALE_COLS,
        NUM_TASKS,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_K: tl.constexpr,
        HAS_LHS_SCALE: tl.constexpr,
        HAS_RHS_SCALE: tl.constexpr,
        SUBCHANNEL: tl.constexpr,
        GROUP_SIZE_TASKS: tl.constexpr,
        A_TRANS: tl.constexpr,
        B_TRANS: tl.constexpr,
    ):
        pid = tl.program_id(0)
        num_pid_n = tl.cdiv(N, BLOCK_N)
        num_pid_in_group = GROUP_SIZE_TASKS * num_pid_n
        swizzle_group = pid // num_pid_in_group
        first_task = swizzle_group * GROUP_SIZE_TASKS
        group_size = tl.minimum(NUM_TASKS - first_task, GROUP_SIZE_TASKS)
        pid_in_group = pid % num_pid_in_group
        pid_task = first_task + (pid_in_group % group_size)
        pid_n = pid_in_group // group_size

        group_id = tl.load(task_group_ids + pid_task)
        block_start = tl.load(task_block_starts + pid_task)
        actual_start = tl.load(task_actual_starts + pid_task)
        actual_end = tl.load(task_actual_ends + pid_task)
        offs_m = block_start + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
        row_mask = (offs_m >= actual_start) & (offs_m < actual_end)
        col_mask = offs_n < N

        block_k_packed: tl.constexpr = BLOCK_K // 2
        offs_k = tl.arange(0, block_k_packed)

        if SUBCHANNEL == 0:
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            k_base = 0
            while k_base < K_PACKED:
                kp = k_base + offs_k
                if A_TRANS:
                    lhs_offsets = kp[None, :] * M + offs_m[:, None]
                else:
                    lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                if B_TRANS:
                    rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                else:
                    rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                acc_i32 = tl.dot_scaled(
                    lhs_values,
                    None,
                    "int4",
                    rhs_values,
                    None,
                    "int4",
                    acc_i32,
                    out_dtype=tl.int32,
                )
                k_base += block_k_packed
            acc = acc_i32.to(tl.float32)
            if HAS_LHS_SCALE:
                lhs_scale_values = tl.load(lhs_scale + offs_m, mask=row_mask, other=0.0).to(tl.float32)
                acc *= lhs_scale_values[:, None]
            if HAS_RHS_SCALE:
                rhs_scale_values = tl.load(
                    rhs_scale + group_id * N + offs_n,
                    mask=col_mask,
                    other=0.0,
                ).to(tl.float32)
                acc *= rhs_scale_values[None, :]
        else:
            packed_per_scale: tl.constexpr = SUBCHANNEL // 2
            scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
            offs_k_scale = tl.arange(0, scale_chunk_packed)
            acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
            scale_idx = 0
            while scale_idx < SCALE_COLS:
                acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                scale_k0 = scale_idx * packed_per_scale
                sk0 = 0
                while sk0 < packed_per_scale:
                    kp = scale_k0 + sk0 + offs_k_scale
                    if A_TRANS:
                        lhs_offsets = kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                    else:
                        rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
                    sk0 += scale_chunk_packed
                partial = acc_i32.to(tl.float32)
                if HAS_LHS_SCALE:
                    lhs_scale_values = tl.load(
                        lhs_scale + offs_m[:, None] * SCALE_COLS + scale_idx,
                        mask=row_mask[:, None],
                        other=0.0,
                    ).to(tl.float32)
                    partial *= lhs_scale_values
                if HAS_RHS_SCALE:
                    rhs_scale_values = tl.load(
                        rhs_scale + group_id * SCALE_COLS * N + scale_idx * N + offs_n,
                        mask=col_mask,
                        other=0.0,
                    ).to(tl.float32)
                    partial *= rhs_scale_values[None, :]
                acc += partial
                scale_idx += 1

        tl.store(
            out + offs_m[:, None] * N + offs_n[None, :],
            acc,
            mask=row_mask[:, None] & col_mask[None, :],
        )

    return kernel


@lru_cache(maxsize=2)
def _ragged_dot_int4_kernel(*, specialize_runtime_args: bool = False) -> Any:
    triton, tl = _triton()
    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS")
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
        lhs,
        rhs,
        lhs_scale,
        rhs_scale,
        task_group_ids,
        task_block_starts,
        task_actual_starts,
        task_actual_ends,
        out,
        M,
        N,
        K_PACKED,
        SCALE_COLS,
        NUM_TASKS,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_K: tl.constexpr,
        HAS_LHS_SCALE: tl.constexpr,
        HAS_RHS_SCALE: tl.constexpr,
        SUBCHANNEL: tl.constexpr,
        GROUP_SIZE_TASKS: tl.constexpr,
        A_TRANS: tl.constexpr,
        B_TRANS: tl.constexpr,
    ):
        pid = tl.program_id(0)
        num_pid_n = tl.cdiv(N, BLOCK_N)
        num_pid_in_group = GROUP_SIZE_TASKS * num_pid_n
        swizzle_group = pid // num_pid_in_group
        first_task = swizzle_group * GROUP_SIZE_TASKS
        group_size = tl.minimum(NUM_TASKS - first_task, GROUP_SIZE_TASKS)
        pid_in_group = pid % num_pid_in_group
        pid_task = first_task + (pid_in_group % group_size)
        pid_n = pid_in_group // group_size

        group_id = tl.load(task_group_ids + pid_task)
        block_start = tl.load(task_block_starts + pid_task)
        actual_start = tl.load(task_actual_starts + pid_task)
        actual_end = tl.load(task_actual_ends + pid_task)
        offs_m = block_start + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
        row_mask = (offs_m >= actual_start) & (offs_m < actual_end)
        col_mask = offs_n < N

        block_k_packed: tl.constexpr = BLOCK_K // 2
        offs_k = tl.arange(0, block_k_packed)

        if SUBCHANNEL == 0:
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            k_base = 0
            while k_base < K_PACKED:
                kp = k_base + offs_k
                k_mask = kp < K_PACKED
                if A_TRANS:
                    lhs_offsets = kp[None, :] * M + offs_m[:, None]
                else:
                    lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                if B_TRANS:
                    rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                else:
                    rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                rhs_values = tl.load(rhs + rhs_offsets, mask=k_mask[:, None] & col_mask[None, :], other=0)
                acc_i32 = tl.dot_scaled(
                    lhs_values,
                    None,
                    "int4",
                    rhs_values,
                    None,
                    "int4",
                    acc_i32,
                    out_dtype=tl.int32,
                )
                k_base += block_k_packed
            acc = acc_i32.to(tl.float32)
            if HAS_LHS_SCALE:
                lhs_scale_values = tl.load(lhs_scale + offs_m, mask=row_mask, other=0.0).to(tl.float32)
                acc *= lhs_scale_values[:, None]
            if HAS_RHS_SCALE:
                rhs_scale_values = tl.load(
                    rhs_scale + group_id * N + offs_n,
                    mask=col_mask,
                    other=0.0,
                ).to(tl.float32)
                acc *= rhs_scale_values[None, :]
        else:
            packed_per_scale: tl.constexpr = SUBCHANNEL // 2
            scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
            offs_k_scale = tl.arange(0, scale_chunk_packed)
            acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
            scale_idx = 0
            while scale_idx < SCALE_COLS:
                acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                scale_k0 = scale_idx * packed_per_scale
                sk0 = 0
                while sk0 < packed_per_scale:
                    kp = scale_k0 + sk0 + offs_k_scale
                    k_mask = (kp < K_PACKED) & ((kp - scale_k0) < packed_per_scale)
                    if A_TRANS:
                        lhs_offsets = kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                    else:
                        rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=k_mask[:, None] & col_mask[None, :], other=0)
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
                    sk0 += scale_chunk_packed
                partial = acc_i32.to(tl.float32)
                if HAS_LHS_SCALE:
                    lhs_scale_values = tl.load(
                        lhs_scale + offs_m[:, None] * SCALE_COLS + scale_idx,
                        mask=row_mask[:, None],
                        other=0.0,
                    ).to(tl.float32)
                    partial *= lhs_scale_values
                if HAS_RHS_SCALE:
                    rhs_scale_values = tl.load(
                        rhs_scale + group_id * SCALE_COLS * N + scale_idx * N + offs_n,
                        mask=col_mask,
                        other=0.0,
                    ).to(tl.float32)
                    partial *= rhs_scale_values[None, :]
                acc += partial
                scale_idx += 1

        tl.store(
            out + offs_m[:, None] * N + offs_n[None, :],
            acc,
            mask=row_mask[:, None] & col_mask[None, :],
        )

    return kernel


@lru_cache(maxsize=2)
def _ragged_dot_int4_quant_kernel(*, specialize_runtime_args: bool = False) -> Any:
    """Build the fused epilogue + sc256 packed-output forward kernel."""

    triton, tl = _triton()
    from triton.language.extra import libdevice

    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS")
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
        lhs,
        rhs,
        lhs_scale,
        rhs_scale,
        task_group_ids,
        task_block_starts,
        task_actual_starts,
        task_actual_ends,
        out,
        out_scale,
        M,
        N,
        K_PACKED,
        SCALE_COLS,
        NUM_TASKS,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_K: tl.constexpr,
        HAS_LHS_SCALE: tl.constexpr,
        HAS_RHS_SCALE: tl.constexpr,
        SUBCHANNEL: tl.constexpr,
        GROUP_SIZE_TASKS: tl.constexpr,
        A_TRANS: tl.constexpr,
        B_TRANS: tl.constexpr,
        EVEN_K_FAST_PATH: tl.constexpr,
        SWIGLU: tl.constexpr,
        RELU2: tl.constexpr,
    ):
        pid = tl.program_id(0)
        num_pid_n = tl.cdiv(N, BLOCK_N)
        num_pid_in_group = GROUP_SIZE_TASKS * num_pid_n
        swizzle_group = pid // num_pid_in_group
        first_task = swizzle_group * GROUP_SIZE_TASKS
        group_size = tl.minimum(NUM_TASKS - first_task, GROUP_SIZE_TASKS)
        pid_in_group = pid % num_pid_in_group
        pid_task = first_task + (pid_in_group % group_size)
        pid_n = pid_in_group // group_size

        group_id = tl.load(task_group_ids + pid_task)
        block_start = tl.load(task_block_starts + pid_task)
        actual_start = tl.load(task_actual_starts + pid_task)
        actual_end = tl.load(task_actual_ends + pid_task)
        offs_m = block_start + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
        row_mask = (offs_m >= actual_start) & (offs_m < actual_end)
        # The public INT4-output contract requires BLOCK_N == 256 and
        # N % 256 == 0, so every launched output tile is complete.
        rhs_n = N * 2 if SWIGLU else N

        block_k_packed: tl.constexpr = BLOCK_K // 2
        offs_k = tl.arange(0, block_k_packed)

        if SUBCHANNEL == 0:
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            gate_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            k_base = 0
            while k_base < K_PACKED:
                kp = k_base + offs_k
                k_mask = (kp < K_PACKED) | EVEN_K_FAST_PATH
                if A_TRANS:
                    lhs_offsets = kp[None, :] * M + offs_m[:, None]
                else:
                    lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                if B_TRANS:
                    rhs_offsets = group_id * rhs_n * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                else:
                    rhs_offsets = group_id * K_PACKED * rhs_n + kp[:, None] * rhs_n + offs_n[None, :]
                lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                rhs_values = tl.load(rhs + rhs_offsets, mask=k_mask[:, None], other=0)
                acc_i32 = tl.dot_scaled(
                    lhs_values,
                    None,
                    "int4",
                    rhs_values,
                    None,
                    "int4",
                    acc_i32,
                    out_dtype=tl.int32,
                )
                if SWIGLU:
                    if B_TRANS:
                        gate_offsets = (
                            group_id * rhs_n * K_PACKED
                            + (offs_n[None, :] + N) * K_PACKED
                            + kp[:, None]
                        )
                    else:
                        gate_offsets = (
                            group_id * K_PACKED * rhs_n
                            + kp[:, None] * rhs_n
                            + offs_n[None, :]
                            + N
                        )
                    gate_values = tl.load(
                        rhs + gate_offsets,
                        mask=k_mask[:, None],
                        other=0,
                    )
                    gate_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        gate_values,
                        None,
                        "int4",
                        gate_i32,
                        out_dtype=tl.int32,
                    )
                k_base += block_k_packed
            acc = acc_i32.to(tl.float32)
            gate_acc = gate_i32.to(tl.float32)
            if HAS_LHS_SCALE:
                lhs_scale_values = tl.load(lhs_scale + offs_m, mask=row_mask, other=0.0).to(tl.float32)
                acc *= lhs_scale_values[:, None]
                if SWIGLU:
                    gate_acc *= lhs_scale_values[:, None]
            if HAS_RHS_SCALE:
                rhs_scale_values = tl.load(
                    rhs_scale + group_id * rhs_n + offs_n,
                ).to(tl.float32)
                acc *= rhs_scale_values[None, :]
                if SWIGLU:
                    gate_scale_values = tl.load(
                        rhs_scale + group_id * rhs_n + offs_n + N,
                    ).to(tl.float32)
                    gate_acc *= gate_scale_values[None, :]
        else:
            packed_per_scale: tl.constexpr = SUBCHANNEL // 2
            scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
            offs_k_scale = tl.arange(0, scale_chunk_packed)
            acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
            gate_acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
            scale_idx = 0
            while scale_idx < SCALE_COLS:
                acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                gate_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                scale_k0 = scale_idx * packed_per_scale
                sk0 = 0
                while sk0 < packed_per_scale:
                    kp = scale_k0 + sk0 + offs_k_scale
                    k_mask = ((kp < K_PACKED) & ((kp - scale_k0) < packed_per_scale)) | EVEN_K_FAST_PATH
                    if A_TRANS:
                        lhs_offsets = kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = (
                            group_id * rhs_n * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                        )
                    else:
                        rhs_offsets = (
                            group_id * K_PACKED * rhs_n + kp[:, None] * rhs_n + offs_n[None, :]
                        )
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                    rhs_values = tl.load(
                        rhs + rhs_offsets,
                        mask=k_mask[:, None],
                        other=0,
                    )
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
                    if SWIGLU:
                        if B_TRANS:
                            gate_offsets = (
                                group_id * rhs_n * K_PACKED
                                + (offs_n[None, :] + N) * K_PACKED
                                + kp[:, None]
                            )
                        else:
                            gate_offsets = (
                                group_id * K_PACKED * rhs_n
                                + kp[:, None] * rhs_n
                                + offs_n[None, :]
                                + N
                            )
                        gate_values = tl.load(
                            rhs + gate_offsets,
                            mask=k_mask[:, None],
                            other=0,
                        )
                        gate_i32 = tl.dot_scaled(
                            lhs_values,
                            None,
                            "int4",
                            gate_values,
                            None,
                            "int4",
                            gate_i32,
                            out_dtype=tl.int32,
                        )
                    sk0 += scale_chunk_packed
                partial = acc_i32.to(tl.float32)
                gate_partial = gate_i32.to(tl.float32)
                if HAS_LHS_SCALE:
                    lhs_scale_values = tl.load(
                        lhs_scale + offs_m[:, None] * SCALE_COLS + scale_idx,
                        mask=row_mask[:, None],
                        other=0.0,
                    ).to(tl.float32)
                    partial *= lhs_scale_values
                    if SWIGLU:
                        gate_partial *= lhs_scale_values
                if HAS_RHS_SCALE:
                    rhs_scale_values = tl.load(
                        rhs_scale + group_id * SCALE_COLS * rhs_n + scale_idx * rhs_n + offs_n,
                    ).to(tl.float32)
                    partial *= rhs_scale_values[None, :]
                    if SWIGLU:
                        gate_scale_values = tl.load(
                            rhs_scale
                            + group_id * SCALE_COLS * rhs_n
                            + scale_idx * rhs_n
                            + offs_n
                            + N,
                        ).to(tl.float32)
                        gate_partial *= gate_scale_values[None, :]
                acc += partial
                if SWIGLU:
                    gate_acc += gate_partial
                scale_idx += 1

        if SWIGLU:
            acc *= gate_acc / (1.0 + tl.exp(-gate_acc))
        if RELU2:
            acc = tl.maximum(acc, 0.0)
            acc *= acc

        row_amax = tl.max(tl.abs(acc), axis=1)
        quant_scale = (tl.maximum(row_amax, 1.0e-12) / 7.0).to(tl.bfloat16)
        q = tl.clamp(
            libdevice.nearbyint(acc / quant_scale.to(tl.float32)[:, None]),
            -8.0,
            7.0,
        ).to(tl.int32) & 0xF
        q_pairs = tl.reshape(q, (BLOCK_M, BLOCK_N // 2, 2))
        q_lo, q_hi = tl.split(q_pairs)
        packed = (q_lo | (q_hi << 4)).to(tl.uint8)
        offs_n_packed = pid_n * (BLOCK_N // 2) + tl.arange(0, BLOCK_N // 2)
        tl.store(
            out + offs_m[:, None] * (N // 2) + offs_n_packed[None, :],
            packed,
            mask=row_mask[:, None],
        )
        tl.store(
            out_scale + offs_m * (N // BLOCK_N) + pid_n,
            quant_scale,
            mask=row_mask,
        )

    return kernel


@lru_cache(maxsize=2)
def _ragged_dot_int4_bwd_kernel(*, specialize_runtime_args: bool = False) -> Any:
    triton, tl = _triton()
    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS")
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
        lhs,
        rhs,
        lhs_scale,
        rhs_scale,
        group_sizes,
        out,
        M,
        N,
        K_PACKED,
        SCALE_COLS,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_K: tl.constexpr,
        SPLIT_K: tl.constexpr,
        HAS_LHS_SCALE: tl.constexpr,
        HAS_RHS_SCALE: tl.constexpr,
        SUBCHANNEL: tl.constexpr,
        A_TRANS: tl.constexpr,
        B_TRANS: tl.constexpr,
        EVEN_K_FAST_PATH: tl.constexpr,
        PAIRED_BF16_STORE: tl.constexpr,
    ):
        pid = tl.program_id(0)
        pid_split = tl.program_id(1)
        num_pid_m = tl.cdiv(M, BLOCK_M)
        num_pid_n = tl.cdiv(N, BLOCK_N)
        tiles_per_group = num_pid_m * num_pid_n
        group_id = pid // tiles_per_group
        tile = pid - group_id * tiles_per_group
        pid_m = tile // num_pid_n
        pid_n = tile - pid_m * num_pid_n

        offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
        row_mask = offs_m < M
        col_mask = offs_n < N
        group_k = tl.load(group_sizes + group_id)
        group_k_packed = (group_k + 1) // 2

        block_k_packed: tl.constexpr = BLOCK_K // 2
        offs_k = tl.arange(0, block_k_packed)
        acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)

        if SUBCHANNEL == 0:
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            k_base = pid_split * block_k_packed
            if EVEN_K_FAST_PATH:
                while k_base < group_k_packed:
                    kp = k_base + offs_k
                    if A_TRANS:
                        lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                    else:
                        rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
                    k_base += block_k_packed * SPLIT_K
            else:
                complete_group_k_packed = group_k // 2
                full_group_k_packed = (
                    complete_group_k_packed // block_k_packed
                ) * block_k_packed
                while k_base < full_group_k_packed:
                    kp = k_base + offs_k
                    if A_TRANS:
                        lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                    else:
                        rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
                    k_base += block_k_packed * SPLIT_K
                if k_base < group_k_packed:
                    kp = k_base + offs_k
                    if A_TRANS:
                        lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                    else:
                        lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                    if B_TRANS:
                        rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                    else:
                        rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                    k_mask = kp < group_k_packed
                    odd_tail = ((group_k % 2) == 1) & (kp == (group_k_packed - 1))
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=k_mask[:, None] & col_mask[None, :], other=0)
                    lhs_values = tl.where(odd_tail[None, :], lhs_values & 0x0F, lhs_values)
                    rhs_values = tl.where(odd_tail[:, None], rhs_values & 0x0F, rhs_values)
                    acc_i32 = tl.dot_scaled(
                        lhs_values,
                        None,
                        "int4",
                        rhs_values,
                        None,
                        "int4",
                        acc_i32,
                        out_dtype=tl.int32,
                    )
            acc = acc_i32.to(tl.float32)
            if HAS_LHS_SCALE:
                lhs_scale_values = tl.load(
                    lhs_scale + group_id * M + offs_m,
                    mask=row_mask,
                    other=0.0,
                ).to(tl.float32)
                acc *= lhs_scale_values[:, None]
            if HAS_RHS_SCALE:
                rhs_scale_values = tl.load(
                    rhs_scale + group_id * N + offs_n,
                    mask=col_mask,
                    other=0.0,
                ).to(tl.float32)
                acc *= rhs_scale_values[None, :]
        else:
            packed_per_scale: tl.constexpr = SUBCHANNEL // 2
            scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
            offs_k_scale = tl.arange(0, scale_chunk_packed)
            scale_idx = 0
            while scale_idx * packed_per_scale < group_k_packed:
                acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                scale_k0 = scale_idx * packed_per_scale
                sk0 = pid_split * scale_chunk_packed
                if EVEN_K_FAST_PATH:
                    while sk0 < packed_per_scale:
                        kp = scale_k0 + sk0 + offs_k_scale
                        if A_TRANS:
                            lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                        else:
                            lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                        if B_TRANS:
                            rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                        else:
                            rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                        lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                        rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                        acc_i32 = tl.dot_scaled(
                            lhs_values,
                            None,
                            "int4",
                            rhs_values,
                            None,
                            "int4",
                            acc_i32,
                            out_dtype=tl.int32,
                        )
                        sk0 += scale_chunk_packed * SPLIT_K
                else:
                    valid_scale_packed = tl.minimum(
                        packed_per_scale,
                        group_k_packed - scale_k0,
                    )
                    complete_scale_packed = tl.maximum(
                        0,
                        tl.minimum(packed_per_scale, (group_k // 2) - scale_k0),
                    )
                    full_scale_packed = (
                        complete_scale_packed // scale_chunk_packed
                    ) * scale_chunk_packed
                    while sk0 < full_scale_packed:
                        kp = scale_k0 + sk0 + offs_k_scale
                        if A_TRANS:
                            lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                        else:
                            lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                        if B_TRANS:
                            rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                        else:
                            rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                        lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                        rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                        acc_i32 = tl.dot_scaled(
                            lhs_values,
                            None,
                            "int4",
                            rhs_values,
                            None,
                            "int4",
                            acc_i32,
                            out_dtype=tl.int32,
                        )
                        sk0 += scale_chunk_packed * SPLIT_K
                    if sk0 < valid_scale_packed:
                        kp = scale_k0 + sk0 + offs_k_scale
                        if A_TRANS:
                            lhs_offsets = group_id * K_PACKED * M + kp[None, :] * M + offs_m[:, None]
                        else:
                            lhs_offsets = group_id * M * K_PACKED + offs_m[:, None] * K_PACKED + kp[None, :]
                        if B_TRANS:
                            rhs_offsets = group_id * N * K_PACKED + offs_n[None, :] * K_PACKED + kp[:, None]
                        else:
                            rhs_offsets = group_id * K_PACKED * N + kp[:, None] * N + offs_n[None, :]
                        k_mask = (kp - scale_k0) < valid_scale_packed
                        odd_tail = ((group_k % 2) == 1) & (kp == (group_k_packed - 1))
                        lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None] & k_mask[None, :], other=0)
                        rhs_values = tl.load(rhs + rhs_offsets, mask=k_mask[:, None] & col_mask[None, :], other=0)
                        lhs_values = tl.where(odd_tail[None, :], lhs_values & 0x0F, lhs_values)
                        rhs_values = tl.where(odd_tail[:, None], rhs_values & 0x0F, rhs_values)
                        acc_i32 = tl.dot_scaled(
                            lhs_values,
                            None,
                            "int4",
                            rhs_values,
                            None,
                            "int4",
                            acc_i32,
                            out_dtype=tl.int32,
                        )
                partial = acc_i32.to(tl.float32)
                if HAS_LHS_SCALE:
                    lhs_scale_values = tl.load(
                        lhs_scale + group_id * M * SCALE_COLS + offs_m[:, None] * SCALE_COLS + scale_idx,
                        mask=row_mask[:, None],
                        other=0.0,
                    ).to(tl.float32)
                    partial *= lhs_scale_values
                if HAS_RHS_SCALE:
                    rhs_scale_values = tl.load(
                        rhs_scale + group_id * SCALE_COLS * N + scale_idx * N + offs_n,
                        mask=col_mask,
                        other=0.0,
                    ).to(tl.float32)
                    partial *= rhs_scale_values[None, :]
                acc += partial
                scale_idx += 1

        out_offsets = group_id * M * N + offs_m[:, None] * N + offs_n[None, :]
        out_mask = row_mask[:, None] & col_mask[None, :]
        if SPLIT_K == 1:
            if PAIRED_BF16_STORE:
                acc_bf16_bits = acc.to(tl.bfloat16).to(tl.uint16, bitcast=True)
                acc_pairs = tl.reshape(acc_bf16_bits, (BLOCK_M, BLOCK_N // 2, 2))
                acc_lo, acc_hi = tl.split(acc_pairs)
                packed_acc = acc_lo.to(tl.uint32) | (acc_hi.to(tl.uint32) << 16)
                offs_n_pair = pid_n * (BLOCK_N // 2) + tl.arange(0, BLOCK_N // 2)
                out_offsets_pair = (
                    group_id * M * (N // 2)
                    + offs_m[:, None] * (N // 2)
                    + offs_n_pair[None, :]
                )
                out_mask_pair = row_mask[:, None] & (offs_n_pair[None, :] < (N // 2))
                tl.store(out + out_offsets_pair, packed_acc, mask=out_mask_pair)
            else:
                tl.store(out + out_offsets, acc, mask=out_mask)
        else:
            tl.atomic_add(out + out_offsets, acc, sem="relaxed", mask=out_mask)

    return kernel


@lru_cache(maxsize=1)
def _ragged_dot_int4_bwd_accum_kernel() -> Any:
    """Return the task-packed dW kernel used by dropless MoE training."""

    triton, tl = _triton()

    @triton.jit(
        do_not_specialize=("M", "N", "K_PACKED", "SCALE_COLS"),
        do_not_specialize_on_alignment=("M", "N", "K_PACKED", "SCALE_COLS"),
    )
    def kernel(
        lhs,
        rhs,
        lhs_scale,
        rhs_scale,
        expert_task_ranges,
        out,
        M,
        N,
        K_PACKED,
        SCALE_COLS,
        BLOCK_M: tl.constexpr,
        BLOCK_N: tl.constexpr,
        BLOCK_K: tl.constexpr,
    ):
        pid = tl.program_id(0)
        num_pid_m = tl.cdiv(M, BLOCK_M)
        num_pid_n = tl.cdiv(N, BLOCK_N)
        tiles_per_expert = num_pid_m * num_pid_n
        expert_id = pid // tiles_per_expert
        tile = pid - expert_id * tiles_per_expert
        pid_m = tile // num_pid_n
        pid_n = tile - pid_m * num_pid_n

        offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
        row_mask = offs_m < M
        col_mask = offs_n < N
        packed_k: tl.constexpr = BLOCK_K // 2
        offs_k = tl.arange(0, packed_k)
        task_idx = tl.load(expert_task_ranges + expert_id * 2).to(tl.int32)
        task_end = tl.load(expert_task_ranges + expert_id * 2 + 1).to(tl.int32)
        acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)

        while task_idx < task_end:
            lhs_offsets = task_idx * K_PACKED * M + offs_k[None, :] * M + offs_m[:, None]
            rhs_offsets = task_idx * K_PACKED * N + offs_k[:, None] * N + offs_n[None, :]
            lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
            rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
            task_acc = tl.dot_scaled(
                lhs_values,
                None,
                "int4",
                rhs_values,
                None,
                "int4",
                tl.zeros((BLOCK_M, BLOCK_N), tl.int32),
                out_dtype=tl.int32,
            ).to(tl.float32)
            lhs_scale_values = tl.load(
                lhs_scale + task_idx * M + offs_m,
                mask=row_mask,
                other=0.0,
            ).to(tl.float32)
            rhs_scale_values = tl.load(
                rhs_scale + task_idx * N + offs_n,
                mask=col_mask,
                other=0.0,
            ).to(tl.float32)
            acc += task_acc * lhs_scale_values[:, None] * rhs_scale_values[None, :]
            task_idx += 1

        out_offsets = expert_id * M * N + offs_m[:, None] * N + offs_n[None, :]
        tl.store(out + out_offsets, acc, mask=row_mask[:, None] & col_mask[None, :])

    return kernel


def _require_cuda_tensor(torch: Any, name: str, tensor: Any) -> None:
    if not torch.is_tensor(tensor):
        raise TypeError(f"{name} must be a torch.Tensor")
    if not tensor.is_cuda:
        raise ValueError(f"{name} must be a CUDA/HIP tensor")


def _require_bfloat16_scale(torch: Any, name: str, tensor: Any | None) -> None:
    if tensor is not None and tensor.dtype != torch.bfloat16:
        raise ValueError(f"{name} must have dtype torch.bfloat16; got {tensor.dtype}")


def _validate_group_sizes(torch: Any, group_sizes: Any, *, groups: int, rows: int) -> None:
    if not torch.is_tensor(group_sizes):
        raise TypeError("group_sizes must be a torch.Tensor")
    if group_sizes.ndim != 1:
        raise ValueError(f"group_sizes must be 1D; got shape {tuple(group_sizes.shape)}")
    if int(group_sizes.shape[0]) != groups:
        raise ValueError(f"group_sizes length must match rhs groups {groups}; got {int(group_sizes.shape[0])}")
    if not _is_integer_dtype(torch, group_sizes.dtype):
        raise ValueError(f"group_sizes must have integer dtype; got {group_sizes.dtype}")
    host_sizes = group_sizes.detach().cpu()
    if bool((host_sizes < 0).any()):
        raise ValueError("group_sizes must be non-negative")
    total = int(host_sizes.sum().item())
    if total != rows:
        raise ValueError(f"sum(group_sizes) must equal lhs rows {rows}; got {total}")


def _validate_prepared_group_info(
    torch: Any,
    group_info: RaggedGroupInfo,
    *,
    device: Any,
    groups: int,
    rows: int,
    config: RaggedDotConfig,
) -> None:
    if not isinstance(group_info, RaggedGroupInfo):
        raise TypeError(f"group_info must be a RaggedGroupInfo; got {type(group_info).__name__}")
    if group_info.num_tasks < 0:
        raise ValueError("group_info.num_tasks must be non-negative")
    if group_info.rows is not None and group_info.rows != rows:
        raise ValueError(f"group_info rows must match lhs rows {rows}; got {group_info.rows}")
    if group_info.groups is not None and group_info.groups != groups:
        raise ValueError(f"group_info groups must match rhs groups {groups}; got {group_info.groups}")
    if group_info.tile is not None and group_info.tile != config.block_m:
        raise ValueError(
            f"group_info tile must match config.block_m {config.block_m}; got {group_info.tile}"
        )
    if group_info.align_tile is not None and group_info.align_tile != config.align_tile:
        raise ValueError(
            "group_info align_tile must match config.align_tile "
            f"{config.align_tile}; got {group_info.align_tile}"
        )
    for name in (
        "group_id",
        "block_start",
        "actual_start",
        "actual_end",
        "start_within_block",
        "actual_size",
    ):
        tensor = getattr(group_info, name)
        if not torch.is_tensor(tensor):
            raise TypeError(f"group_info.{name} must be a torch.Tensor")
        if tensor.device != device:
            raise ValueError(f"group_info.{name} must be on device {device}; got {tensor.device}")
        if tensor.dtype != torch.int64:
            raise ValueError(f"group_info.{name} must have dtype torch.int64; got {tensor.dtype}")
        if tensor.ndim != 1 or int(tensor.shape[0]) != group_info.num_tasks:
            raise ValueError(
                f"group_info.{name} must have shape ({group_info.num_tasks},); got {tuple(tensor.shape)}"
            )
        if not tensor.is_contiguous():
            raise ValueError(f"group_info.{name} must be contiguous")


def _validate_k_group_sizes(torch: Any, group_sizes: Any, *, groups: int, max_k: int) -> Any:
    if not torch.is_tensor(group_sizes):
        raise TypeError("group_sizes must be a torch.Tensor")
    if group_sizes.ndim != 1:
        raise ValueError(f"group_sizes must be 1D; got shape {tuple(group_sizes.shape)}")
    if int(group_sizes.shape[0]) != groups:
        raise ValueError(f"group_sizes length must match operand groups {groups}; got {int(group_sizes.shape[0])}")
    if not _is_integer_dtype(torch, group_sizes.dtype):
        raise ValueError(f"group_sizes must have integer dtype; got {group_sizes.dtype}")
    host_sizes = group_sizes.detach().cpu()
    if bool((host_sizes < 0).any()):
        raise ValueError("group_sizes must be non-negative")
    max_group_k = int(host_sizes.max().item()) if groups else 0
    if max_group_k > max_k:
        raise ValueError(f"group_sizes entries must be <= logical padded K {max_k}; got {max_group_k}")
    return host_sizes


def prepare_ragged_bwd_group_info(
    group_sizes: Any,
    *,
    k_capacity: int,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    config: RaggedBwdDotConfig = RaggedBwdDotConfig(),
    dynamic_group_sizes: bool = False,
) -> RaggedBwdGroupInfo:
    """Prevalidate standard-backward group metadata before graph capture.

    Pass the result as ``group_info`` to :func:`ragged_dot_int4_bwd` to avoid
    device-to-host reads and runtime variant selection during capture. When
    ``dynamic_group_sizes`` is true, replay may update the returned int32
    ``group_sizes`` tensor in place, provided every value stays in
    ``[0, k_capacity]``; the universally safe masked-K kernel is selected.
    Otherwise group sizes are treated as immutable and the even-K variant may
    be selected. Capture callers must also preallocate ``out``, warm the exact
    launch once, and pin ``use_native`` to either ``True`` or ``False``.
    """

    torch = _torch()
    _require_cuda_tensor(torch, "group_sizes", group_sizes)
    k_capacity = int(k_capacity)
    if k_capacity < 0:
        raise ValueError("k_capacity must be non-negative")
    if k_capacity % 2 != 0:
        raise ValueError("k_capacity must be even for packed int4 operands")
    if group_sizes.ndim != 1:
        raise ValueError(f"group_sizes must be 1D; got shape {tuple(group_sizes.shape)}")
    groups = int(group_sizes.shape[0])
    host_sizes = _validate_k_group_sizes(
        torch,
        group_sizes,
        groups=groups,
        max_k=k_capacity,
    )
    prepared_sizes = group_sizes
    if group_sizes.dtype != torch.int32 or not group_sizes.is_contiguous():
        prepared_sizes = group_sizes.to(dtype=torch.int32).contiguous()
    use_even_k = not dynamic_group_sizes and _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=host_sizes,
        scale=scale,
        config=config,
    )
    return RaggedBwdGroupInfo(
        group_sizes=prepared_sizes,
        groups=groups,
        k_capacity=k_capacity,
        block_k=config.block_k,
        scale=scale,
        variant=RAGGED_EVEN_K if use_even_k else RAGGED_MASK_K,
        dynamic_group_sizes=bool(dynamic_group_sizes),
    )


def _validate_prepared_bwd_group_info(
    torch: Any,
    group_info: RaggedBwdGroupInfo,
    *,
    device: Any,
    groups: int,
    k_capacity: int,
    scale: ScaleSpec,
    config: RaggedBwdDotConfig,
) -> None:
    if not isinstance(group_info, RaggedBwdGroupInfo):
        raise TypeError(
            f"group_info must be a RaggedBwdGroupInfo; got {type(group_info).__name__}"
        )
    if group_info.groups != groups:
        raise ValueError(f"group_info groups must match operand groups {groups}; got {group_info.groups}")
    if group_info.k_capacity != k_capacity:
        raise ValueError(
            f"group_info k_capacity must match logical padded K {k_capacity}; got {group_info.k_capacity}"
        )
    if group_info.block_k != config.block_k:
        raise ValueError(
            f"group_info block_k must match config.block_k {config.block_k}; got {group_info.block_k}"
        )
    if group_info.scale != scale:
        raise ValueError(f"group_info scale must match launch scale {scale}; got {group_info.scale}")
    if group_info.variant not in RAGGED_VARIANTS:
        raise ValueError(f"group_info variant must be one of {RAGGED_VARIANTS}; got {group_info.variant!r}")
    if group_info.dynamic_group_sizes and group_info.variant != RAGGED_MASK_K:
        raise ValueError("dynamic group_info must use the masked-K variant")
    sizes = group_info.group_sizes
    if not torch.is_tensor(sizes):
        raise TypeError("group_info.group_sizes must be a torch.Tensor")
    if sizes.device != device:
        raise ValueError(f"group_info.group_sizes must be on device {device}; got {sizes.device}")
    if sizes.dtype != torch.int32:
        raise ValueError(
            f"group_info.group_sizes must have dtype torch.int32; got {sizes.dtype}"
        )
    if sizes.ndim != 1 or int(sizes.shape[0]) != groups:
        raise ValueError(
            f"group_info.group_sizes must have shape ({groups},); got {tuple(sizes.shape)}"
        )
    if not sizes.is_contiguous():
        raise ValueError("group_info.group_sizes must be contiguous")


def _validate_scale_shapes(
    *,
    a_scale: Any | None,
    b_scale: Any | None,
    scale: ScaleSpec,
    groups: int,
    rows: int,
    cols: int,
    scale_cols: int,
) -> None:
    if scale.mode is ScaleMode.PER_CHANNEL:
        if a_scale is not None and tuple(a_scale.shape) != (rows,):
            raise ValueError(f"a_scale must have shape ({rows},); got {tuple(a_scale.shape)}")
        if b_scale is not None and tuple(b_scale.shape) != (groups, cols):
            raise ValueError(f"b_scale must have shape ({groups}, {cols}); got {tuple(b_scale.shape)}")
        return

    if a_scale is not None and tuple(a_scale.shape) != (rows, scale_cols):
        raise ValueError(f"a_scale must have shape ({rows}, {scale_cols}); got {tuple(a_scale.shape)}")
    if b_scale is not None and tuple(b_scale.shape) != (groups, scale_cols, cols):
        raise ValueError(
            "subchannel b_scale must use weight-matched layout "
            f"({groups}, {scale_cols}, {cols}) == (groups, scale_cols, N); got {tuple(b_scale.shape)}. "
            "If you have logical layout "
            f"({groups}, {cols}, {scale_cols}) == (groups, N, scale_cols), "
            "call pack_ragged_rhs_subchannel_scales(...) first."
        )


def _forward_logical_shape(
    lhs: Any,
    rhs: Any,
    layout: GemmLayout,
    epilogue: Epilogue,
) -> tuple[int, int, int, int]:
    if layout is GemmLayout.NN:
        rows = int(lhs.shape[0])
        k_packed = int(lhs.shape[1])
        groups = int(rhs.shape[0])
        rhs_k_packed = int(rhs.shape[1])
        cols = int(rhs.shape[2])
    elif layout is GemmLayout.NT:
        rows = int(lhs.shape[0])
        k_packed = int(lhs.shape[1])
        groups = int(rhs.shape[0])
        cols = int(rhs.shape[1])
        rhs_k_packed = int(rhs.shape[2])
    elif layout is GemmLayout.TN:
        k_packed = int(lhs.shape[0])
        rows = int(lhs.shape[1])
        groups = int(rhs.shape[0])
        rhs_k_packed = int(rhs.shape[1])
        cols = int(rhs.shape[2])
    elif layout is GemmLayout.TT:
        k_packed = int(lhs.shape[0])
        rows = int(lhs.shape[1])
        groups = int(rhs.shape[0])
        cols = int(rhs.shape[1])
        rhs_k_packed = int(rhs.shape[2])
    else:
        raise ValueError(f"unsupported GEMM layout {layout.value}")
    if rhs_k_packed != k_packed:
        raise ValueError(f"lhs and rhs packed K mismatch for layout={layout.value}: {k_packed} vs {rhs_k_packed}")
    if epilogue is Epilogue.SWIGLU:
        if cols % 2 != 0:
            raise ValueError("ragged SwiGLU requires the logical RHS output dimension to be even")
        cols //= 2
    return rows, cols, k_packed, groups


def _resolve_ragged_forward_output_dtype(torch: Any, output_dtype: Any | None) -> OutputDType:
    if output_dtype is None or output_dtype is torch.bfloat16:
        return OutputDType.BF16
    if output_dtype is torch.float32:
        return OutputDType.FLOAT32
    if isinstance(output_dtype, OutputDType):
        return output_dtype
    raise ValueError(
        "output_dtype must be OutputDType.BF16, OutputDType.FLOAT32, or OutputDType.INT4"
    )


def _bwd_logical_shape(lhs: Any, rhs: Any, layout: GemmLayout) -> tuple[int, int, int, int]:
    if layout is GemmLayout.NN:
        groups = int(lhs.shape[0])
        rows = int(lhs.shape[1])
        k_packed = int(lhs.shape[2])
        rhs_groups = int(rhs.shape[0])
        rhs_k_packed = int(rhs.shape[1])
        cols = int(rhs.shape[2])
    elif layout is GemmLayout.NT:
        groups = int(lhs.shape[0])
        rows = int(lhs.shape[1])
        k_packed = int(lhs.shape[2])
        rhs_groups = int(rhs.shape[0])
        cols = int(rhs.shape[1])
        rhs_k_packed = int(rhs.shape[2])
    elif layout is GemmLayout.TN:
        groups = int(lhs.shape[0])
        k_packed = int(lhs.shape[1])
        rows = int(lhs.shape[2])
        rhs_groups = int(rhs.shape[0])
        rhs_k_packed = int(rhs.shape[1])
        cols = int(rhs.shape[2])
    elif layout is GemmLayout.TT:
        groups = int(lhs.shape[0])
        k_packed = int(lhs.shape[1])
        rows = int(lhs.shape[2])
        rhs_groups = int(rhs.shape[0])
        cols = int(rhs.shape[1])
        rhs_k_packed = int(rhs.shape[2])
    else:
        raise ValueError(f"unsupported GEMM layout {layout.value}")
    if rhs_groups != groups:
        raise ValueError(f"lhs and rhs group mismatch for layout={layout.value}: {groups} vs {rhs_groups}")
    if rhs_k_packed != k_packed:
        raise ValueError(f"lhs and rhs packed K mismatch for layout={layout.value}: {k_packed} vs {rhs_k_packed}")
    return rows, cols, k_packed, groups


def _validate_bwd_scale_shapes(
    *,
    a_scale: Any | None,
    b_scale: Any | None,
    scale: ScaleSpec,
    groups: int,
    rows: int,
    cols: int,
    scale_cols: int,
) -> None:
    if scale.mode is ScaleMode.PER_CHANNEL:
        if a_scale is not None and tuple(a_scale.shape) != (groups, rows):
            raise ValueError(f"a_scale must have shape ({groups}, {rows}); got {tuple(a_scale.shape)}")
        if b_scale is not None and tuple(b_scale.shape) != (groups, cols):
            raise ValueError(f"b_scale must have shape ({groups}, {cols}); got {tuple(b_scale.shape)}")
        return

    if a_scale is not None and tuple(a_scale.shape) != (groups, rows, scale_cols):
        raise ValueError(
            f"a_scale must have shape ({groups}, {rows}, {scale_cols}); got {tuple(a_scale.shape)}"
        )
    if b_scale is not None and tuple(b_scale.shape) != (groups, scale_cols, cols):
        raise ValueError(
            "subchannel b_scale must use weight-matched layout "
            f"({groups}, {scale_cols}, {cols}) == (groups, scale_cols, N); got {tuple(b_scale.shape)}"
        )


def ragged_dot_int4(
    lhs: Any,
    rhs: Any,
    group_sizes: Any | None = None,
    *,
    group_info: RaggedGroupInfo | None = None,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    config: RaggedDotConfig = RaggedDotConfig(),
    layout: GemmLayout = GemmLayout.NN,
    epilogue: Epilogue = Epilogue.NONE,
    out: Any | None = None,
    out_scale: Any | None = None,
    output_dtype: Any | None = None,
    output_scale: ScaleSpec | None = None,
    use_native: bool | None = None,
    native_root: str | None = None,
    native_library_path: str | None = None,
) -> Any:
    """Forward grouped ragged int4 dot using packaged HSACO or Triton ``tl.dot_scaled``.

    For ``layout=GemmLayout.NN``, ``lhs`` has shape ``(M, K / 2)`` and
    ``rhs`` has shape ``(G, K / 2, N)``. ``NT``, ``TN``, and ``TT`` use the
    same packed int4 conventions as the dense GEMM APIs: transposed operands
    move their packed-K dimension before the logical row/output-column axis.
    ``group_sizes`` has shape ``(G,)`` and assigns contiguous row groups of
    ``lhs`` to the corresponding RHS expert. The output shape is ``(M, N)``.
    Pass ``group_sizes=None`` with a ``group_info`` produced by
    :func:`prepare_ragged_group_info` to avoid host synchronization during
    CUDA/HIP graph capture and to reuse routing metadata across projections.

    Scale tensors follow this package's GEMM conventions with an added leading
    RHS group dimension:

    * per-channel: ``a_scale[M]`` and ``b_scale[G, N]``;
    * subchannel ``S``: ``a_scale[M, ceil(K / S)]`` and weight-matched
      ``b_scale[G, ceil(K / S), N]``.

    Set ``output_dtype=OutputDType.INT4`` to fuse the requested epilogue with
    signed-INT4 quantization. This returns :class:`QuantizedInt4Tensor` with
    packed ``uint8[M, N/2]`` data and BF16 subchannel-256 scales
    ``[M, N/256]``. INT4 output requires ``config.block_n == 256`` and a
    logical output width divisible by 256. For ``Epilogue.SWIGLU``, RHS stores
    concatenated ``[up | gate]`` columns and the returned width is half the RHS
    width.

    By default the function uses a packaged HSACO artifact when available and
    falls back to Triton JIT otherwise. Set ``use_native=True`` to require the
    packaged path. It does not register autograd.
    """

    layout = _check_layout(layout)
    torch = _torch()

    _require_cuda_tensor(torch, "lhs", lhs)
    _require_cuda_tensor(torch, "rhs", rhs)
    if rhs.device != lhs.device:
        raise ValueError(f"rhs must be on device {lhs.device}; got {rhs.device}")
    if lhs.dtype != torch.uint8:
        raise ValueError(f"lhs must be packed int4 torch.uint8; got {lhs.dtype}")
    if rhs.dtype != torch.uint8:
        raise ValueError(f"rhs must be packed int4 torch.uint8; got {rhs.dtype}")
    if lhs.ndim != 2:
        raise ValueError(f"lhs must have shape (M, K/2); got {tuple(lhs.shape)}")
    if rhs.ndim != 3:
        raise ValueError(f"rhs must have shape (G, K/2, N); got {tuple(rhs.shape)}")
    if not lhs.is_contiguous():
        raise ValueError("lhs must be contiguous")
    if not rhs.is_contiguous():
        raise ValueError("rhs must be contiguous")

    if not isinstance(epilogue, Epilogue):
        raise TypeError(f"epilogue must be an Epilogue; got {type(epilogue).__name__}")
    rows, cols, k_packed, groups = _forward_logical_shape(lhs, rhs, layout, epilogue)
    rhs_cols = cols * 2 if epilogue is Epilogue.SWIGLU else cols

    try_native = use_native is not False and a_scale is not None and b_scale is not None
    if group_info is None:
        if group_sizes is None:
            raise ValueError("pass exactly one of group_sizes or group_info")
        _validate_group_sizes(torch, group_sizes, groups=groups, rows=rows)
        if group_sizes.device != lhs.device:
            group_sizes = group_sizes.to(device=lhs.device)
        group_info = calculate_group_info(
            group_sizes,
            config.block_m,
            align_tile=config.align_tile,
            allow_triton=not try_native,
        )
    else:
        if group_sizes is not None:
            raise ValueError("pass exactly one of group_sizes or group_info")
        _validate_prepared_group_info(
            torch,
            group_info,
            device=lhs.device,
            groups=groups,
            rows=rows,
            config=config,
        )

    _require_bfloat16_scale(torch, "a_scale", a_scale)
    _require_bfloat16_scale(torch, "b_scale", b_scale)
    if a_scale is not None:
        _require_cuda_tensor(torch, "a_scale", a_scale)
        if a_scale.device != lhs.device:
            raise ValueError(f"a_scale must be on device {lhs.device}; got {a_scale.device}")
    if b_scale is not None:
        _require_cuda_tensor(torch, "b_scale", b_scale)
        if b_scale.device != lhs.device:
            raise ValueError(f"b_scale must be on device {lhs.device}; got {b_scale.device}")

    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or 0
    else:
        subchannel = 0
    logical_k = k_packed * 2
    scale_cols = 1
    if scale.mode is ScaleMode.SUBCHANNEL:
        if subchannel % 2 != 0:
            raise ValueError("subchannel_size must be even for packed int4 operands")
        scale_cols = _cdiv(logical_k, subchannel)
    _validate_scale_shapes(
        a_scale=a_scale,
        b_scale=b_scale,
        scale=scale,
        groups=groups,
        rows=rows,
        cols=rhs_cols,
        scale_cols=scale_cols,
    )
    if a_scale is not None and not a_scale.is_contiguous():
        raise ValueError("a_scale must be contiguous")
    if b_scale is not None and not b_scale.is_contiguous():
        raise ValueError("b_scale must be contiguous")

    selected_output_dtype = _resolve_ragged_forward_output_dtype(torch, output_dtype)
    if selected_output_dtype is OutputDType.INT4:
        selected_output_scale = output_scale or ScaleSpec(ScaleMode.SUBCHANNEL, 256)
        if selected_output_scale != ScaleSpec(ScaleMode.SUBCHANNEL, 256):
            raise ValueError("ragged INT4 output currently requires subchannel-256 output scales")
        if config.block_n != 256:
            raise ValueError("ragged INT4 output requires config.block_n == 256")
        if cols % 256 != 0:
            raise ValueError("ragged INT4 output requires the logical output width to be divisible by 256")
        output_shape = (rows, cols // 2)
        torch_output_dtype = torch.uint8
    else:
        selected_output_scale = None
        if output_scale is not None or out_scale is not None:
            raise ValueError("output_scale and out_scale are valid only for INT4 output")
        if epilogue is not Epilogue.NONE:
            raise ValueError("ragged fused ReLU2/SwiGLU currently requires OutputDType.INT4")
        output_shape = (rows, cols)
        torch_output_dtype = (
            torch.bfloat16 if selected_output_dtype is OutputDType.BF16 else torch.float32
        )
    if out is None:
        out = torch.empty(output_shape, device=lhs.device, dtype=torch_output_dtype)
    else:
        _require_cuda_tensor(torch, "out", out)
        if out.device != lhs.device:
            raise ValueError(f"out must be on device {lhs.device}; got {out.device}")
        if tuple(out.shape) != output_shape:
            raise ValueError(f"out must have shape {output_shape}; got {tuple(out.shape)}")
        if out.dtype != torch_output_dtype:
            raise ValueError(f"out dtype {out.dtype} does not match output_dtype {selected_output_dtype.value}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")

    if selected_output_dtype is OutputDType.INT4:
        scale_shape = (rows, cols // 256)
        if out_scale is None:
            out_scale = torch.empty(scale_shape, device=lhs.device, dtype=torch.bfloat16)
        else:
            _require_cuda_tensor(torch, "out_scale", out_scale)
            if out_scale.device != lhs.device:
                raise ValueError(f"out_scale must be on device {lhs.device}; got {out_scale.device}")
            if tuple(out_scale.shape) != scale_shape:
                raise ValueError(f"out_scale must have shape {scale_shape}; got {tuple(out_scale.shape)}")
            if out_scale.dtype != torch.bfloat16:
                raise ValueError(f"out_scale must have dtype torch.bfloat16; got {out_scale.dtype}")
            if not out_scale.is_contiguous():
                raise ValueError("out_scale must be contiguous")

    if group_info.num_tasks == 0:
        if selected_output_dtype is OutputDType.INT4:
            return QuantizedInt4Tensor(out, out_scale, (rows, cols), selected_output_scale)
        return out

    use_even_k_fast_path = _can_use_even_k_fast_path(
        logical_k=logical_k,
        scale=scale,
        config=config,
    )
    variant = RAGGED_EVEN_K if use_even_k_fast_path else RAGGED_MASK_K
    if try_native:
        if selected_output_dtype is OutputDType.FLOAT32:
            if use_native is True:
                raise ValueError("native ragged forward dispatch does not support FP32 output")
        else:
            try:
                from .native import launch_ragged_fwd_kernel

                return launch_ragged_fwd_kernel(
                    lhs,
                    rhs,
                    group_info=group_info,
                    a_scale=a_scale,
                    b_scale=b_scale,
                    out=out,
                    out_scale=out_scale,
                    scale=scale,
                    config=config,
                    layout=layout,
                    variant=variant,
                    epilogue=epilogue,
                    output_dtype=selected_output_dtype,
                    output_scale=selected_output_scale,
                    rows=rows,
                    cols=cols,
                    k_packed=k_packed,
                    scale_cols=scale_cols,
                    root=native_root,
                    library_path=native_library_path,
                )
            except Exception as exc:
                _raise_or_fallback(use_native, exc)
    elif use_native is True:
        raise ValueError("native ragged forward dispatch requires a_scale and b_scale")

    triton, _ = _triton()
    grid = (
        group_info.num_tasks * _cdiv(cols, config.block_n),
    )
    if selected_output_dtype is OutputDType.INT4:
        kernel = _ragged_dot_int4_quant_kernel(specialize_runtime_args=True)
        kernel[grid](
            lhs,
            rhs,
            a_scale if a_scale is not None else lhs,
            b_scale if b_scale is not None else lhs,
            group_info.group_id,
            group_info.block_start,
            group_info.actual_start,
            group_info.actual_end,
            out,
            out_scale,
            rows,
            cols,
            k_packed,
            scale_cols,
            group_info.num_tasks,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            HAS_LHS_SCALE=a_scale is not None,
            HAS_RHS_SCALE=b_scale is not None,
            SUBCHANNEL=subchannel,
            GROUP_SIZE_TASKS=config.group_size_tasks,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            EVEN_K_FAST_PATH=use_even_k_fast_path,
            SWIGLU=epilogue is Epilogue.SWIGLU,
            RELU2=epilogue is Epilogue.RELU2,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
        return QuantizedInt4Tensor(out, out_scale, (rows, cols), selected_output_scale)
    if use_even_k_fast_path:
        kernel = _ragged_dot_int4_even_k_kernel(specialize_runtime_args=True)
        kernel[grid](
            lhs,
            rhs,
            a_scale if a_scale is not None else lhs,
            b_scale if b_scale is not None else lhs,
            group_info.group_id,
            group_info.block_start,
            group_info.actual_start,
            group_info.actual_end,
            out,
            rows,
            cols,
            k_packed,
            scale_cols,
            group_info.num_tasks,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            HAS_LHS_SCALE=a_scale is not None,
            HAS_RHS_SCALE=b_scale is not None,
            SUBCHANNEL=subchannel,
            GROUP_SIZE_TASKS=config.group_size_tasks,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
        return out

    kernel = _ragged_dot_int4_kernel(specialize_runtime_args=True)
    kernel[grid](
        lhs,
        rhs,
        a_scale if a_scale is not None else lhs,
        b_scale if b_scale is not None else lhs,
        group_info.group_id,
        group_info.block_start,
        group_info.actual_start,
        group_info.actual_end,
        out,
        rows,
        cols,
        k_packed,
        scale_cols,
        group_info.num_tasks,
        BLOCK_M=config.block_m,
        BLOCK_N=config.block_n,
        BLOCK_K=config.block_k,
        HAS_LHS_SCALE=a_scale is not None,
        HAS_RHS_SCALE=b_scale is not None,
        SUBCHANNEL=subchannel,
        GROUP_SIZE_TASKS=config.group_size_tasks,
        A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
        B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
        num_warps=config.num_warps,
        num_stages=config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    return out


def ragged_dot_int4_bwd(
    lhs: Any,
    rhs: Any,
    group_sizes: Any | None = None,
    *,
    group_info: RaggedBwdGroupInfo | None = None,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    config: RaggedBwdDotConfig | None = None,
    layout: GemmLayout = GemmLayout.NN,
    out: Any | None = None,
    output_dtype: Any | None = None,
    use_native: bool | None = None,
    native_root: str | None = None,
    native_library_path: str | None = None,
) -> Any:
    """Grouped K-ragged split-K int4 dot for backward-style reductions.

    Each group computes ``out[g] = op(lhs[g]) @ op(rhs[g])`` with logical
    output shape ``(M, N)`` and a group-specific logical reduction length
    ``group_sizes[g]``. Operands are padded to a common packed-K capacity.
    When every non-empty group length is compatible with ``config.block_k``,
    the default fast path removes K masks; otherwise the kernel masks K loads
    by ``group_sizes``.

    Packed operand shapes by layout:

    * ``NN``: ``lhs[G, M, K / 2]`` and ``rhs[G, K / 2, N]``;
    * ``NT``: ``lhs[G, M, K / 2]`` and ``rhs[G, N, K / 2]``;
    * ``TN``: ``lhs[G, K / 2, M]`` and ``rhs[G, K / 2, N]``;
    * ``TT``: ``lhs[G, K / 2, M]`` and ``rhs[G, N, K / 2]``.

    The output has shape ``(G, M, N)``. ``split_k=1`` defaults to BF16 and
    rounds the FP32 register accumulation once at the final store; callers may
    request FP32 explicitly. For ``split_k > 1``, the output must be FP32
    because partial tiles are accumulated with FP32 atomics. Packed INT4
    backward output is unsupported; a separate final quantizer is required
    after all reduction partitions have produced one shared result.

    With ``config=None``, the API selects a measured layout-, scale-, output-,
    and K-variant-specific tile. Pass an explicit config to force a tile.
    Automatic BF16 dispatch uses shape-specialized JIT for generic shapes and
    a packaged wide-store native artifact only for eligible exact 4096-cube
    ``NN``/``TN`` shapes. Set ``use_native`` explicitly to override automatic
    dispatch; generic packaged artifacts remain available with ``True``.

    Raw ``group_sizes`` values are validated on the host before variant
    selection. For CUDA/HIP graph capture, pass ``group_sizes=None`` with a
    ``group_info`` produced by :func:`prepare_ragged_bwd_group_info`; prepare
    and warm the launch before capture, pass a preallocated ``out``, and pin
    ``use_native`` so replay cannot change backend.
    """

    layout = _check_layout(layout)
    torch = _torch()

    _require_cuda_tensor(torch, "lhs", lhs)
    _require_cuda_tensor(torch, "rhs", rhs)
    if lhs.dtype != torch.uint8:
        raise ValueError(f"lhs must be packed int4 torch.uint8; got {lhs.dtype}")
    if rhs.dtype != torch.uint8:
        raise ValueError(f"rhs must be packed int4 torch.uint8; got {rhs.dtype}")
    if lhs.ndim != 3:
        raise ValueError(f"lhs must be a grouped packed tensor; got shape {tuple(lhs.shape)}")
    if rhs.ndim != 3:
        raise ValueError(f"rhs must be a grouped packed tensor; got shape {tuple(rhs.shape)}")
    if not lhs.is_contiguous():
        raise ValueError("lhs must be contiguous")
    if not rhs.is_contiguous():
        raise ValueError("rhs must be contiguous")

    rows, cols, k_packed, groups = _bwd_logical_shape(lhs, rhs, layout)
    logical_k_capacity = k_packed * 2
    selection_config = config or RaggedBwdDotConfig()
    using_prepared_group_info = group_info is not None
    if group_info is None:
        if group_sizes is None:
            raise ValueError("pass exactly one of group_sizes or group_info")
        host_group_sizes = _validate_k_group_sizes(
            torch,
            group_sizes,
            groups=groups,
            max_k=logical_k_capacity,
        )
        if group_sizes.device != lhs.device or group_sizes.dtype != torch.int32:
            group_sizes = group_sizes.to(device=lhs.device, dtype=torch.int32)
        use_even_k_fast_path = _can_use_bwd_even_k_fast_path(
            torch,
            group_sizes=host_group_sizes,
            scale=scale,
            config=selection_config,
        )
        variant = RAGGED_EVEN_K if use_even_k_fast_path else RAGGED_MASK_K
    else:
        if group_sizes is not None:
            raise ValueError("pass exactly one of group_sizes or group_info")
        _validate_prepared_bwd_group_info(
            torch,
            group_info,
            device=lhs.device,
            groups=groups,
            k_capacity=logical_k_capacity,
            scale=scale,
            config=selection_config,
        )
        group_sizes = group_info.group_sizes
        variant = group_info.variant
        use_even_k_fast_path = variant == RAGGED_EVEN_K
        if use_native is None:
            raise ValueError(
                "prepared backward group_info requires use_native=True or use_native=False"
            )

    _require_bfloat16_scale(torch, "a_scale", a_scale)
    _require_bfloat16_scale(torch, "b_scale", b_scale)
    if a_scale is not None:
        _require_cuda_tensor(torch, "a_scale", a_scale)
    if b_scale is not None:
        _require_cuda_tensor(torch, "b_scale", b_scale)

    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or 0
        if subchannel % 2 != 0:
            raise ValueError("subchannel_size must be even for packed int4 operands")
        scale_cols = _cdiv(logical_k_capacity, subchannel)
    else:
        subchannel = 0
        scale_cols = 1
    _validate_bwd_scale_shapes(
        a_scale=a_scale,
        b_scale=b_scale,
        scale=scale,
        groups=groups,
        rows=rows,
        cols=cols,
        scale_cols=scale_cols,
    )
    if a_scale is not None and not a_scale.is_contiguous():
        raise ValueError("a_scale must be contiguous")
    if b_scale is not None and not b_scale.is_contiguous():
        raise ValueError("b_scale must be contiguous")

    if output_dtype is None:
        output_dtype = out.dtype if out is not None else (
            torch.bfloat16 if selection_config.split_k == 1 else torch.float32
        )
    if output_dtype not in {torch.float32, torch.bfloat16}:
        raise ValueError(
            f"output_dtype must be torch.float32 or torch.bfloat16; got {output_dtype}"
        )
    if config is None:
        config = default_ragged_bwd_config(
            layout=layout,
            scale=scale,
            variant=variant,
            output_dtype="bfloat16" if output_dtype == torch.bfloat16 else "float32",
        )
    if config.split_k > 1 and output_dtype != torch.float32:
        raise ValueError("split_k > 1 requires torch.float32 output for atomic accumulation")
    if using_prepared_group_info and out is None:
        raise ValueError("prepared backward group_info requires a preallocated out tensor")
    if out is None:
        out = torch.empty((groups, rows, cols), device=lhs.device, dtype=output_dtype)
    else:
        _require_cuda_tensor(torch, "out", out)
        if out.device != lhs.device:
            raise ValueError(f"out must be on device {lhs.device}; got {out.device}")
        if tuple(out.shape) != (groups, rows, cols):
            raise ValueError(f"out must have shape ({groups}, {rows}, {cols}); got {tuple(out.shape)}")
        if out.dtype != output_dtype:
            raise ValueError(f"out dtype {out.dtype} does not match output_dtype {output_dtype}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")
    if config.split_k > 1:
        out.zero_()

    grid_x = groups * _cdiv(rows, config.block_m) * _cdiv(cols, config.block_n)
    if grid_x == 0:
        return out

    # Generic BF16 packaged artifacts trail shape-specialized JIT on gfx1151.
    # Automatic dispatch uses native only when an exact wide-store artifact is
    # eligible; explicit use_native=True continues to allow generic artifacts.
    try_native = _should_try_native_bwd(
        use_native=use_native,
        layout=layout,
        output_is_bf16=output_dtype == torch.bfloat16,
        split_k=config.split_k,
        rows=rows,
        cols=cols,
        logical_k_capacity=logical_k_capacity,
        out_data_ptr=out.data_ptr(),
    )
    if try_native and a_scale is not None and b_scale is not None:
        try:
            from .native import launch_ragged_bwd_kernel

            return launch_ragged_bwd_kernel(
                lhs,
                rhs,
                group_sizes,
                a_scale=a_scale,
                b_scale=b_scale,
                out=out,
                scale=scale,
                config=config,
                layout=layout,
                variant=variant,
                rows=rows,
                cols=cols,
                k_packed=k_packed,
                scale_cols=scale_cols,
                root=native_root,
                library_path=native_library_path,
            )
        except Exception as exc:
            _raise_or_fallback(use_native, exc)
    elif use_native is True:
        raise ValueError("native ragged backward dispatch requires a_scale and b_scale")

    triton, _ = _triton()
    grid = (
        grid_x,
        config.split_k,
    )
    specialize_runtime_args = config.split_k == 1 and output_dtype == torch.bfloat16
    _ragged_dot_int4_bwd_kernel(specialize_runtime_args=specialize_runtime_args)[grid](
        lhs,
        rhs,
        a_scale if a_scale is not None else lhs,
        b_scale if b_scale is not None else lhs,
        group_sizes,
        out,
        rows,
        cols,
        k_packed,
        scale_cols,
        BLOCK_M=config.block_m,
        BLOCK_N=config.block_n,
        BLOCK_K=config.block_k,
        SPLIT_K=config.split_k,
        HAS_LHS_SCALE=a_scale is not None,
        HAS_RHS_SCALE=b_scale is not None,
        SUBCHANNEL=subchannel,
        A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
        B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
        EVEN_K_FAST_PATH=use_even_k_fast_path,
        PAIRED_BF16_STORE=False,
        num_warps=config.num_warps,
        num_stages=config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    return out


def ragged_dot_int4_bwd_accum(
    lhs: Any,
    rhs: Any,
    expert_task_ranges: Any,
    *,
    a_scale: Any,
    b_scale: Any,
    config: RaggedBwdDotConfig = RAGGED_BWD_ACCUM_CONFIG,
    out: Any | None = None,
    output_dtype: Any | None = None,
    use_native: bool | None = None,
    native_root: str | None = None,
    native_library_path: str | None = None,
) -> Any:
    """Accumulate task-packed int4 products into dropless expert dW tensors.

    ``lhs`` and ``rhs`` contain 64-row task tiles packed along the row axis,
    with shapes ``[T, 32, M]`` and ``[T, 32, N]``. Per-task, per-output-channel
    scales have shapes ``[T, M]`` and ``[T, N]``. ``expert_task_ranges[e]`` is
    the half-open task range owned by expert ``e``. The output has shape
    ``[E, M, N]`` and defaults to fp32. ``output_dtype=torch.bfloat16`` stores
    the final fp32 tile accumulation directly as bf16 without an intermediate
    fp32 output tensor.
    Task ranges are validated on the host and normalized to int32, so this API
    is not safe to invoke while a CUDA graph is being captured.
    """

    torch = _torch()
    for name, tensor in (
        ("lhs", lhs),
        ("rhs", rhs),
        ("expert_task_ranges", expert_task_ranges),
        ("a_scale", a_scale),
        ("b_scale", b_scale),
    ):
        _require_cuda_tensor(torch, name, tensor)
        if tensor.device != lhs.device:
            raise ValueError(f"{name} must be on device {lhs.device}; got {tensor.device}")
    if lhs.dtype != torch.uint8 or rhs.dtype != torch.uint8:
        raise ValueError("task-packed int4 dW operands must have dtype torch.uint8")
    if lhs.ndim != 3 or rhs.ndim != 3:
        raise ValueError("task-packed int4 dW operands must be rank-3")
    if lhs.shape[0] != rhs.shape[0] or lhs.shape[1] != rhs.shape[1]:
        raise ValueError("task-packed int4 dW operands must share task and packed-row dimensions")
    if not lhs.is_contiguous() or not rhs.is_contiguous():
        raise ValueError("task-packed int4 dW operands must be contiguous")
    if int(lhs.shape[1]) * 2 != config.block_k:
        raise ValueError(
            f"packed task rows must match config.block_k={config.block_k}; got {int(lhs.shape[1]) * 2}"
        )
    if config.split_k != 1:
        raise ValueError("task-accumulating int4 dW requires split_k=1")
    if expert_task_ranges.ndim != 2 or int(expert_task_ranges.shape[1]) != 2:
        raise ValueError("expert_task_ranges must have shape [experts, 2]")
    if expert_task_ranges.dtype not in {torch.int32, torch.int64}:
        raise ValueError("expert_task_ranges must have int32 or int64 dtype")
    if not expert_task_ranges.is_contiguous():
        raise ValueError("expert_task_ranges must be contiguous")
    tasks, rows, cols = int(lhs.shape[0]), int(lhs.shape[2]), int(rhs.shape[2])
    experts = int(expert_task_ranges.shape[0])
    if tasks > torch.iinfo(torch.int32).max:
        raise ValueError(f"task count must fit int32 native metadata; got {tasks}")
    host_task_ranges = expert_task_ranges.detach().cpu()
    starts = host_task_ranges[:, 0]
    ends = host_task_ranges[:, 1]
    if bool((starts < 0).any()) or bool((ends < starts).any()) or bool((ends > tasks).any()):
        raise ValueError(
            f"expert_task_ranges must satisfy 0 <= start <= end <= tasks ({tasks})"
        )
    if expert_task_ranges.dtype != torch.int32:
        expert_task_ranges = expert_task_ranges.to(dtype=torch.int32)
    _require_bfloat16_scale(torch, "a_scale", a_scale)
    _require_bfloat16_scale(torch, "b_scale", b_scale)
    if tuple(a_scale.shape) != (tasks, rows) or tuple(b_scale.shape) != (tasks, cols):
        raise ValueError("task-packed int4 dW scales must have shapes [tasks, M] and [tasks, N]")
    if not a_scale.is_contiguous() or not b_scale.is_contiguous():
        raise ValueError("task-packed int4 dW scales must be contiguous")
    if output_dtype is None:
        output_dtype = torch.float32
    if output_dtype not in {torch.float32, torch.bfloat16}:
        raise ValueError(
            f"output_dtype must be torch.float32 or torch.bfloat16; got {output_dtype}"
        )
    if out is None:
        out = torch.empty((experts, rows, cols), device=lhs.device, dtype=output_dtype)
    else:
        _require_cuda_tensor(torch, "out", out)
        if out.device != lhs.device:
            raise ValueError(f"out must be on device {lhs.device}; got {out.device}")
        if tuple(out.shape) != (experts, rows, cols):
            raise ValueError(
                f"out must have shape ({experts}, {rows}, {cols}); got {tuple(out.shape)}"
            )
        if out.dtype != output_dtype:
            raise ValueError(f"out dtype {out.dtype} does not match output_dtype {output_dtype}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")
    if experts == 0 or rows == 0 or cols == 0:
        return out

    if use_native is not False:
        try:
            from .native import launch_ragged_bwd_kernel

            return launch_ragged_bwd_kernel(
                lhs,
                rhs,
                expert_task_ranges,
                a_scale=a_scale,
                b_scale=b_scale,
                out=out,
                scale=ScaleSpec(ScaleMode.PER_CHANNEL),
                config=config,
                layout=GemmLayout.TN,
                variant=RAGGED_EVEN_K,
                rows=rows,
                cols=cols,
                k_packed=int(lhs.shape[1]),
                scale_cols=1,
                root=native_root,
                library_path=native_library_path,
                mode=RAGGED_BWD_ACCUM,
                groups=experts,
            )
        except Exception as exc:
            _raise_or_fallback(use_native, exc)

    grid = (experts * _cdiv(rows, config.block_m) * _cdiv(cols, config.block_n),)
    _ragged_dot_int4_bwd_accum_kernel()[grid](
        lhs,
        rhs,
        a_scale,
        b_scale,
        expert_task_ranges,
        out,
        rows,
        cols,
        int(lhs.shape[1]),
        1,
        BLOCK_M=config.block_m,
        BLOCK_N=config.block_n,
        BLOCK_K=config.block_k,
        num_warps=config.num_warps,
        num_stages=config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    return out

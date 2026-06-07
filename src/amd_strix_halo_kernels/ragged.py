from __future__ import annotations

from dataclasses import dataclass
from functools import lru_cache
from typing import Any

from .metadata import GemmLayout, ScaleMode, ScaleSpec


@dataclass(frozen=True, slots=True)
class RaggedDotConfig:
    """Triton launch configuration for forward ragged int4 dot."""

    block_m: int = 16
    block_n: int = 128
    block_k: int = 32
    align_tile: int = 8
    group_size_tasks: int = 1
    enable_even_k_fast_path: bool = True
    num_warps: int = 4
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

    block_m: int = 32
    block_n: int = 128
    block_k: int = 64
    split_k: int = 1
    num_warps: int = 4
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
        NUM_TASKS: tl.constexpr,
        TASK_CAPACITY: tl.constexpr,
        GROUPS: tl.constexpr,
        TILE: tl.constexpr,
        ALIGN_TILE: tl.constexpr,
        SEARCH_STEPS: tl.constexpr,
        BLOCK_TASKS: tl.constexpr,
    ):
        offsets = tl.program_id(0) * BLOCK_TASKS + tl.arange(0, BLOCK_TASKS)
        in_capacity = offsets < TASK_CAPACITY
        valid_task = offsets < NUM_TASKS

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


def _empty_group_info(torch: Any, *, device: Any, capacity: int, num_tasks: int = 0) -> RaggedGroupInfo:
    kwargs = {"device": device, "dtype": torch.int64}
    return RaggedGroupInfo(
        group_id=torch.empty((capacity,), **kwargs),
        block_start=torch.empty((capacity,), **kwargs),
        actual_start=torch.empty((capacity,), **kwargs),
        actual_end=torch.empty((capacity,), **kwargs),
        start_within_block=torch.empty((capacity,), **kwargs),
        actual_size=torch.empty((capacity,), **kwargs),
        num_tasks=num_tasks,
    )


def calculate_group_info(
    group_sizes: Any,
    tile: int,
    *,
    tid_size: int | None = None,
    align_tile: int = 8,
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

    sizes = torch.clamp(group_sizes.to(dtype=torch.int64), min=0)
    groups = int(sizes.shape[0])
    group_starts = torch.empty((groups + 1,), device=sizes.device, dtype=torch.int64)
    group_starts[0] = 0
    if groups:
        group_starts[1:] = torch.cumsum(sizes, dim=0)

    if groups == 0:
        capacity = tid_size or 0
        info = _empty_group_info(torch, device=sizes.device, capacity=capacity)
        if capacity:
            info.group_id.zero_()
            info.block_start.zero_()
            info.actual_start.zero_()
            info.actual_end.zero_()
            info.start_within_block.zero_()
            info.actual_size.zero_()
        return info

    group_starts_without_initial = group_starts[:-1]
    group_starts_aligned = torch.div(group_starts_without_initial, align_tile, rounding_mode="floor") * align_tile
    group_ends = group_starts_without_initial + sizes
    blocks_numer = group_ends - group_starts_aligned + tile - 1
    group_num_blocks = torch.where(
        sizes == 0,
        torch.zeros_like(sizes),
        torch.div(blocks_numer, tile, rounding_mode="floor"),
    )
    group_start_tasks = torch.empty((groups + 1,), device=sizes.device, dtype=torch.int64)
    group_start_tasks[0] = 0
    group_start_tasks[1:] = torch.cumsum(group_num_blocks, dim=0)
    num_tasks = int(group_start_tasks[-1].detach().cpu().item())
    capacity = num_tasks if tid_size is None else tid_size
    if capacity < num_tasks:
        raise ValueError(f"tid_size must be at least {num_tasks}; got {capacity}")

    if capacity == 0:
        return _empty_group_info(torch, device=sizes.device, capacity=0, num_tasks=num_tasks)

    info = _empty_group_info(torch, device=sizes.device, capacity=capacity, num_tasks=num_tasks)
    if sizes.is_cuda:
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
            NUM_TASKS=num_tasks,
            TASK_CAPACITY=capacity,
            GROUPS=groups,
            TILE=tile,
            ALIGN_TILE=align_tile,
            SEARCH_STEPS=search_steps,
            BLOCK_TASKS=block_tasks,
        )
        return info

    task_idx = torch.arange(capacity, device=sizes.device, dtype=torch.int64)
    valid = task_idx < num_tasks
    task_group = torch.searchsorted(group_start_tasks[1:], task_idx, right=True)
    task_group = torch.clamp(task_group, max=groups - 1)
    task_block = task_idx - group_start_tasks[task_group]
    block_start = group_starts_aligned[task_group] + task_block * tile
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


@lru_cache(maxsize=1)
def _ragged_dot_int4_even_k_kernel() -> Any:
    triton, tl = _triton()

    @triton.jit
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


@lru_cache(maxsize=1)
def _ragged_dot_int4_kernel() -> Any:
    triton, tl = _triton()

    @triton.jit
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


@lru_cache(maxsize=1)
def _ragged_dot_int4_bwd_kernel() -> Any:
    triton, tl = _triton()

    @triton.jit
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
                if EVEN_K_FAST_PATH:
                    lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                    rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                else:
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
                k_base += block_k_packed * SPLIT_K
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
                    if EVEN_K_FAST_PATH:
                        lhs_values = tl.load(lhs + lhs_offsets, mask=row_mask[:, None], other=0)
                        rhs_values = tl.load(rhs + rhs_offsets, mask=col_mask[None, :], other=0)
                    else:
                        k_mask = (kp < group_k_packed) & ((kp - scale_k0) < packed_per_scale)
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
                    sk0 += scale_chunk_packed * SPLIT_K
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
            tl.store(out + out_offsets, acc, mask=out_mask)
        else:
            tl.atomic_add(out + out_offsets, acc, sem="relaxed", mask=out_mask)

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


def _forward_logical_shape(lhs: Any, rhs: Any, layout: GemmLayout) -> tuple[int, int, int, int]:
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
    return rows, cols, k_packed, groups


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
    group_sizes: Any,
    *,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    config: RaggedDotConfig = RaggedDotConfig(),
    layout: GemmLayout = GemmLayout.NN,
    out: Any | None = None,
    output_dtype: Any | None = None,
) -> Any:
    """Forward grouped ragged int4 dot using Triton ``tl.dot_scaled``.

    For ``layout=GemmLayout.NN``, ``lhs`` has shape ``(M, K / 2)`` and
    ``rhs`` has shape ``(G, K / 2, N)``. ``NT``, ``TN``, and ``TT`` use the
    same packed int4 conventions as the dense GEMM APIs: transposed operands
    move their packed-K dimension before the logical row/output-column axis.
    ``group_sizes`` has shape ``(G,)`` and assigns contiguous row groups of
    ``lhs`` to the corresponding RHS expert. The output shape is ``(M, N)``.

    Scale tensors follow this package's GEMM conventions with an added leading
    RHS group dimension:

    * per-channel: ``a_scale[M]`` and ``b_scale[G, N]``;
    * subchannel ``S``: ``a_scale[M, ceil(K / S)]`` and weight-matched
      ``b_scale[G, ceil(K / S), N]``.

    This is a Triton-JIT path, not a packaged HSACO dispatch path. It does not
    register autograd.
    """

    layout = _check_layout(layout)
    torch = _torch()
    triton, _ = _triton()

    _require_cuda_tensor(torch, "lhs", lhs)
    _require_cuda_tensor(torch, "rhs", rhs)
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

    rows, cols, k_packed, groups = _forward_logical_shape(lhs, rhs, layout)

    _validate_group_sizes(torch, group_sizes, groups=groups, rows=rows)
    if group_sizes.device != lhs.device:
        group_sizes = group_sizes.to(device=lhs.device)
    group_info = calculate_group_info(group_sizes, config.block_m, align_tile=config.align_tile)

    _require_bfloat16_scale(torch, "a_scale", a_scale)
    _require_bfloat16_scale(torch, "b_scale", b_scale)
    if a_scale is not None:
        _require_cuda_tensor(torch, "a_scale", a_scale)
    if b_scale is not None:
        _require_cuda_tensor(torch, "b_scale", b_scale)

    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or 0
    else:
        subchannel = 0
    logical_k = k_packed * 2
    scale_cols = 1
    if scale.mode is ScaleMode.SUBCHANNEL:
        if subchannel % 2 != 0:
            raise ValueError("subchannel_size must be even for packed int4 operands")
        scale_cols = triton.cdiv(logical_k, subchannel)
    _validate_scale_shapes(
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
        output_dtype = torch.bfloat16
    if output_dtype not in (torch.bfloat16, torch.float32):
        raise ValueError(f"output_dtype must be torch.bfloat16 or torch.float32; got {output_dtype}")
    if out is None:
        out = torch.empty((rows, cols), device=lhs.device, dtype=output_dtype)
    else:
        _require_cuda_tensor(torch, "out", out)
        if tuple(out.shape) != (rows, cols):
            raise ValueError(f"out must have shape ({rows}, {cols}); got {tuple(out.shape)}")
        if out.dtype != output_dtype:
            raise ValueError(f"out dtype {out.dtype} does not match output_dtype {output_dtype}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")

    grid = (
        group_info.num_tasks * triton.cdiv(cols, config.block_n),
    )
    if grid[0] == 0:
        return out

    use_even_k_fast_path = _can_use_even_k_fast_path(
        logical_k=logical_k,
        scale=scale,
        config=config,
    )
    if use_even_k_fast_path:
        kernel = _ragged_dot_int4_even_k_kernel()
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

    kernel = _ragged_dot_int4_kernel()
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
    group_sizes: Any,
    *,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    config: RaggedBwdDotConfig = RaggedBwdDotConfig(),
    layout: GemmLayout = GemmLayout.NN,
    out: Any | None = None,
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

    The output is FP32 with shape ``(G, M, N)``. For ``split_k > 1``, partial
    tiles are accumulated with FP32 atomics.
    """

    layout = _check_layout(layout)
    torch = _torch()
    triton, _ = _triton()

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
    host_group_sizes = _validate_k_group_sizes(torch, group_sizes, groups=groups, max_k=logical_k_capacity)
    if group_sizes.device != lhs.device:
        group_sizes = group_sizes.to(device=lhs.device)

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
        scale_cols = triton.cdiv(logical_k_capacity, subchannel)
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

    if out is None:
        out = torch.empty((groups, rows, cols), device=lhs.device, dtype=torch.float32)
    else:
        _require_cuda_tensor(torch, "out", out)
        if tuple(out.shape) != (groups, rows, cols):
            raise ValueError(f"out must have shape ({groups}, {rows}, {cols}); got {tuple(out.shape)}")
        if out.dtype != torch.float32:
            raise ValueError(f"out dtype must be torch.float32; got {out.dtype}")
        if not out.is_contiguous():
            raise ValueError("out must be contiguous")
    if config.split_k > 1:
        out.zero_()

    grid = (
        groups * triton.cdiv(rows, config.block_m) * triton.cdiv(cols, config.block_n),
        config.split_k,
    )
    if grid[0] == 0:
        return out

    use_even_k_fast_path = _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=host_group_sizes,
        scale=scale,
        config=config,
    )
    _ragged_dot_int4_bwd_kernel()[grid](
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
        num_warps=config.num_warps,
        num_stages=config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    return out

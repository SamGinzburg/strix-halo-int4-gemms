from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"


def add_local_package_to_path() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))


add_local_package_to_path()

import torch
import triton
import triton.language as tl

from amd_strix_halo_kernels.artifacts import (
    display_path,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.metadata import Epilogue, GemmLayout, KernelMetadata, KernelSchedule, OperandDType, ScaleMode
from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import LaunchShape, plan_template


def _device_num_sms() -> int:
    return int(torch.cuda.get_device_properties("cuda").multi_processor_count)


def launch_grid(kernel: KernelMetadata, shape: LaunchShape, *, num_sms: int | None = None) -> tuple[int, int]:
    tile_count = triton.cdiv(shape.m, kernel.tile.block_m) * triton.cdiv(shape.n, kernel.tile.block_n)
    if kernel.schedule is KernelSchedule.PERSISTENT:
        return (min(num_sms if num_sms is not None else _device_num_sms(), tile_count), kernel.tile.split_k)
    return (tile_count, kernel.tile.split_k)


def launch_metadata(program: object, kernel: KernelMetadata, shape: LaunchShape) -> dict[str, int]:
    metadata = program.metadata
    num_sms = _device_num_sms() if kernel.schedule is KernelSchedule.PERSISTENT else 0
    grid_x, grid_y = launch_grid(kernel, shape, num_sms=num_sms)
    return {
        "num_ctas": int(metadata.num_ctas),
        "num_warps": int(metadata.num_warps),
        "shared_memory_bytes": int(metadata.shared),
        "grid_x": int(grid_x),
        "grid_y": int(grid_y),
        "num_sms": int(num_sms),
        "persistent": int(kernel.schedule is KernelSchedule.PERSISTENT),
    }


def triton_checkout_root() -> Path | None:
    module_file = getattr(triton, "__file__", None)
    if module_file is None:
        return None

    module_path = Path(module_file).resolve()
    for parent in module_path.parents:
        if (parent / ".git").exists() and (parent / "python" / "triton").exists():
            return parent
    for parent in module_path.parents:
        if parent.name == "triton":
            return parent
    return module_path.parent


@triton.jit
def _int4_scaled_gemm(a, b, a_scale, b_scale, c, gate, M, N, K,
                      BLOCK_M: tl.constexpr, BLOCK_N: tl.constexpr, BLOCK_K: tl.constexpr,
                      GROUP_SIZE_M: tl.constexpr, SUBCHANNEL: tl.constexpr, PER_CHANNEL: tl.constexpr,
                      SWIGLU: tl.constexpr, RELU2: tl.constexpr, EVEN_K: tl.constexpr, SPLIT_K: tl.constexpr,
                      A_TRANS: tl.constexpr, B_TRANS: tl.constexpr):
    pid = tl.program_id(0)
    pid_k = tl.program_id(1)
    num_pid_m = tl.cdiv(M, BLOCK_M)
    num_pid_n = tl.cdiv(N, BLOCK_N)
    num_pid_in_group = GROUP_SIZE_M * num_pid_n
    group_id = pid // num_pid_in_group
    first_pid_m = group_id * GROUP_SIZE_M
    group_size_m = tl.minimum(num_pid_m - first_pid_m, GROUP_SIZE_M)
    pid_m = first_pid_m + ((pid % num_pid_in_group) % group_size_m)
    pid_n = (pid % num_pid_in_group) // group_size_m

    k_packed_total = K // 2
    block_k_packed: tl.constexpr = BLOCK_K // 2
    split_k_stride_packed: tl.constexpr = block_k_packed * SPLIT_K
    offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    offs_k = tl.arange(0, block_k_packed)
    b_cols = N * 2 if SWIGLU else N
    if PER_CHANNEL:
        acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
        acc_gate_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
        for k_iter in range(0, tl.cdiv(k_packed_total, split_k_stride_packed)):
            k0 = k_iter * split_k_stride_packed
            kp = k0 + pid_k * block_k_packed + offs_k
            mask_a = (kp[None, :] < k_packed_total) | EVEN_K
            mask_b = (kp[:, None] < k_packed_total) | EVEN_K
            if A_TRANS:
                pa = tl.load(a + kp[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
            else:
                pa = tl.load(a + offs_m[:, None] * k_packed_total + kp[None, :], mask=mask_a, other=0)
            if B_TRANS:
                pb = tl.load(b + offs_n[None, :] * k_packed_total + kp[:, None], mask=mask_b, other=0)
            else:
                pb = tl.load(b + kp[:, None] * b_cols + offs_n[None, :], mask=mask_b, other=0)
            acc_i32 = tl.dot_scaled(pa, None, "int4", pb, None, "int4", acc_i32, out_dtype=tl.int32)
            if SWIGLU:
                if B_TRANS:
                    pb_gate = tl.load(
                        b + (offs_n[None, :] + N) * k_packed_total + kp[:, None], mask=mask_b, other=0
                    )
                else:
                    pb_gate = tl.load(b + kp[:, None] * b_cols + (offs_n[None, :] + N), mask=mask_b, other=0)
                acc_gate_i32 = tl.dot_scaled(pa, None, "int4", pb_gate, None, "int4", acc_gate_i32, out_dtype=tl.int32)
        acc = acc_i32.to(tl.float32)
        sa = tl.load(a_scale + offs_m).to(tl.float32)
        sb = tl.load(b_scale + offs_n).to(tl.float32)
        acc *= sa[:, None] * sb[None, :]
        if SWIGLU:
            gate_acc = acc_gate_i32.to(tl.float32)
            sb_gate = tl.load(b_scale + offs_n + N).to(tl.float32)
            gate_acc *= sa[:, None] * sb_gate[None, :]
            acc = acc * (gate_acc / (1.0 + tl.exp(-gate_acc)))
        if RELU2:
            acc = tl.maximum(acc, 0.0)
            acc = acc * acc
    else:
        scale_cols = tl.cdiv(K, SUBCHANNEL)
        packed_per_scale: tl.constexpr = SUBCHANNEL // 2
        scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
        scale_chunk_stride: tl.constexpr = scale_chunk_packed * SPLIT_K
        offs_k_scale = tl.arange(0, scale_chunk_packed)
        acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
        gate_acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
        for scale_idx in range(0, scale_cols):
            # Accumulate the whole subchannel with int4 MMA in i32, then apply
            # the BF16 scales once. Passing scales into each dot would repeat
            # the same scale multiply for every BK partial in this group.
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            acc_gate_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            scale_k0 = scale_idx * packed_per_scale
            for sk0 in range(0, packed_per_scale, scale_chunk_stride):
                kp = scale_k0 + sk0 + pid_k * scale_chunk_packed + offs_k_scale
                mask_k = (kp < k_packed_total) & ((kp - scale_k0) < packed_per_scale)
                mask_a = mask_k[None, :]
                mask_b = mask_k[:, None]
                if A_TRANS:
                    pa = tl.load(a + kp[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
                else:
                    pa = tl.load(a + offs_m[:, None] * k_packed_total + kp[None, :], mask=mask_a, other=0)
                if B_TRANS:
                    pb = tl.load(b + offs_n[None, :] * k_packed_total + kp[:, None], mask=mask_b, other=0)
                else:
                    pb = tl.load(b + kp[:, None] * b_cols + offs_n[None, :], mask=mask_b, other=0)
                acc_i32 = tl.dot_scaled(pa, None, "int4", pb, None, "int4", acc_i32, out_dtype=tl.int32)
                if SWIGLU:
                    if B_TRANS:
                        pb_gate = tl.load(
                            b + (offs_n[None, :] + N) * k_packed_total + kp[:, None], mask=mask_b, other=0
                        )
                    else:
                        pb_gate = tl.load(b + kp[:, None] * b_cols + (offs_n[None, :] + N), mask=mask_b, other=0)
                    acc_gate_i32 = tl.dot_scaled(
                        pa, None, "int4", pb_gate, None, "int4", acc_gate_i32, out_dtype=tl.int32
                    )
            sa = tl.load(a_scale + offs_m[:, None] * scale_cols + scale_idx).to(tl.float32)
            sb = tl.load(b_scale + scale_idx * b_cols + offs_n).to(tl.float32)
            acc += acc_i32.to(tl.float32) * sa * sb[None, :]
            if SWIGLU:
                sb_gate = tl.load(b_scale + scale_idx * b_cols + offs_n + N).to(tl.float32)
                gate_acc += acc_gate_i32.to(tl.float32) * sa * sb_gate[None, :]
        if SWIGLU:
            acc = acc * (gate_acc / (1.0 + tl.exp(-gate_acc)))
        if RELU2:
            acc = tl.maximum(acc, 0.0)
            acc = acc * acc
    if SPLIT_K == 1:
        tl.store(c + offs_m[:, None] * N + offs_n[None, :], acc)
    else:
        tl.atomic_add(c + offs_m[:, None] * N + offs_n[None, :], acc, sem="relaxed")


@triton.jit
def _int4_scaled_gemm_persistent(a, b, a_scale, b_scale, c, gate,
                                 M, N, K,
                                 BLOCK_M: tl.constexpr, BLOCK_N: tl.constexpr, BLOCK_K: tl.constexpr,
                                 GROUP_SIZE_M: tl.constexpr, SUBCHANNEL: tl.constexpr,
                                 PER_CHANNEL: tl.constexpr, EVEN_K: tl.constexpr,
                                 SPLIT_K: tl.constexpr, NUM_SMS: tl.constexpr,
                                 A_TRANS: tl.constexpr, B_TRANS: tl.constexpr):
    start_pid = tl.program_id(0)
    pid_k = tl.program_id(1)
    num_pid_m = tl.cdiv(M, BLOCK_M)
    num_pid_n = tl.cdiv(N, BLOCK_N)
    num_tiles = num_pid_m * num_pid_n
    num_pid_in_group = GROUP_SIZE_M * num_pid_n

    k_packed_total = K // 2
    block_k_packed: tl.constexpr = BLOCK_K // 2
    split_k_stride_packed: tl.constexpr = block_k_packed * SPLIT_K
    offs_k = tl.arange(0, block_k_packed)

    for tile_id in tl.range(start_pid, num_tiles, NUM_SMS):
        group_id = tile_id // num_pid_in_group
        first_pid_m = group_id * GROUP_SIZE_M
        group_size_m = tl.minimum(num_pid_m - first_pid_m, GROUP_SIZE_M)
        pid_m = first_pid_m + ((tile_id % num_pid_in_group) % group_size_m)
        pid_n = (tile_id % num_pid_in_group) // group_size_m
        offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
        offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)

        if PER_CHANNEL:
            acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
            for k_iter in range(0, tl.cdiv(k_packed_total, split_k_stride_packed)):
                k0 = k_iter * split_k_stride_packed
                kp = k0 + pid_k * block_k_packed + offs_k
                mask_a = (kp[None, :] < k_packed_total) | EVEN_K
                mask_b = (kp[:, None] < k_packed_total) | EVEN_K
                if A_TRANS:
                    pa = tl.load(a + kp[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
                else:
                    pa = tl.load(a + offs_m[:, None] * k_packed_total + kp[None, :], mask=mask_a, other=0)
                if B_TRANS:
                    b_offsets = offs_n[None, :].to(tl.int64) * k_packed_total + kp[:, None].to(tl.int64)
                    pb = tl.load(b + b_offsets, mask=mask_b, other=0)
                else:
                    pb = tl.load(b + kp[:, None] * N + offs_n[None, :], mask=mask_b, other=0)
                acc_i32 = tl.dot_scaled(pa, None, "int4", pb, None, "int4", acc_i32, out_dtype=tl.int32)
            acc = acc_i32.to(tl.float32)
            sa = tl.load(a_scale + offs_m).to(tl.float32)
            sb = tl.load(b_scale + offs_n).to(tl.float32)
            acc *= sa[:, None] * sb[None, :]
        else:
            scale_cols = tl.cdiv(K, SUBCHANNEL)
            packed_per_scale: tl.constexpr = SUBCHANNEL // 2
            scale_chunk_packed: tl.constexpr = min(block_k_packed, packed_per_scale)
            scale_chunk_stride: tl.constexpr = scale_chunk_packed * SPLIT_K
            offs_k_scale = tl.arange(0, scale_chunk_packed)
            acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
            for scale_idx in range(0, scale_cols):
                # Accumulate the whole subchannel with int4 MMA in i32, then
                # apply BF16 scales once for this subchannel group.
                acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)
                scale_k0 = scale_idx * packed_per_scale
                for sk0 in range(0, packed_per_scale, scale_chunk_stride):
                    kp = scale_k0 + sk0 + pid_k * scale_chunk_packed + offs_k_scale
                    mask_k = (kp < k_packed_total) & ((kp - scale_k0) < packed_per_scale)
                    mask_a = mask_k[None, :]
                    mask_b = mask_k[:, None]
                    if A_TRANS:
                        pa = tl.load(a + kp[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
                    else:
                        pa = tl.load(a + offs_m[:, None] * k_packed_total + kp[None, :], mask=mask_a, other=0)
                    if B_TRANS:
                        b_offsets = offs_n[None, :].to(tl.int64) * k_packed_total + kp[:, None].to(tl.int64)
                        pb = tl.load(b + b_offsets, mask=mask_b, other=0)
                    else:
                        pb = tl.load(b + kp[:, None] * N + offs_n[None, :], mask=mask_b, other=0)
                    acc_i32 = tl.dot_scaled(pa, None, "int4", pb, None, "int4", acc_i32, out_dtype=tl.int32)
                sa = tl.load(a_scale + offs_m[:, None] * scale_cols + scale_idx).to(tl.float32)
                sb = tl.load(b_scale + scale_idx * N + offs_n).to(tl.float32)
                acc += acc_i32.to(tl.float32) * sa * sb[None, :]

        if SPLIT_K == 1:
            tl.store(c + offs_m[:, None] * N + offs_n[None, :], acc)
        else:
            tl.atomic_add(c + offs_m[:, None] * N + offs_n[None, :], acc, sem="relaxed")


@triton.jit
def _int8_scaled_gemm(a, b, a_scale, b_scale, c, gate, M, N, K,
                      BLOCK_M: tl.constexpr, BLOCK_N: tl.constexpr, BLOCK_K: tl.constexpr,
                      GROUP_SIZE_M: tl.constexpr, SUBCHANNEL: tl.constexpr, PER_CHANNEL: tl.constexpr,
                      SWIGLU: tl.constexpr, RELU2: tl.constexpr, EVEN_K: tl.constexpr, SPLIT_K: tl.constexpr,
                      A_TRANS: tl.constexpr, B_TRANS: tl.constexpr):
    pid = tl.program_id(0)
    pid_k = tl.program_id(1)
    num_pid_m = tl.cdiv(M, BLOCK_M)
    num_pid_n = tl.cdiv(N, BLOCK_N)
    num_pid_in_group = GROUP_SIZE_M * num_pid_n
    group_id = pid // num_pid_in_group
    first_pid_m = group_id * GROUP_SIZE_M
    group_size_m = tl.minimum(num_pid_m - first_pid_m, GROUP_SIZE_M)
    pid_m = first_pid_m + ((pid % num_pid_in_group) % group_size_m)
    pid_n = (pid % num_pid_in_group) // group_size_m

    offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    offs_n = pid_n * BLOCK_N + tl.arange(0, BLOCK_N)
    offs_k = tl.arange(0, BLOCK_K)
    offs_k_sc32 = tl.arange(0, 32)
    b_cols = N * 2 if SWIGLU else N
    acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)
    gate_acc = tl.zeros((BLOCK_M, BLOCK_N), tl.float32)

    for k_iter in range(0, tl.cdiv(K, BLOCK_K * SPLIT_K)):
        k0 = k_iter * BLOCK_K * SPLIT_K
        if SUBCHANNEL == 32:
            scale_cols = tl.cdiv(K, 32)
            for sk0 in range(0, BLOCK_K, 32):
                k = k0 + pid_k * BLOCK_K + sk0 + offs_k_sc32
                mask_a = (k[None, :] < K) | EVEN_K
                mask_b = (k[:, None] < K) | EVEN_K
                if A_TRANS:
                    av = tl.load(a + k[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
                else:
                    av = tl.load(a + offs_m[:, None] * K + k[None, :], mask=mask_a, other=0)
                if B_TRANS:
                    bv = tl.load(b + offs_n[None, :] * K + k[:, None], mask=mask_b, other=0)
                else:
                    bv = tl.load(b + k[:, None] * b_cols + offs_n[None, :], mask=mask_b, other=0)
                dot = tl.dot(av, bv, out_dtype=tl.int32).to(tl.float32)
                if SWIGLU:
                    if B_TRANS:
                        bv_gate = tl.load(b + (offs_n[None, :] + N) * K + k[:, None], mask=mask_b, other=0)
                    else:
                        bv_gate = tl.load(b + k[:, None] * b_cols + (offs_n[None, :] + N), mask=mask_b, other=0)
                    dot_gate = tl.dot(av, bv_gate, out_dtype=tl.int32).to(tl.float32)
                scale_idx = (k0 + pid_k * BLOCK_K + sk0) // 32
                scale_in_range = scale_idx < scale_cols
                sa = tl.load(a_scale + offs_m[:, None] * scale_cols + scale_idx,
                             mask=scale_in_range, other=0.0).to(tl.float32)
                sb = tl.load(b_scale + scale_idx * b_cols + offs_n,
                             mask=scale_in_range, other=0.0).to(tl.float32)
                acc += dot * sa * sb[None, :]
                if SWIGLU:
                    sb_gate = tl.load(b_scale + scale_idx * b_cols + offs_n + N,
                                      mask=scale_in_range, other=0.0).to(tl.float32)
                    gate_acc += dot_gate * sa * sb_gate[None, :]
        else:
            k = k0 + pid_k * BLOCK_K + offs_k
            mask_a = (k[None, :] < K) | EVEN_K
            mask_b = (k[:, None] < K) | EVEN_K
            if A_TRANS:
                av = tl.load(a + k[None, :] * M + offs_m[:, None], mask=mask_a, other=0)
            else:
                av = tl.load(a + offs_m[:, None] * K + k[None, :], mask=mask_a, other=0)
            if B_TRANS:
                bv = tl.load(b + offs_n[None, :] * K + k[:, None], mask=mask_b, other=0)
            else:
                bv = tl.load(b + k[:, None] * b_cols + offs_n[None, :], mask=mask_b, other=0)
            dot = tl.dot(av, bv, out_dtype=tl.int32).to(tl.float32)
            if SWIGLU:
                if B_TRANS:
                    bv_gate = tl.load(b + (offs_n[None, :] + N) * K + k[:, None], mask=mask_b, other=0)
                else:
                    bv_gate = tl.load(b + k[:, None] * b_cols + (offs_n[None, :] + N), mask=mask_b, other=0)
                dot_gate = tl.dot(av, bv_gate, out_dtype=tl.int32).to(tl.float32)
            if SUBCHANNEL > 0:
                scale_cols = tl.cdiv(K, SUBCHANNEL)
                scale_idx = (k0 + pid_k * BLOCK_K) // SUBCHANNEL
                scale_in_range = scale_idx < scale_cols
                sa = tl.load(a_scale + offs_m[:, None] * scale_cols + scale_idx,
                             mask=scale_in_range, other=0.0).to(tl.float32)
                sb = tl.load(b_scale + scale_idx * b_cols + offs_n,
                             mask=scale_in_range, other=0.0).to(tl.float32)
                dot *= sa * sb[None, :]
                if SWIGLU:
                    sb_gate = tl.load(b_scale + scale_idx * b_cols + offs_n + N,
                                      mask=scale_in_range, other=0.0).to(tl.float32)
                    dot_gate *= sa * sb_gate[None, :]
            acc += dot
            if SWIGLU:
                gate_acc += dot_gate

    if PER_CHANNEL:
        sa = tl.load(a_scale + offs_m).to(tl.float32)
        sb = tl.load(b_scale + offs_n).to(tl.float32)
        acc *= sa[:, None] * sb[None, :]
        if SWIGLU:
            sb_gate = tl.load(b_scale + offs_n + N).to(tl.float32)
            gate_acc *= sa[:, None] * sb_gate[None, :]
    if SWIGLU:
        acc = acc * (gate_acc / (1.0 + tl.exp(-gate_acc)))
    if RELU2:
        acc = tl.maximum(acc, 0.0)
        acc = acc * acc
    if SPLIT_K == 1:
        tl.store(c + offs_m[:, None] * N + offs_n[None, :], acc)
    else:
        tl.atomic_add(c + offs_m[:, None] * N + offs_n[None, :], acc, sem="relaxed")

def _make_inputs(kernel: KernelMetadata, shape: LaunchShape) -> tuple[object, ...]:
    torch.manual_seed(17)
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    a_f = torch.randn((shape.m, shape.k), device="cuda", dtype=torch.bfloat16) * 0.1
    b_f = torch.randn((shape.k, b_cols), device="cuda", dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_f, bits=4 if kernel.a_dtype is OperandDType.INT4 else 8, scale=0.1)
    b_q = fake_quant_int(b_f, bits=4 if kernel.b_dtype is OperandDType.INT4 else 8, scale=0.1)
    a_trans = kernel.layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = kernel.layout in {GemmLayout.NT, GemmLayout.TT}
    if kernel.a_dtype is OperandDType.INT4:
        a_arg = (
            pack_int4_k_major(a_q).transpose(0, 1).contiguous()
            if a_trans
            else pack_int4_k_major(a_q)
        )
        b_arg = (
            pack_int4_k_major(b_q.transpose(0, 1))
            if b_trans
            else pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
        )
    else:
        a_arg = a_q.transpose(0, 1).contiguous() if a_trans else a_q.contiguous()
        b_arg = b_q.transpose(0, 1).contiguous() if b_trans else b_q.contiguous()
    if kernel.scale.mode is ScaleMode.SUBCHANNEL:
        sub = kernel.scale.subchannel_size or 1
        scale_cols = triton.cdiv(shape.k, sub)
        a_scale = torch.ones((shape.m, scale_cols), device="cuda", dtype=torch.bfloat16)
        b_scale = torch.ones((scale_cols, b_cols), device="cuda", dtype=torch.bfloat16)
    else:
        a_scale = torch.ones((shape.m,), device="cuda", dtype=torch.bfloat16)
        b_scale = torch.ones((b_cols,), device="cuda", dtype=torch.bfloat16)
    output_dtype = torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32
    c = torch.empty((shape.m, shape.n), device="cuda", dtype=output_dtype)
    gate = torch.empty((0,), device="cuda", dtype=torch.float32)
    return a_arg, b_arg, a_scale, b_scale, c, gate


def compile_program(kernel: KernelMetadata, shape: LaunchShape) -> object:
    if kernel.schedule is KernelSchedule.PERSISTENT:
        if kernel.a_dtype is not OperandDType.INT4 or kernel.epilogue is not Epilogue.NONE:
            raise ValueError("persistent generation currently supports int4 plain GEMM only")
    if kernel.epilogue is Epilogue.SWIGLU and kernel.tile.split_k != 1:
        raise ValueError("fused SwiGLU generation currently supports SPLIT_K=1 only")
    if kernel.epilogue is Epilogue.RELU2 and kernel.tile.split_k != 1:
        raise ValueError("ReLU^2 generation currently supports SPLIT_K=1 only")
    plan = plan_template(kernel, shape)
    args = _make_inputs(kernel, shape)
    num_sms = _device_num_sms() if kernel.schedule is KernelSchedule.PERSISTENT else 0
    grid = launch_grid(kernel, shape, num_sms=num_sms)
    common = dict(
        BLOCK_M=kernel.tile.block_m,
        BLOCK_N=kernel.tile.block_n,
        BLOCK_K=kernel.tile.block_k,
        GROUP_SIZE_M=kernel.tile.group_size_m,
        SUBCHANNEL=kernel.scale.subchannel_size or 0,
        PER_CHANNEL=kernel.scale.mode is ScaleMode.PER_CHANNEL,
        SWIGLU=kernel.epilogue is Epilogue.SWIGLU,
        RELU2=kernel.epilogue is Epilogue.RELU2,
        EVEN_K=kernel.tile.even_k,
        SPLIT_K=kernel.tile.split_k,
        A_TRANS=kernel.layout in {GemmLayout.TN, GemmLayout.TT},
        B_TRANS=kernel.layout in {GemmLayout.NT, GemmLayout.TT},
        num_warps=kernel.tile.num_warps,
        num_stages=kernel.tile.num_stages,
        waves_per_eu=kernel.tile.waves_per_eu,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    if kernel.schedule is KernelSchedule.PERSISTENT:
        return _int4_scaled_gemm_persistent[grid](
            *args,
            shape.m,
            shape.n,
            shape.k,
            BLOCK_M=kernel.tile.block_m,
            BLOCK_N=kernel.tile.block_n,
            BLOCK_K=kernel.tile.block_k,
            GROUP_SIZE_M=kernel.tile.group_size_m,
            SUBCHANNEL=kernel.scale.subchannel_size or 0,
            PER_CHANNEL=kernel.scale.mode is ScaleMode.PER_CHANNEL,
            EVEN_K=kernel.tile.even_k,
            SPLIT_K=kernel.tile.split_k,
            NUM_SMS=num_sms,
            A_TRANS=kernel.layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=kernel.layout in {GemmLayout.NT, GemmLayout.TT},
            num_warps=kernel.tile.num_warps,
            num_stages=kernel.tile.num_stages,
            waves_per_eu=kernel.tile.waves_per_eu,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
    if plan.needs_packed_int4:
        return _int4_scaled_gemm[grid](*args, shape.m, shape.n, shape.k, **common)
    return _int8_scaled_gemm[grid](*args, shape.m, shape.n, shape.k, **common)


def compile_kernel(kernel: KernelMetadata, shape: LaunchShape) -> dict[str, object]:
    program = compile_program(kernel, shape)
    return dict(program.asm)


def compile_kernel_with_metadata(kernel: KernelMetadata, shape: LaunchShape) -> tuple[dict[str, object], dict[str, int]]:
    program = compile_program(kernel, shape)
    return dict(program.asm), launch_metadata(program, kernel, shape)


def triton_commit() -> str | None:
    checkout = triton_checkout_root()
    if checkout is None:
        return None
    try:
        result = subprocess.run(
            ["git", "-C", str(checkout), "rev-parse", "HEAD"],
            check=True,
            text=True,
            capture_output=True,
        )
    except Exception:
        return None
    return result.stdout.strip()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--kernel-id", required=True)
    parser.add_argument("--shape", default="4096,4096,4096")
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=DEFAULT_AMDGCN_DIR,
        help=f"directory for .s and per-kernel .json outputs (default: {DEFAULT_AMDGCN_DIR})",
    )
    parser.add_argument(
        "--triton-out-dir",
        type=Path,
        default=DEFAULT_TRITON_DIR,
        help=f"directory for Triton source/IR outputs (default: {DEFAULT_TRITON_DIR})",
    )
    parser.add_argument("--no-triton-artifacts", action="store_true")
    args = parser.parse_args()

    kernel = default_registry.get(args.kernel_id)
    m, n, k = (int(part) for part in args.shape.replace("x", ",").split(","))
    shape = LaunchShape(m, n, k)
    asm, kernel_launch_metadata = compile_kernel_with_metadata(kernel, shape)
    out_dir = args.out_dir
    out_dir.mkdir(parents=True, exist_ok=True)
    asm_path = out_dir / f"{kernel.kernel_id}.s"
    metadata_path = out_dir / f"{kernel.kernel_id}.json"
    triton_root = triton_checkout_root()
    amdgcn, amdgcn_symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel.kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT, triton_root=triton_root)
    asm = {**asm, "amdgcn": amdgcn}
    asm_path.write_text(amdgcn)
    triton_artifacts = {}
    if not args.no_triton_artifacts:
        triton_artifacts = {
            key: display_path(path, root=REPO_ROOT)
            for key, path in write_triton_text_artifacts(
                kernel_id=kernel.kernel_id,
                asm=asm,
                out_dir=args.triton_out_dir,
                repo_root=REPO_ROOT,
                triton_root=triton_root,
            ).items()
        }
    metadata = kernel.to_dict()
    metadata["generation_shape"] = {"m": m, "n": n, "k": k}
    metadata["shape_specialization"] = "runtime"
    metadata["runtime_shape_args"] = ["M", "N", "K"]
    metadata["asm_keys"] = sorted(asm)
    metadata["triton_artifacts"] = triton_artifacts
    metadata["status"] = "generated"
    metadata["source_triton_commit"] = triton_commit()
    metadata["amdgcn_symbol"] = amdgcn_symbol
    metadata["launch_metadata"] = kernel_launch_metadata
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    print(display_path(asm_path, root=REPO_ROOT))
    print(display_path(metadata_path, root=REPO_ROOT))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

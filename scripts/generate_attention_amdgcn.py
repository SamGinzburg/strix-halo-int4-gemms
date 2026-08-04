from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any, Iterable


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"
DEFAULT_SUMMARY = DEFAULT_AMDGCN_DIR / "attention_generation_summary.json"


def add_local_package_to_path() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))


add_local_package_to_path()

from amd_strix_halo_kernels.artifacts import (  # noqa: E402
    clean_generated_outputs,
    display_path,
    installed_triton_commit,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.attention import (  # noqa: E402
    Int4AttentionBackwardConfig,
    Int4AttentionConfig,
    _attention_decode_reduce_kernel,
    _attention_forward_kernel,
)
from amd_strix_halo_kernels.attention_backward import (  # noqa: E402
    _attention_backward_dkv_kernel,
    _attention_backward_kernel,
)
from amd_strix_halo_kernels.attention_artifacts import (  # noqa: E402
    ATTENTION_BACKWARD_DKV,
    ATTENTION_BACKWARD_DQ,
    ATTENTION_BACKWARD_PHASES,
    ATTENTION_BACKWARD_RUNTIME_SCALAR_ARGS,
    ATTENTION_DECODE_REDUCE,
    ATTENTION_FORWARD,
    ATTENTION_FORWARD_RUNTIME_SCALAR_ARGS,
    ATTENTION_MASK_BF16,
    ATTENTION_MASK_BOOL,
    ATTENTION_MASK_DTYPES,
    ATTENTION_MASK_FP32,
    ATTENTION_MASK_NONE,
    ATTENTION_OUTPUT_BF16,
    ATTENTION_OUTPUT_DTYPES,
    ATTENTION_OUTPUT_FP32,
    ATTENTION_PRECOMPILED_CONFIGS,
    ATTENTION_PRECOMPILED_BACKWARD_CONFIGS,
    ATTENTION_PRECOMPILED_DECODE_SPLITS,
    ATTENTION_PRECOMPILED_HEAD_DIM,
    ATTENTION_PRECOMPILED_VALUE_DIM,
    ATTENTION_MLA_PRECOMPILED_HEAD_DIM,
    ATTENTION_MLA_PRECOMPILED_VALUE_DIM,
    ATTENTION_MLA_PRECOMPILED_WORKLOAD,
    ATTENTION_SEMANTICS,
    ATTENTION_SEMANTICS_CAUSAL,
    ATTENTION_SEMANTICS_CAUSAL_LOCAL,
    ATTENTION_SEMANTICS_LOCAL,
    attention_forward_kernel_id,
    attention_forward_metadata_dict,
    attention_backward_kernel_id,
    attention_backward_metadata_dict,
    attention_precompiled_workload_shapes,
    attention_reduce_kernel_id,
    attention_reduce_metadata_dict,
)


@dataclass(frozen=True, slots=True)
class ForwardJob:
    mode: str
    mask_dtype: str
    semantics: str | None
    output_dtype: str
    config: Int4AttentionConfig
    workload_shape: tuple[int, int, int, int] | None
    head_dim: int = ATTENTION_PRECOMPILED_HEAD_DIM
    value_dim: int = ATTENTION_PRECOMPILED_VALUE_DIM


@dataclass(frozen=True, slots=True)
class ReduceJob:
    output_dtype: str
    decode_splits: int


@dataclass(frozen=True, slots=True)
class BackwardJob:
    phase: str
    mode: str
    mask_dtype: str
    semantics: str | None
    output_dtype: str
    grad_output_dtype: str
    config: Int4AttentionBackwardConfig
    workload_shape: tuple[int, int, int, int] | None
    head_dim: int = ATTENTION_PRECOMPILED_HEAD_DIM
    value_dim: int = ATTENTION_PRECOMPILED_VALUE_DIM


def _triton_checkout_root(triton: Any) -> Path | None:
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


def _triton_commit(triton: Any) -> str | None:
    del triton
    return installed_triton_commit()


def _cdiv(value: int, divisor: int) -> int:
    return (value + divisor - 1) // divisor


def _next_power_of_two(value: int) -> int:
    return 1 << (value - 1).bit_length()


def _launch_metadata(program: Any) -> dict[str, int]:
    metadata = program.metadata
    return {
        "num_ctas": int(metadata.num_ctas),
        "num_warps": int(metadata.num_warps),
        "shared_memory_bytes": int(metadata.shared),
        "grid_x": 0,
        "grid_y": 0,
        "dynamic_grid": 1,
        "persistent": 0,
    }


def _kernel_arg_layout(
    amdgcn: str,
    *,
    runtime_scalar_args: tuple[str, ...],
    expected_scalar_sizes: tuple[int, ...],
    visible_global_buffers: int,
) -> dict[str, object]:
    lines = amdgcn.splitlines()
    in_args = False
    by_value: list[tuple[int, int]] = []
    global_buffer_offsets: list[int] = []
    for index, line in enumerate(lines):
        if line.strip() == "- .args:":
            in_args = True
            continue
        if in_args and line.startswith("    .group_segment_fixed_size"):
            break
        if not in_args or ".offset:" not in line:
            continue
        offset = int(line.rsplit(None, 1)[-1])
        size_line = lines[index + 1] if index + 1 < len(lines) else ""
        kind_line = lines[index + 2] if index + 2 < len(lines) else ""
        if ".size:" not in size_line or ".value_kind:" not in kind_line:
            continue
        size = int(size_line.rsplit(None, 1)[-1])
        kind = kind_line.rsplit(None, 1)[-1]
        if kind == "by_value":
            by_value.append((offset, size))
        elif kind == "global_buffer" and size == 8:
            global_buffer_offsets.append(offset)
    expected_global_buffers = visible_global_buffers + 2
    if len(global_buffer_offsets) != expected_global_buffers:
        raise RuntimeError(
            "attention AMDGCN global-buffer ABI mismatch: "
            f"expected {expected_global_buffers}, got {len(global_buffer_offsets)}"
        )
    actual_sizes = tuple(size for _, size in by_value)
    if actual_sizes != expected_scalar_sizes or len(runtime_scalar_args) != len(by_value):
        raise RuntimeError(
            "attention AMDGCN scalar ABI mismatch: "
            f"expected names={runtime_scalar_args}, sizes={expected_scalar_sizes}; "
            f"got offsets/sizes={by_value}"
        )
    return {
        "by_value_arg_count": len(by_value),
        "by_value_offsets": [offset for offset, _ in by_value],
        "by_value_sizes": list(actual_sizes),
        "runtime_scalar_args": list(runtime_scalar_args),
        "visible_global_buffer_offsets": global_buffer_offsets[:visible_global_buffers],
        "hidden_global_buffer_offsets": global_buffer_offsets[visible_global_buffers:],
    }


def _config(values: tuple[int, int, int, int, int]) -> Int4AttentionConfig:
    return Int4AttentionConfig(
        block_m=values[0],
        block_n=values[1],
        num_warps=values[2],
        num_stages=values[3],
        decode_splits=values[4],
    )


def _backward_config(
    values: tuple[int, int, int, int, int, int, int, int],
) -> Int4AttentionBackwardConfig:
    return Int4AttentionBackwardConfig(
        block_m=values[0],
        block_n=values[1],
        num_warps=values[2],
        num_stages=values[3],
        dkv_block_m=values[4],
        dkv_block_n=values[5],
        dkv_num_warps=values[6],
        dkv_num_stages=values[7],
    )


def _mode_flags(mode: str) -> tuple[bool, bool]:
    qk, pv = mode.split("-", 1)
    return qk == "int4", pv == "int4"


def _mask_kind(mask_dtype: str) -> int:
    if mask_dtype == ATTENTION_MASK_NONE:
        return 0
    if mask_dtype == ATTENTION_MASK_BOOL:
        return 1
    return 2


def _semantic_flags(semantics: str | None) -> tuple[bool, bool]:
    return (
        semantics in {ATTENTION_SEMANTICS_CAUSAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL},
        semantics in {ATTENTION_SEMANTICS_LOCAL, ATTENTION_SEMANTICS_CAUSAL_LOCAL},
    )


def _runtime_scalar_args(program: Any) -> tuple[str, ...]:
    return tuple(
        name
        for name, ty in program.src.signature.items()
        if ty != "constexpr" and not str(ty).startswith("*")
    )


def _check_forward_runtime_abi(program: Any, *, require_full: bool) -> None:
    actual = _runtime_scalar_args(program)
    expected = ATTENTION_FORWARD_RUNTIME_SCALAR_ARGS
    if require_full and actual != expected:
        raise RuntimeError(f"attention forward runtime ABI mismatch: expected {expected}, got {actual}")
    expected_subset = tuple(name for name in expected if name in actual)
    if actual != expected_subset or len(actual) != len(set(actual)):
        raise RuntimeError(f"attention forward runtime ABI is not an ordered subset: {actual}")


def _check_reduce_runtime_abi(program: Any) -> None:
    expected = ("value_dim", "decode_splits")
    actual = _runtime_scalar_args(program)
    if actual != expected:
        raise RuntimeError(f"attention reduce runtime ABI mismatch: expected {expected}, got {actual}")


def _check_backward_runtime_abi(program: Any, *, require_full: bool) -> None:
    actual = _runtime_scalar_args(program)
    expected = ATTENTION_BACKWARD_RUNTIME_SCALAR_ARGS
    if require_full and actual != expected:
        raise RuntimeError(f"attention backward runtime ABI mismatch: expected {expected}, got {actual}")
    expected_subset = tuple(name for name in expected if name in actual)
    if actual != expected_subset or len(actual) != len(set(actual)):
        raise RuntimeError(f"attention backward runtime ABI is not an ordered subset: {actual}")


def compile_forward_program(job: ForwardJob) -> Any:
    import torch

    qk_int4, pv_int4 = _mode_flags(job.mode)
    batch, query_heads, kv_heads = 2, 4, 2
    if job.workload_shape is None:
        query_length = 1 if job.config.decode_splits > 1 else 65
        key_length = 130
    else:
        query_heads, kv_heads, query_length, key_length = job.workload_shape
    head_dim = job.head_dim
    value_dim = job.value_dim
    packed_head_dim = head_dim // 2 if qk_int4 else 1
    block_d = _next_power_of_two(head_dim)
    block_d_packed = _next_power_of_two(packed_head_dim)
    block_dv = _next_power_of_two(value_dim)
    query_dtype = torch.uint8 if qk_int4 else torch.bfloat16
    value_dtype = torch.uint8 if pv_int4 else torch.bfloat16
    query = torch.empty(
        (batch, query_heads, query_length, packed_head_dim if qk_int4 else head_dim),
        device="cuda",
        dtype=query_dtype,
    )
    key = torch.empty(
        (batch, kv_heads, key_length, packed_head_dim if qk_int4 else head_dim),
        device="cuda",
        dtype=query_dtype,
    )
    packed_key_capacity = _cdiv(key_length, 16) * 8
    value = torch.empty(
        (batch, kv_heads, packed_key_capacity if pv_int4 else key_length, value_dim),
        device="cuda",
        dtype=value_dtype,
    )
    query_scale = (
        torch.empty((batch, query_heads, query_length), device="cuda", dtype=torch.bfloat16)
        if qk_int4
        else query
    )
    key_scale = (
        torch.empty((batch, kv_heads, key_length), device="cuda", dtype=torch.bfloat16)
        if qk_int4
        else key
    )
    value_scale = (
        torch.empty(
            (batch, kv_heads, _cdiv(key_length, 16), value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        )
        if pv_int4
        else value
    )
    if job.mask_dtype == ATTENTION_MASK_NONE:
        attn_mask = torch.empty((1,), device="cuda", dtype=torch.bool)
        mask_strides = (0, 0, 0, 0)
    else:
        mask_torch_dtype = {
            ATTENTION_MASK_BOOL: torch.bool,
            ATTENTION_MASK_BF16: torch.bfloat16,
            ATTENTION_MASK_FP32: torch.float32,
        }[job.mask_dtype]
        attn_mask = torch.empty(
            (batch, query_heads, query_length, key_length),
            device="cuda",
            dtype=mask_torch_dtype,
        )
        mask_strides = tuple(int(value) for value in attn_mask.stride())
    output_torch_dtype = torch.bfloat16 if job.output_dtype == ATTENTION_OUTPUT_BF16 else torch.float32
    out = torch.empty((batch, query_heads, query_length, value_dim), device="cuda", dtype=output_torch_dtype)
    split_decode = job.config.decode_splits > 1
    is_causal, has_window = _semantic_flags(job.semantics)
    workspace = (
        torch.empty(
            (batch, query_heads, job.config.decode_splits, value_dim + 2),
            device="cuda",
            dtype=torch.float32,
        )
        if split_decode
        else out
    )
    grid = (
        _cdiv(query_length, job.config.block_m) * job.config.decode_splits,
        batch * query_heads,
    )
    specialize_runtime_args = job.workload_shape is not None
    program = _attention_forward_kernel(specialize_runtime_args=specialize_runtime_args)[grid](
        query,
        key,
        value,
        query_scale,
        key_scale,
        value_scale,
        attn_mask,
        out,
        workspace,
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        head_dim,
        packed_head_dim,
        value_dim,
        job.config.decode_splits,
        0.125,
        *mask_strides,
        is_causal,
        has_window,
        0,
        0,
        0,
        BLOCK_M=job.config.block_m,
        BLOCK_N=job.config.block_n,
        BLOCK_D=block_d,
        BLOCK_D_PACKED=block_d_packed,
        BLOCK_DV=block_dv,
        QK_INT4=qk_int4,
        PV_INT4=pv_int4,
        MASK_KIND=_mask_kind(job.mask_dtype),
        OUTPUT_BF16=job.output_dtype == ATTENTION_OUTPUT_BF16,
        SPLIT_DECODE=split_decode,
        SPECIALIZE_SEMANTICS=job.semantics is not None,
        IS_CAUSAL_STATIC=is_causal,
        HAS_WINDOW_STATIC=has_window,
        SPECIALIZE_SEQUENCE=job.workload_shape is not None,
        QUERY_LENGTH_STATIC=query_length if job.workload_shape is not None else 0,
        KEY_LENGTH_STATIC=key_length if job.workload_shape is not None else 0,
        SPECIALIZE_HEADS=job.workload_shape is not None,
        QUERY_HEADS_STATIC=query_heads if job.workload_shape is not None else 0,
        KV_HEADS_STATIC=kv_heads if job.workload_shape is not None else 0,
        num_warps=job.config.num_warps,
        num_stages=job.config.num_stages,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    _check_forward_runtime_abi(program, require_full=not specialize_runtime_args)
    return program


def compile_backward_program(job: BackwardJob) -> Any:
    import torch

    qk_int4, pv_int4 = _mode_flags(job.mode)
    batch, query_heads, kv_heads = 2, 4, 2
    if job.workload_shape is None:
        query_length, key_length = 65, 130
    else:
        query_heads, kv_heads, query_length, key_length = job.workload_shape
    head_dim = job.head_dim
    value_dim = job.value_dim
    packed_head_dim = head_dim // 2 if qk_int4 else 1
    block_d = _next_power_of_two(head_dim)
    block_d_packed = _next_power_of_two(packed_head_dim)
    block_dv = _next_power_of_two(value_dim)
    query_dtype = torch.uint8 if qk_int4 else torch.bfloat16
    value_dtype = torch.uint8 if pv_int4 else torch.bfloat16
    query = torch.empty(
        (batch, query_heads, query_length, packed_head_dim if qk_int4 else head_dim),
        device="cuda",
        dtype=query_dtype,
    )
    key = torch.empty(
        (batch, kv_heads, key_length, packed_head_dim if qk_int4 else head_dim),
        device="cuda",
        dtype=query_dtype,
    )
    packed_key_capacity = _cdiv(key_length, 16) * 8
    value = torch.empty(
        (batch, kv_heads, packed_key_capacity if pv_int4 else key_length, value_dim),
        device="cuda",
        dtype=value_dtype,
    )
    query_scale = (
        torch.empty((batch, query_heads, query_length), device="cuda", dtype=torch.bfloat16)
        if qk_int4
        else query
    )
    key_scale = (
        torch.empty((batch, kv_heads, key_length), device="cuda", dtype=torch.bfloat16)
        if qk_int4
        else key
    )
    value_scale = (
        torch.empty(
            (batch, kv_heads, _cdiv(key_length, 16), value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        )
        if pv_int4
        else value
    )
    if job.mask_dtype == ATTENTION_MASK_NONE:
        attn_mask = torch.empty((1,), device="cuda", dtype=torch.bool)
        mask_strides = (0, 0, 0, 0)
    else:
        mask_torch_dtype = {
            ATTENTION_MASK_BOOL: torch.bool,
            ATTENTION_MASK_BF16: torch.bfloat16,
            ATTENTION_MASK_FP32: torch.float32,
        }[job.mask_dtype]
        attn_mask = torch.empty(
            (batch, query_heads, query_length, key_length),
            device="cuda",
            dtype=mask_torch_dtype,
        )
        mask_strides = tuple(int(value) for value in attn_mask.stride())
    output_torch_dtype = (
        torch.bfloat16 if job.output_dtype == ATTENTION_OUTPUT_BF16 else torch.float32
    )
    grad_output_torch_dtype = (
        torch.bfloat16 if job.grad_output_dtype == ATTENTION_OUTPUT_BF16 else torch.float32
    )
    output = torch.empty(
        (batch, query_heads, query_length, value_dim),
        device="cuda",
        dtype=output_torch_dtype,
    )
    grad_output = torch.empty_like(output, dtype=grad_output_torch_dtype)
    lse = torch.empty((batch, query_heads, query_length), device="cuda", dtype=torch.float32)
    delta = torch.empty_like(lse)
    grad_query = torch.empty(
        (batch, query_heads, query_length, head_dim),
        device="cuda",
        dtype=torch.float32,
    )
    grad_key = torch.empty(
        (batch, kv_heads, key_length, head_dim),
        device="cuda",
        dtype=torch.float32,
    )
    grad_value = torch.empty(
        (batch, kv_heads, key_length, value_dim),
        device="cuda",
        dtype=torch.float32,
    )
    is_causal, has_window = _semantic_flags(job.semantics)
    specialize_runtime_args = job.workload_shape is not None
    static_kwargs = {
        "BLOCK_D": block_d,
        "BLOCK_D_PACKED": block_d_packed,
        "BLOCK_DV": block_dv,
        "QK_INT4": qk_int4,
        "PV_INT4": pv_int4,
        "MASK_KIND": _mask_kind(job.mask_dtype),
        "SPECIALIZE_SEMANTICS": job.semantics is not None,
        "IS_CAUSAL_STATIC": is_causal,
        "HAS_WINDOW_STATIC": has_window,
        "SPECIALIZE_SEQUENCE": job.workload_shape is not None,
        "QUERY_LENGTH_STATIC": query_length if job.workload_shape is not None else 0,
        "KEY_LENGTH_STATIC": key_length if job.workload_shape is not None else 0,
        "SPECIALIZE_HEADS": job.workload_shape is not None,
        "QUERY_HEADS_STATIC": query_heads if job.workload_shape is not None else 0,
        "KV_HEADS_STATIC": kv_heads if job.workload_shape is not None else 0,
        "matrix_instr_nonkdim": 16,
        "kpack": 1,
    }
    scalar_args = (
        batch,
        query_heads,
        kv_heads,
        query_length,
        key_length,
        head_dim,
        packed_head_dim,
        value_dim,
        0.125,
        *mask_strides,
        is_causal,
        has_window,
        9,
        2,
        2,
    )
    if job.phase == ATTENTION_BACKWARD_DQ:
        grid = (_cdiv(query_length, job.config.block_m), batch * query_heads)
        program = _attention_backward_kernel(
            specialize_runtime_args=specialize_runtime_args
        )[grid](
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
            *scalar_args,
            BLOCK_M=job.config.block_m,
            BLOCK_N=job.config.block_n,
            GRAD_QUERY_BF16=False,
            num_warps=job.config.num_warps,
            num_stages=job.config.num_stages,
            **static_kwargs,
        )
    elif job.phase == ATTENTION_BACKWARD_DKV:
        grid = (_cdiv(key_length, job.config.dkv_block_n), batch * kv_heads)
        program = _attention_backward_dkv_kernel(
            specialize_runtime_args=specialize_runtime_args
        )[grid](
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
            *scalar_args,
            BLOCK_M=job.config.dkv_block_m,
            BLOCK_N=job.config.dkv_block_n,
            num_warps=job.config.dkv_num_warps,
            num_stages=job.config.dkv_num_stages,
            **static_kwargs,
        )
    else:
        raise ValueError(f"unsupported attention backward phase {job.phase!r}")
    _check_backward_runtime_abi(program, require_full=not specialize_runtime_args)
    return program


def compile_reduce_program(job: ReduceJob) -> Any:
    import torch

    batch_heads = 8
    value_dim = ATTENTION_PRECOMPILED_VALUE_DIM
    workspace = torch.empty(
        (batch_heads, job.decode_splits, value_dim + 2),
        device="cuda",
        dtype=torch.float32,
    )
    output_torch_dtype = torch.bfloat16 if job.output_dtype == ATTENTION_OUTPUT_BF16 else torch.float32
    out = torch.empty((batch_heads, value_dim), device="cuda", dtype=output_torch_dtype)
    program = _attention_decode_reduce_kernel(specialize_runtime_args=False)[(batch_heads,)](
        workspace,
        out,
        value_dim,
        job.decode_splits,
        BLOCK_DV=value_dim,
        BLOCK_SPLITS=job.decode_splits,
        OUTPUT_BF16=job.output_dtype == ATTENTION_OUTPUT_BF16,
        num_warps=4,
        num_stages=1,
    )
    _check_reduce_runtime_abi(program)
    return program


def _write_artifacts(
    *,
    job: ForwardJob | BackwardJob | ReduceJob,
    program: Any,
    out_dir: Path,
    triton_out_dir: Path | None,
    triton: Any,
) -> dict[str, Any]:
    if isinstance(job, ForwardJob):
        kernel_id = attention_forward_kernel_id(
            mode=job.mode,
            mask_dtype=job.mask_dtype,
            semantics=job.semantics,
            output_dtype=job.output_dtype,
            head_dim=job.head_dim,
            value_dim=job.value_dim,
            config=job.config,
            workload_shape=job.workload_shape,
        )
    elif isinstance(job, BackwardJob):
        kernel_id = attention_backward_kernel_id(
            phase=job.phase,
            mode=job.mode,
            mask_dtype=job.mask_dtype,
            semantics=job.semantics,
            output_dtype=job.output_dtype,
            grad_output_dtype=job.grad_output_dtype,
            head_dim=job.head_dim,
            value_dim=job.value_dim,
            config=job.config,
            workload_shape=job.workload_shape,
        )
    else:
        kernel_id = attention_reduce_kernel_id(
            output_dtype=job.output_dtype,
            value_dim=ATTENTION_PRECOMPILED_VALUE_DIM,
            decode_splits=job.decode_splits,
        )
    out_dir.mkdir(parents=True, exist_ok=True)
    asm = dict(program.asm)
    triton_root = _triton_checkout_root(triton)
    amdgcn, amdgcn_symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT, triton_root=triton_root)
    asm["amdgcn"] = amdgcn
    asm_path = out_dir / f"{kernel_id}.s"
    metadata_path = out_dir / f"{kernel_id}.json"
    asm_path.write_text(amdgcn)
    triton_artifacts: dict[str, str] = {}
    if triton_out_dir is not None:
        triton_artifacts = {
            key: display_path(path, root=REPO_ROOT)
            for key, path in write_triton_text_artifacts(
                kernel_id=kernel_id,
                asm=asm,
                out_dir=triton_out_dir,
                repo_root=REPO_ROOT,
                triton_root=triton_root,
            ).items()
        }
    launch_metadata = _launch_metadata(program)
    if isinstance(job, ForwardJob):
        runtime_scalar_args = _runtime_scalar_args(program)
        scalar_sizes = tuple(
            1 if name in {"is_causal", "has_window"} else 4
            for name in runtime_scalar_args
        )
        kernel_arg_layout = _kernel_arg_layout(
            amdgcn,
            runtime_scalar_args=runtime_scalar_args,
            expected_scalar_sizes=scalar_sizes,
            visible_global_buffers=9,
        )
        metadata = attention_forward_metadata_dict(
            kernel_id=kernel_id,
            mode=job.mode,
            mask_dtype=job.mask_dtype,
            semantics=job.semantics,
            output_dtype=job.output_dtype,
            head_dim=job.head_dim,
            value_dim=job.value_dim,
            config=job.config,
            workload_shape=job.workload_shape,
            amdgcn_symbol=amdgcn_symbol,
            launch_metadata=launch_metadata,
            asm_keys=asm,
            source_triton_commit=_triton_commit(triton),
            amdgcn=amdgcn,
            kernel_arg_layout=kernel_arg_layout,
        )
    elif isinstance(job, BackwardJob):
        runtime_scalar_args = _runtime_scalar_args(program)
        scalar_sizes = tuple(
            1 if name in {"is_causal", "has_window"} else 4
            for name in runtime_scalar_args
        )
        kernel_arg_layout = _kernel_arg_layout(
            amdgcn,
            runtime_scalar_args=runtime_scalar_args,
            expected_scalar_sizes=scalar_sizes,
            visible_global_buffers=12,
        )
        metadata = attention_backward_metadata_dict(
            kernel_id=kernel_id,
            phase=job.phase,
            mode=job.mode,
            mask_dtype=job.mask_dtype,
            semantics=job.semantics,
            output_dtype=job.output_dtype,
            grad_output_dtype=job.grad_output_dtype,
            head_dim=job.head_dim,
            value_dim=job.value_dim,
            config=job.config,
            workload_shape=job.workload_shape,
            amdgcn_symbol=amdgcn_symbol,
            launch_metadata=launch_metadata,
            asm_keys=asm,
            source_triton_commit=_triton_commit(triton),
            amdgcn=amdgcn,
            kernel_arg_layout=kernel_arg_layout,
        )
    else:
        runtime_scalar_args = _runtime_scalar_args(program)
        kernel_arg_layout = _kernel_arg_layout(
            amdgcn,
            runtime_scalar_args=runtime_scalar_args,
            expected_scalar_sizes=(4, 4),
            visible_global_buffers=2,
        )
        metadata = attention_reduce_metadata_dict(
            kernel_id=kernel_id,
            output_dtype=job.output_dtype,
            value_dim=ATTENTION_PRECOMPILED_VALUE_DIM,
            decode_splits=job.decode_splits,
            amdgcn_symbol=amdgcn_symbol,
            launch_metadata=launch_metadata,
            asm_keys=asm,
            source_triton_commit=_triton_commit(triton),
            amdgcn=amdgcn,
            kernel_arg_layout=kernel_arg_layout,
        )
    metadata["triton_artifacts"] = triton_artifacts
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    return {
        "kernel_id": kernel_id,
        "asm": display_path(asm_path, root=REPO_ROOT),
        "metadata": display_path(metadata_path, root=REPO_ROOT),
        "phase": metadata["phase"],
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "amdgcn_stats": metadata["amdgcn_stats"],
    }


def build_jobs(
    *,
    phases: Iterable[str],
    modes: Iterable[str],
    mask_dtypes: Iterable[str],
    output_dtypes: Iterable[str],
    profile: str = "standard",
) -> tuple[ForwardJob | BackwardJob | ReduceJob, ...]:
    if profile not in {"standard", "mla"}:
        raise ValueError("profile must be 'standard' or 'mla'")
    if profile == "mla":
        selected_phases = set(phases)
        selected_modes = set(modes)
        selected_masks = set(mask_dtypes)
        selected_outputs = set(output_dtypes)
        if (
            "bf16-bf16" not in selected_modes
            or ATTENTION_MASK_NONE not in selected_masks
            or ATTENTION_OUTPUT_BF16 not in selected_outputs
        ):
            return ()
        forward_config = Int4AttentionConfig(
            block_m=64,
            block_n=32,
            num_warps=4,
            num_stages=2,
        )
        backward_config = Int4AttentionBackwardConfig(
            block_m=32,
            block_n=32,
            num_warps=4,
            num_stages=1,
            dkv_block_m=32,
            dkv_block_n=16,
            dkv_num_warps=2,
            dkv_num_stages=1,
        )
        mla_jobs: list[ForwardJob | BackwardJob | ReduceJob] = []
        if ATTENTION_FORWARD in selected_phases:
            mla_jobs.append(
                ForwardJob(
                    "bf16-bf16",
                    ATTENTION_MASK_NONE,
                    None,
                    ATTENTION_OUTPUT_BF16,
                    forward_config,
                    None,
                    ATTENTION_MLA_PRECOMPILED_HEAD_DIM,
                    ATTENTION_MLA_PRECOMPILED_VALUE_DIM,
                )
            )
            for semantics in ATTENTION_SEMANTICS:
                mla_jobs.append(
                    ForwardJob(
                        "bf16-bf16",
                        ATTENTION_MASK_NONE,
                        semantics,
                        ATTENTION_OUTPUT_BF16,
                        forward_config,
                        ATTENTION_MLA_PRECOMPILED_WORKLOAD,
                        ATTENTION_MLA_PRECOMPILED_HEAD_DIM,
                        ATTENTION_MLA_PRECOMPILED_VALUE_DIM,
                    )
                )
        for phase in ATTENTION_BACKWARD_PHASES:
            if phase not in selected_phases:
                continue
            mla_jobs.append(
                BackwardJob(
                    phase,
                    "bf16-bf16",
                    ATTENTION_MASK_NONE,
                    None,
                    ATTENTION_OUTPUT_BF16,
                    ATTENTION_OUTPUT_BF16,
                    backward_config,
                    None,
                    ATTENTION_MLA_PRECOMPILED_HEAD_DIM,
                    ATTENTION_MLA_PRECOMPILED_VALUE_DIM,
                )
            )
            for semantics in ATTENTION_SEMANTICS:
                mla_jobs.append(
                    BackwardJob(
                        phase,
                        "bf16-bf16",
                        ATTENTION_MASK_NONE,
                        semantics,
                        ATTENTION_OUTPUT_BF16,
                        ATTENTION_OUTPUT_BF16,
                        backward_config,
                        ATTENTION_MLA_PRECOMPILED_WORKLOAD,
                        ATTENTION_MLA_PRECOMPILED_HEAD_DIM,
                        ATTENTION_MLA_PRECOMPILED_VALUE_DIM,
                    )
                )
        return tuple(mla_jobs)

    jobs: list[ForwardJob | BackwardJob | ReduceJob] = []
    if ATTENTION_FORWARD in phases:
        for mode in modes:
            for values in ATTENTION_PRECOMPILED_CONFIGS[mode]:
                config = _config(values)
                for mask_dtype in mask_dtypes:
                    for output_dtype in output_dtypes:
                        jobs.append(
                            ForwardJob(
                                mode,
                                mask_dtype,
                                None,
                                output_dtype,
                                config,
                                None,
                            )
                        )
                        for workload_shape in attention_precompiled_workload_shapes(config):
                            for semantics in ATTENTION_SEMANTICS:
                                if mask_dtype != ATTENTION_MASK_NONE and semantics in {
                                    ATTENTION_SEMANTICS_CAUSAL,
                                    ATTENTION_SEMANTICS_CAUSAL_LOCAL,
                                }:
                                    continue
                                jobs.append(
                                    ForwardJob(
                                        mode,
                                        mask_dtype,
                                        semantics,
                                        output_dtype,
                                        config,
                                        workload_shape,
                                    )
                                )
    for phase in ATTENTION_BACKWARD_PHASES:
        if phase not in phases:
            continue
        for mode in modes:
            for values in ATTENTION_PRECOMPILED_BACKWARD_CONFIGS:
                config = _backward_config(values)
                for mask_dtype in mask_dtypes:
                    for output_dtype in output_dtypes:
                        for grad_output_dtype in output_dtypes:
                            jobs.append(
                                BackwardJob(
                                    phase=phase,
                                    mode=mode,
                                    mask_dtype=mask_dtype,
                                    semantics=None,
                                    output_dtype=output_dtype,
                                    grad_output_dtype=grad_output_dtype,
                                    config=config,
                                    workload_shape=None,
                                )
                            )
            specialized_config = _backward_config(ATTENTION_PRECOMPILED_BACKWARD_CONFIGS[0])
            for semantics in ATTENTION_SEMANTICS:
                for output_dtype in output_dtypes:
                    for grad_output_dtype in output_dtypes:
                        jobs.append(
                            BackwardJob(
                                phase=phase,
                                mode=mode,
                                mask_dtype=ATTENTION_MASK_NONE,
                                semantics=semantics,
                                output_dtype=output_dtype,
                                grad_output_dtype=grad_output_dtype,
                                config=specialized_config,
                                workload_shape=(16, 8, 2048, 2048),
                            )
                        )
    if ATTENTION_DECODE_REDUCE in phases:
        for decode_splits in ATTENTION_PRECOMPILED_DECODE_SPLITS:
            for output_dtype in output_dtypes:
                jobs.append(ReduceJob(output_dtype, decode_splits))
    return tuple(jobs)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate precompiled gfx1151 fused-attention artifacts.")
    parser.add_argument(
        "--profile",
        choices=("standard", "mla"),
        default="standard",
        help="artifact profile (MLA emits BF16 D192/Dv128 production kernels)",
    )
    parser.add_argument(
        "--phase",
        action="append",
        choices=(ATTENTION_FORWARD, ATTENTION_DECODE_REDUCE, *ATTENTION_BACKWARD_PHASES),
    )
    parser.add_argument("--mode", action="append", choices=tuple(ATTENTION_PRECOMPILED_CONFIGS))
    parser.add_argument("--mask-dtype", action="append", choices=ATTENTION_MASK_DTYPES)
    parser.add_argument("--output-dtype", action="append", choices=ATTENTION_OUTPUT_DTYPES)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_AMDGCN_DIR)
    parser.add_argument("--triton-out-dir", type=Path)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--limit", type=int, help="generate only the first N selected jobs")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    import torch
    import triton

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("attention artifact generation requires a ROCm torch device")
    if args.limit is not None and args.limit <= 0:
        raise ValueError("--limit must be positive")
    phases = tuple(
        args.phase
        or (ATTENTION_FORWARD, ATTENTION_DECODE_REDUCE, *ATTENTION_BACKWARD_PHASES)
    )
    modes = tuple(args.mode or ATTENTION_PRECOMPILED_CONFIGS)
    mask_dtypes = tuple(args.mask_dtype or ATTENTION_MASK_DTYPES)
    output_dtypes = tuple(args.output_dtype or ATTENTION_OUTPUT_DTYPES)
    jobs = build_jobs(
        phases=phases,
        modes=modes,
        mask_dtypes=mask_dtypes,
        output_dtypes=output_dtypes,
        profile=args.profile,
    )
    if args.limit is not None:
        jobs = jobs[: args.limit]
    removed = 0
    if args.clean:
        removed = clean_generated_outputs(
            args.out_dir,
            args.triton_out_dir,
            kernel_id_prefixes=("gfx1151_attention_",),
        )
    generated: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []
    for index, job in enumerate(jobs, start=1):
        try:
            if isinstance(job, ForwardJob):
                program = compile_forward_program(job)
            elif isinstance(job, BackwardJob):
                program = compile_backward_program(job)
            else:
                program = compile_reduce_program(job)
            record = _write_artifacts(
                job=job,
                program=program,
                out_dir=args.out_dir,
                triton_out_dir=args.triton_out_dir,
                triton=triton,
            )
            generated.append(record)
            print(f"[{index}/{len(jobs)}] generated {record['kernel_id']}", flush=True)
        except Exception as exc:
            failure = {"job": repr(job), "error": repr(exc)}
            failures.append(failure)
            print(f"[{index}/{len(jobs)}] FAILED {failure}", flush=True)
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    summary = {
        "family": "fused_attention",
        "profile": args.profile,
        "arch": "gfx1151",
        "source_triton_commit": _triton_commit(triton),
        "selected_jobs": len(jobs),
        "generated_count": len(generated),
        "failure_count": len(failures),
        "removed_before_generation": removed,
        "generated": generated,
        "failures": failures,
    }
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(args.summary)
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"
DEFAULT_SUMMARY = DEFAULT_AMDGCN_DIR / "kda_generation_summary.json"


sys.path.insert(0, str(REPO_ROOT / "src"))

from amd_strix_halo_kernels.artifacts import (  # noqa: E402
    clean_generated_outputs,
    display_path,
    installed_triton_commit,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.kda_artifacts import (  # noqa: E402
    KDA_BACKWARD_NORMALIZE,
    KDA_BACKWARD_PREPROCESS,
    KDA_BACKWARD_RECURRENT,
    KDA_ARGUMENT_NAMES,
    KDA_FORWARD,
    KDA_PHASES,
    KDA_PRECOMPILED_BATCH,
    KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD,
    KDA_PRECOMPILED_CHECKPOINT_INTERVAL,
    KDA_PRECOMPILED_HEAD_DIM,
    KDA_PRECOMPILED_HEADS,
    KDA_PRECOMPILED_NUM_CHECKPOINTS,
    KDA_PRECOMPILED_SEQUENCE,
    KDA_PRECOMPILED_VALUE_BLOCK,
    KDA_PRECOMPILED_VALUE_DIM,
    KdaArtifactJob,
    kda_kernel_id,
    kda_metadata_dict,
    kda_precompiled_jobs,
)


def _launch_metadata(program: Any, grid: tuple[int, int]) -> dict[str, int]:
    metadata = program.metadata
    return {
        "num_ctas": int(metadata.num_ctas),
        "num_warps": int(metadata.num_warps),
        "shared_memory_bytes": int(metadata.shared),
        "grid_x": int(grid[0]),
        "grid_y": int(grid[1]),
        "grid_z": 1,
        "dynamic_grid": 1,
        "persistent": 0,
    }


def _program_signature(program: Any) -> tuple[tuple[str, str], ...]:
    signature = getattr(program.src, "signature", None)
    if not isinstance(signature, dict):
        raise RuntimeError("compiled KDA program has no ordered signature")
    return tuple(
        (str(name), str(type_name))
        for name, type_name in signature.items()
        if str(type_name) != "constexpr"
    )


def _kernel_arg_layout(
    amdgcn: str,
    *,
    signature: tuple[tuple[str, str], ...],
    visible_global_buffers: int,
) -> dict[str, Any]:
    lines = amdgcn.splitlines()
    in_args = False
    global_buffer_offsets: list[int] = []
    by_value: list[tuple[int, int]] = []
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
        if kind == "global_buffer" and size == 8:
            global_buffer_offsets.append(offset)
        elif kind == "by_value":
            by_value.append((offset, size))

    pointer_signature = tuple(item for item in signature if item[1].startswith("*"))
    scalar_signature = tuple(item for item in signature if not item[1].startswith("*"))
    if len(pointer_signature) != visible_global_buffers:
        raise RuntimeError(
            f"KDA source ABI expected {visible_global_buffers} pointers; got {pointer_signature}"
        )
    expected_global_buffers = visible_global_buffers + 2
    if len(global_buffer_offsets) != expected_global_buffers:
        raise RuntimeError(
            "KDA AMDGCN pointer ABI mismatch: "
            f"expected {expected_global_buffers}, got {len(global_buffer_offsets)}"
        )
    expected_scalar_sizes = tuple(
        8 if type_name in {"i64", "u64", "fp64"} else 4
        for _, type_name in scalar_signature
    )
    actual_scalar_sizes = tuple(size for _, size in by_value)
    if actual_scalar_sizes != expected_scalar_sizes:
        raise RuntimeError(
            "KDA AMDGCN scalar ABI mismatch: "
            f"expected {scalar_signature} sizes={expected_scalar_sizes}; got {by_value}"
        )
    return {
        "arguments": [
            *(
                {
                    "name": name,
                    "kind": "pointer",
                    "type": type_name,
                    "size": 8,
                    "offset": global_buffer_offsets[index],
                }
                for index, (name, type_name) in enumerate(pointer_signature)
            ),
            *(
                {
                    "name": name,
                    "kind": "scalar",
                    "type": type_name,
                    "size": by_value[index][1],
                    "offset": by_value[index][0],
                }
                for index, (name, type_name) in enumerate(scalar_signature)
            ),
        ],
        "hidden_global_buffer_offsets": global_buffer_offsets[-2:],
    }


def _compile_forward(torch: Any, job: KdaArtifactJob) -> tuple[Any, tuple[int, int]]:
    from amd_strix_halo_kernels.kda_gluon import (
        kda_gluon_forward_kernel,
        make_kda_layouts,
    )

    qk_dtype = torch.uint8 if job.qk_int4 else torch.bfloat16
    value_dtype = torch.uint8 if job.value_int4 else torch.bfloat16
    query = torch.empty(1, device="cuda", dtype=qk_dtype)
    key = torch.empty(1, device="cuda", dtype=qk_dtype)
    value = torch.empty(1, device="cuda", dtype=value_dtype)
    scale = torch.empty(1, device="cuda", dtype=torch.bfloat16)
    gate = torch.empty(1, device="cuda", dtype=torch.float32)
    output = torch.empty(1, device="cuda", dtype=torch.bfloat16)
    state = torch.empty(1, device="cuda", dtype=torch.float32)
    state_layout, vector_layout = make_kda_layouts(
        block_v=KDA_PRECOMPILED_VALUE_BLOCK,
        num_warps=2,
        dimension_threads=2,
        value_warps=1,
    )
    grid = (
        KDA_PRECOMPILED_BATCH * KDA_PRECOMPILED_HEADS,
        KDA_PRECOMPILED_VALUE_DIM // KDA_PRECOMPILED_VALUE_BLOCK,
    )
    program = kda_gluon_forward_kernel().warmup(
        query,
        key,
        value,
        gate,
        gate,
        scale,
        scale,
        scale,
        state,
        output,
        state,
        state,
        state,
        KDA_PRECOMPILED_SEQUENCE,
        KDA_PRECOMPILED_HEADS,
        KDA_PRECOMPILED_HEAD_DIM,
        KDA_PRECOMPILED_HEAD_DIM // 2 if job.qk_int4 else KDA_PRECOMPILED_HEAD_DIM,
        KDA_PRECOMPILED_VALUE_DIM,
        KDA_PRECOMPILED_VALUE_DIM // 2 if job.value_int4 else KDA_PRECOMPILED_VALUE_DIM,
        KDA_PRECOMPILED_NUM_CHECKPOINTS,
        KDA_PRECOMPILED_HEAD_DIM**-0.5,
        BLOCK_D=KDA_PRECOMPILED_HEAD_DIM,
        BLOCK_V=KDA_PRECOMPILED_VALUE_BLOCK,
        CHECKPOINT_INTERVAL=KDA_PRECOMPILED_CHECKPOINT_INTERVAL,
        QK_INT4=job.qk_int4,
        VALUE_INT4=job.value_int4,
        HAS_INITIAL_STATE=False,
        STORE_FINAL_STATE=False,
        STORE_STATE_CACHE=job.store_state_cache,
        NORMALIZE_QK=True,
        OUTPUT_BF16=True,
        STORE_OUTPUT=True,
        CACHE_SPLIT_BATCH_HEAD=KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD,
        USE_SPLIT_CACHE=job.store_state_cache,
        USE_FLAT_CACHE=False,
        STATE_LAYOUT=state_layout,
        VECTOR_LAYOUT=vector_layout,
        num_warps=2,
        grid=grid,
    )
    return program, grid


def _compile_preprocess_or_normalize(
    torch: Any,
    job: KdaArtifactJob,
) -> tuple[Any, tuple[int, int]]:
    from amd_strix_halo_kernels.kda_backward import (
        _kda_qk_normalization_backward_kernel,
        _kda_qk_preprocess_kernel,
    )

    qk_dtype = torch.uint8 if job.qk_int4 else torch.bfloat16
    query = torch.empty(1, device="cuda", dtype=qk_dtype)
    scale = torch.empty(1, device="cuda", dtype=torch.bfloat16)
    workspace = torch.empty(1, device="cuda", dtype=torch.float32)
    rows = KDA_PRECOMPILED_BATCH * KDA_PRECOMPILED_SEQUENCE * KDA_PRECOMPILED_HEADS
    packed_head_dim = KDA_PRECOMPILED_HEAD_DIM // 2 if job.qk_int4 else KDA_PRECOMPILED_HEAD_DIM
    grid = (rows, 1)
    if job.phase == KDA_BACKWARD_PREPROCESS:
        kernel = _kda_qk_preprocess_kernel()
        args = (query, query, scale, scale, workspace, workspace)
    else:
        kernel = _kda_qk_normalization_backward_kernel()
        args = (
            query,
            query,
            scale,
            scale,
            workspace,
            workspace,
            workspace,
            workspace,
        )
    program = kernel.warmup(
        *args,
        rows,
        KDA_PRECOMPILED_HEAD_DIM,
        packed_head_dim,
        BLOCK_D=KDA_PRECOMPILED_HEAD_DIM,
        QK_INT4=job.qk_int4,
        NORMALIZE_QK=True,
        num_warps=4,
        num_stages=2,
        grid=grid,
    )
    return program, grid


def _compile_backward_recurrent(torch: Any, job: KdaArtifactJob) -> tuple[Any, tuple[int, int]]:
    from amd_strix_halo_kernels.kda_gluon_backward import (
        kda_gluon_backward_kernel,
        make_kda_backward_layouts,
    )

    workspace = torch.empty(1, device="cuda", dtype=torch.float32)
    value = torch.empty(
        1,
        device="cuda",
        dtype=torch.uint8 if job.value_int4 else torch.bfloat16,
    )
    scale = torch.empty(1, device="cuda", dtype=torch.bfloat16)
    grad_output = torch.empty(1, device="cuda", dtype=torch.bfloat16)
    state_layout, vector_layout = make_kda_backward_layouts(
        block_v=KDA_PRECOMPILED_VALUE_BLOCK,
        num_warps=4,
        dimension_threads=4,
        value_warps=1,
    )
    grid = (
        KDA_PRECOMPILED_BATCH * KDA_PRECOMPILED_HEADS,
        KDA_PRECOMPILED_VALUE_DIM // KDA_PRECOMPILED_VALUE_BLOCK,
    )
    program = kda_gluon_backward_kernel().warmup(
        workspace,
        workspace,
        value,
        workspace,
        workspace,
        scale,
        grad_output,
        workspace,
        workspace,
        workspace,
        workspace,
        workspace,
        workspace,
        workspace,
        workspace,
        workspace,
        KDA_PRECOMPILED_SEQUENCE,
        KDA_PRECOMPILED_HEADS,
        KDA_PRECOMPILED_HEAD_DIM,
        KDA_PRECOMPILED_VALUE_DIM,
        KDA_PRECOMPILED_VALUE_DIM // 2 if job.value_int4 else KDA_PRECOMPILED_VALUE_DIM,
        KDA_PRECOMPILED_NUM_CHECKPOINTS,
        KDA_PRECOMPILED_HEAD_DIM**-0.5,
        BLOCK_D=KDA_PRECOMPILED_HEAD_DIM,
        BLOCK_V=KDA_PRECOMPILED_VALUE_BLOCK,
        CHECKPOINT_INTERVAL=KDA_PRECOMPILED_CHECKPOINT_INTERVAL,
        VALUE_INT4=job.value_int4,
        HAS_GRAD_FINAL_STATE=False,
        STORE_GRAD_INITIAL_STATE=False,
        CACHE_SPLIT_BATCH_HEAD=KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD,
        USE_SPLIT_CACHE=True,
        USE_FLAT_CACHE=False,
        STATE_LAYOUT=state_layout,
        VECTOR_LAYOUT=vector_layout,
        num_warps=4,
        grid=grid,
    )
    return program, grid


def compile_job(torch: Any, job: KdaArtifactJob) -> tuple[Any, tuple[int, int], int]:
    if job.phase == KDA_FORWARD:
        program, grid = _compile_forward(torch, job)
        visible_buffers = 13
    elif job.phase in {KDA_BACKWARD_PREPROCESS, KDA_BACKWARD_NORMALIZE}:
        program, grid = _compile_preprocess_or_normalize(torch, job)
        visible_buffers = 6 if job.phase == KDA_BACKWARD_PREPROCESS else 8
    else:
        program, grid = _compile_backward_recurrent(torch, job)
        visible_buffers = 16
    return program, grid, visible_buffers


def _write_artifacts(
    *,
    job: KdaArtifactJob,
    program: Any,
    grid: tuple[int, int],
    visible_buffers: int,
    out_dir: Path,
    triton_out_dir: Path | None,
) -> dict[str, Any]:
    kernel_id = kda_kernel_id(job)
    asm = dict(program.asm)
    amdgcn, symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT)
    asm = {**asm, "amdgcn": amdgcn}
    out_dir.mkdir(parents=True, exist_ok=True)
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
            ).items()
        }
    signature = _program_signature(program)
    actual_argument_names = tuple(name for name, _ in signature)
    if actual_argument_names != KDA_ARGUMENT_NAMES[job.phase]:
        raise RuntimeError(
            f"KDA {job.phase} source ABI mismatch: expected "
            f"{KDA_ARGUMENT_NAMES[job.phase]}, got {actual_argument_names}"
        )
    arg_layout = _kernel_arg_layout(
        amdgcn,
        signature=signature,
        visible_global_buffers=visible_buffers,
    )
    metadata = kda_metadata_dict(
        job=job,
        kernel_id=kernel_id,
        amdgcn_symbol=symbol,
        launch_metadata=_launch_metadata(program, grid),
        asm_keys=asm,
        source_triton_commit=installed_triton_commit(),
        amdgcn=amdgcn,
        kernel_arg_layout=arg_layout,
    )
    metadata["triton_artifacts"] = triton_artifacts
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    return {
        "kernel_id": kernel_id,
        "phase": job.phase,
        "asm": display_path(asm_path, root=REPO_ROOT),
        "metadata": display_path(metadata_path, root=REPO_ROOT),
        "amdgcn_symbol": symbol,
        "launch_metadata": metadata["launch_metadata"],
        "amdgcn_stats": metadata["amdgcn_stats"],
    }


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate precompiled gfx1151 KDA artifacts.")
    parser.add_argument("--phase", action="append", choices=KDA_PHASES)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_AMDGCN_DIR)
    parser.add_argument("--triton-out-dir", type=Path, default=DEFAULT_TRITON_DIR)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--clean", action="store_true")
    parser.add_argument("--limit", type=int)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    import torch

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("KDA artifact generation requires a ROCm torch device")
    if args.limit is not None and args.limit <= 0:
        raise ValueError("--limit must be positive")
    phases = set(args.phase or KDA_PHASES)
    jobs = tuple(job for job in kda_precompiled_jobs() if job.phase in phases)
    if args.limit is not None:
        jobs = jobs[: args.limit]
    removed = 0
    if args.clean:
        removed = clean_generated_outputs(
            args.out_dir,
            args.triton_out_dir,
            kernel_id_prefixes=("gfx1151_kda_",),
        )
    generated: list[dict[str, Any]] = []
    failures: list[dict[str, str]] = []
    for index, job in enumerate(jobs, start=1):
        try:
            program, grid, visible_buffers = compile_job(torch, job)
            record = _write_artifacts(
                job=job,
                program=program,
                grid=grid,
                visible_buffers=visible_buffers,
                out_dir=args.out_dir,
                triton_out_dir=args.triton_out_dir,
            )
            generated.append(record)
            print(f"[{index}/{len(jobs)}] generated {record['kernel_id']}", flush=True)
        except Exception as exc:
            failure = {"job": repr(job), "error": repr(exc)}
            failures.append(failure)
            print(f"[{index}/{len(jobs)}] FAILED {failure}", flush=True)
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    summary = {
        "family": "kimi_delta_attention",
        "arch": "gfx1151",
        "source_triton_commit": installed_triton_commit(),
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

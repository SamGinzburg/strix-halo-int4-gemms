from __future__ import annotations

import argparse
import json
import subprocess
import sys
from dataclasses import replace
from pathlib import Path
from typing import Any, Iterable


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"
DEFAULT_SUMMARY = DEFAULT_AMDGCN_DIR / "ragged_generation_summary.json"


def add_local_package_to_path() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    sys.path.insert(0, str(REPO_ROOT / "scripts"))


add_local_package_to_path()

from amd_strix_halo_kernels.artifacts import (  # noqa: E402
    display_path,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.metadata import (  # noqa: E402
    OUTPUT_DTYPE_BF16,
    OUTPUT_DTYPE_FLOAT32,
    SUPPORTED_SUBCHANNELS,
    GemmLayout,
    ScaleMode,
    ScaleSpec,
)
from amd_strix_halo_kernels.ragged import RaggedBwdDotConfig, RaggedDotConfig  # noqa: E402
from amd_strix_halo_kernels.ragged_artifacts import (  # noqa: E402
    RAGGED_BWD,
    RAGGED_EVEN_K,
    RAGGED_FWD,
    RAGGED_MASK_K,
    RAGGED_VARIANTS,
    ragged_config_label,
    ragged_kernel_id,
    ragged_metadata_dict,
)


DEFAULT_FWD_CONFIG = RaggedDotConfig()
DEFAULT_BWD_CONFIG = RaggedBwdDotConfig()


def _parse_scale(value: str) -> ScaleSpec:
    if value == "pc":
        return ScaleSpec(ScaleMode.PER_CHANNEL)
    if value.startswith("sc"):
        try:
            return ScaleSpec(ScaleMode.SUBCHANNEL, int(value[2:]))
        except ValueError as exc:
            raise argparse.ArgumentTypeError("subchannel scale must use sc<size>") from exc
    raise argparse.ArgumentTypeError("scale must be pc or sc<size>")


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
    checkout = _triton_checkout_root(triton)
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


def _cdiv(x: int, y: int) -> int:
    return (x + y - 1) // y


def _compile_k(logical_k: int, scale: ScaleSpec, block_k: int) -> int:
    k = max(logical_k, block_k)
    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or block_k
        # Compile subchannel kernels with more than one scale column so SCALE_COLS
        # remains a runtime scalar in the packaged HSACO ABI.
        k = max(k, subchannel * 2)
    if k % 2:
        k += 1
    return k


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


def _kernel_arg_layout(amdgcn: str, runtime_scalar_args: list[str]) -> dict[str, object]:
    lines = amdgcn.splitlines()
    in_args = False
    by_value_offsets: list[int] = []
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
        if kind == "by_value" and size == 4:
            by_value_offsets.append(offset)
        elif kind == "global_buffer" and size == 8:
            global_buffer_offsets.append(offset)
    if not by_value_offsets or len(global_buffer_offsets) < 2:
        raise ValueError("could not parse ragged AMDGCN kernel argument layout")
    if len(runtime_scalar_args) != len(by_value_offsets):
        raise ValueError(
            f"runtime scalar arg count {len(runtime_scalar_args)} does not match AMDGCN by-value args {len(by_value_offsets)}"
        )
    return {
        "by_value_arg_count": len(by_value_offsets),
        "by_value_offsets": by_value_offsets,
        "runtime_scalar_args": runtime_scalar_args,
        "hidden_global_buffer_offsets": global_buffer_offsets[-2:],
    }


def _fwd_args(torch: Any, *, config: RaggedDotConfig, layout: GemmLayout, scale: ScaleSpec, variant: str) -> tuple[Any, ...]:
    groups = 2
    m = max(config.block_m * 2, 64)
    n = max(config.block_n, 64)
    k = _compile_k(config.block_k, scale, config.block_k)
    k_packed = k // 2
    scale_cols = _cdiv(k, scale.subchannel_size or k)
    lhs_shape = (k_packed, m) if layout in {GemmLayout.TN, GemmLayout.TT} else (m, k_packed)
    rhs_shape = (groups, n, k_packed) if layout in {GemmLayout.NT, GemmLayout.TT} else (groups, k_packed, n)
    lhs = torch.empty(lhs_shape, device="cuda", dtype=torch.uint8)
    rhs = torch.empty(rhs_shape, device="cuda", dtype=torch.uint8)
    a_scale = (
        torch.empty((m, scale_cols), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((m,), device="cuda", dtype=torch.bfloat16)
    )
    b_scale = (
        torch.empty((groups, scale_cols, n), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, n), device="cuda", dtype=torch.bfloat16)
    )
    out = torch.empty((m, n), device="cuda", dtype=torch.bfloat16)
    group_sizes = torch.tensor([m // groups, m - (m // groups)], device="cuda", dtype=torch.int32)

    from amd_strix_halo_kernels.ragged import calculate_group_info

    group_info = calculate_group_info(group_sizes, config.block_m, align_tile=config.align_tile, allow_triton=False)
    return (
        lhs,
        rhs,
        a_scale,
        b_scale,
        group_info.group_id,
        group_info.block_start,
        group_info.actual_start,
        group_info.actual_end,
        out,
        m,
        n,
        k_packed,
        scale_cols,
        group_info.num_tasks,
    )


def _bwd_args(torch: Any, *, config: RaggedBwdDotConfig, layout: GemmLayout, scale: ScaleSpec, variant: str) -> tuple[Any, ...]:
    groups = 2
    m = max(config.block_m, 64)
    n = max(config.block_n, 64)
    k = _compile_k(config.block_k, scale, config.block_k)
    k_packed = k // 2
    scale_cols = _cdiv(k, scale.subchannel_size or k)
    lhs_shape = (groups, k_packed, m) if layout in {GemmLayout.TN, GemmLayout.TT} else (groups, m, k_packed)
    rhs_shape = (groups, n, k_packed) if layout in {GemmLayout.NT, GemmLayout.TT} else (groups, k_packed, n)
    lhs = torch.empty(lhs_shape, device="cuda", dtype=torch.uint8)
    rhs = torch.empty(rhs_shape, device="cuda", dtype=torch.uint8)
    a_scale = (
        torch.empty((groups, m, scale_cols), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, m), device="cuda", dtype=torch.bfloat16)
    )
    b_scale = (
        torch.empty((groups, scale_cols, n), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, n), device="cuda", dtype=torch.bfloat16)
    )
    out = torch.empty((groups, m, n), device="cuda", dtype=torch.float32)
    if variant == RAGGED_EVEN_K:
        group_sizes = torch.tensor([k, k], device="cuda", dtype=torch.int32)
    else:
        group_sizes = torch.tensor([max(1, k - 1), max(1, k - 3)], device="cuda", dtype=torch.int32)
    return lhs, rhs, a_scale, b_scale, group_sizes, out, m, n, k_packed, scale_cols


def compile_ragged_program(*, mode: str, layout: GemmLayout, scale: ScaleSpec, variant: str, config: RaggedDotConfig | RaggedBwdDotConfig) -> Any:
    import torch

    if mode == RAGGED_FWD:
        from amd_strix_halo_kernels.ragged import _ragged_dot_int4_even_k_kernel, _ragged_dot_int4_kernel

        assert isinstance(config, RaggedDotConfig)
        args = _fwd_args(torch, config=config, layout=layout, scale=scale, variant=variant)
        lhs, rhs, a_scale, b_scale, group_id, block_start, actual_start, actual_end, out, m, n, k_packed, scale_cols, num_tasks = args
        grid = (num_tasks * _cdiv(n, config.block_n),)
        kernel = _ragged_dot_int4_even_k_kernel() if variant == RAGGED_EVEN_K else _ragged_dot_int4_kernel()
        return kernel[grid](
            lhs,
            rhs,
            a_scale,
            b_scale,
            group_id,
            block_start,
            actual_start,
            actual_end,
            out,
            m,
            n,
            k_packed,
            scale_cols,
            num_tasks,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            HAS_LHS_SCALE=True,
            HAS_RHS_SCALE=True,
            SUBCHANNEL=scale.subchannel_size or 0,
            GROUP_SIZE_TASKS=config.group_size_tasks,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )

    if mode == RAGGED_BWD:
        from amd_strix_halo_kernels.ragged import _ragged_dot_int4_bwd_kernel

        assert isinstance(config, RaggedBwdDotConfig)
        args = _bwd_args(torch, config=config, layout=layout, scale=scale, variant=variant)
        lhs, rhs, a_scale, b_scale, group_sizes, out, m, n, k_packed, scale_cols = args
        groups = int(lhs.shape[0])
        grid = (groups * _cdiv(m, config.block_m) * _cdiv(n, config.block_n), config.split_k)
        return _ragged_dot_int4_bwd_kernel()[grid](
            lhs,
            rhs,
            a_scale,
            b_scale,
            group_sizes,
            out,
            m,
            n,
            k_packed,
            scale_cols,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            SPLIT_K=config.split_k,
            HAS_LHS_SCALE=True,
            HAS_RHS_SCALE=True,
            SUBCHANNEL=scale.subchannel_size or 0,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            EVEN_K_FAST_PATH=variant == RAGGED_EVEN_K,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
    raise ValueError(f"unsupported ragged mode {mode!r}")


def _runtime_scalar_args(program: Any) -> list[str]:
    return [
        name
        for name, ty in program.src.signature.items()
        if ty != "constexpr" and not str(ty).startswith("*")
    ]


def compile_ragged_kernel(**kwargs: Any) -> tuple[dict[str, object], dict[str, int], list[str]]:
    program = compile_ragged_program(**kwargs)
    return dict(program.asm), _launch_metadata(program), _runtime_scalar_args(program)


def _write_artifacts(
    *,
    mode: str,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    config: RaggedDotConfig | RaggedBwdDotConfig,
    asm: dict[str, object],
    launch_metadata: dict[str, int],
    runtime_scalar_args: list[str],
    out_dir: Path,
    triton_out_dir: Path | None,
    triton: Any,
) -> dict[str, object]:
    output_dtype = OUTPUT_DTYPE_BF16 if mode == RAGGED_FWD else OUTPUT_DTYPE_FLOAT32
    kernel_id = ragged_kernel_id(
        mode=mode,
        layout=layout,
        scale=scale,
        config=config,
        variant=variant,
        output_dtype=output_dtype,
    )
    out_dir.mkdir(parents=True, exist_ok=True)
    asm_path = out_dir / f"{kernel_id}.s"
    metadata_path = out_dir / f"{kernel_id}.json"
    triton_root = _triton_checkout_root(triton)
    amdgcn, amdgcn_symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT, triton_root=triton_root)
    asm = {**asm, "amdgcn": amdgcn}
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
    metadata = ragged_metadata_dict(
        kernel_id=kernel_id,
        mode=mode,
        layout=layout,
        scale=scale,
        config=config,
        variant=variant,
        output_dtype=output_dtype,
        amdgcn_symbol=amdgcn_symbol,
        launch_metadata=launch_metadata,
        asm_keys=sorted(asm),
        triton_artifacts=triton_artifacts,
        source_triton_commit=_triton_commit(triton),
        amdgcn=amdgcn,
        kernel_arg_layout=_kernel_arg_layout(amdgcn, runtime_scalar_args),
    )
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    return {
        "kernel_id": kernel_id,
        "asm": display_path(asm_path, root=REPO_ROOT),
        "metadata": display_path(metadata_path, root=REPO_ROOT),
        "mode": mode,
        "layout": layout.value,
        "scale": scale.label,
        "variant": variant,
        "config_label": ragged_config_label(config),
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "amdgcn_stats": metadata["amdgcn_stats"],
    }


def _clean_ragged_outputs(out_dir: Path, triton_out_dir: Path | None) -> int:
    removed = 0
    for directory, patterns in (
        (out_dir, ("*ragged_int4*.s", "*ragged_int4*.json")),
        (triton_out_dir, ("*ragged_int4*.py", "*ragged_int4*.ttir", "*ragged_int4*.ttgir", "*ragged_int4*.llir")),
    ):
        if directory is None or not directory.exists():
            continue
        for pattern in patterns:
            for path in directory.glob(pattern):
                path.unlink()
                removed += 1
    return removed


def _selected(values: list[Any], default: Iterable[Any]) -> tuple[Any, ...]:
    return tuple(values) if values else tuple(default)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate prebuilt AMDGCN artifacts for ragged int4 dot kernels.")
    parser.add_argument("--mode", action="append", choices=[RAGGED_FWD, RAGGED_BWD], default=[])
    parser.add_argument("--layout", action="append", type=GemmLayout, choices=list(GemmLayout), default=[])
    parser.add_argument("--scale", action="append", type=_parse_scale, default=[])
    parser.add_argument("--variant", action="append", choices=list(RAGGED_VARIANTS), default=[])
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_AMDGCN_DIR)
    parser.add_argument("--triton-out-dir", type=Path, default=DEFAULT_TRITON_DIR)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--no-triton-artifacts", action="store_true")
    parser.add_argument("--clean", action="store_true", help="remove existing ragged generated artifacts before regenerating")
    parser.add_argument("--limit", type=int, default=0)
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)

    import triton

    modes = _selected(args.mode, (RAGGED_FWD, RAGGED_BWD))
    layouts = _selected(args.layout, tuple(GemmLayout))
    scales = _selected(args.scale, (*(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS), ScaleSpec(ScaleMode.PER_CHANNEL)))
    variants = _selected(args.variant, RAGGED_VARIANTS)
    triton_out_dir = None if args.no_triton_artifacts else args.triton_out_dir
    if args.clean:
        removed = _clean_ragged_outputs(args.out_dir, triton_out_dir)
        print(f"removed {removed} stale ragged artifact files", flush=True)

    jobs: list[tuple[str, GemmLayout, ScaleSpec, str, RaggedDotConfig | RaggedBwdDotConfig]] = []
    for mode in modes:
        for layout in layouts:
            for scale in scales:
                for variant in variants:
                    base_config: RaggedDotConfig | RaggedBwdDotConfig = DEFAULT_FWD_CONFIG if mode == RAGGED_FWD else DEFAULT_BWD_CONFIG
                    config = replace(base_config, enable_even_k_fast_path=(variant == RAGGED_EVEN_K))
                    jobs.append((mode, layout, scale, variant, config))
    if args.limit:
        jobs = jobs[: args.limit]

    results = []
    failures = []
    for index, (mode, layout, scale, variant, config) in enumerate(jobs, start=1):
        output_dtype = OUTPUT_DTYPE_BF16 if mode == RAGGED_FWD else OUTPUT_DTYPE_FLOAT32
        kernel_id = ragged_kernel_id(
            mode=mode,
            layout=layout,
            scale=scale,
            config=config,
            variant=variant,
            output_dtype=output_dtype,
        )
        print(f"[{index}/{len(jobs)}] {kernel_id}", flush=True)
        try:
            asm, launch_metadata, runtime_scalar_args = compile_ragged_kernel(
                mode=mode,
                layout=layout,
                scale=scale,
                variant=variant,
                config=config,
            )
            results.append(
                _write_artifacts(
                    mode=mode,
                    layout=layout,
                    scale=scale,
                    variant=variant,
                    config=config,
                    asm=asm,
                    launch_metadata=launch_metadata,
                    runtime_scalar_args=runtime_scalar_args,
                    out_dir=args.out_dir,
                    triton_out_dir=triton_out_dir,
                    triton=triton,
                )
            )
        except Exception as exc:
            print(f"FAILED {kernel_id}: {exc!r}", flush=True)
            failures.append({"kernel_id": kernel_id, "error": repr(exc)})

    summary = {
        "repo_root": "<repo>",
        "source_triton_commit": _triton_commit(triton),
        "generated": results,
        "failures": failures,
    }
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(display_path(args.summary, root=REPO_ROOT))
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

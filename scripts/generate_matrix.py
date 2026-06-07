from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"
DEFAULT_SUMMARY = DEFAULT_AMDGCN_DIR / "generation_summary.json"


def add_local_package_to_path() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    sys.path.insert(0, str(REPO_ROOT / "scripts"))


add_local_package_to_path()

from amd_strix_halo_kernels.artifacts import (
    clean_generated_outputs,
    display_path,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.metadata import KernelMetadata
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import LaunchShape, representative_generation_shape


def generation_shape(kernel: KernelMetadata) -> LaunchShape:
    return representative_generation_shape(kernel)


def write_artifacts(
    kernel: KernelMetadata,
    shape: LaunchShape,
    asm: dict[str, object],
    launch_metadata: dict[str, int],
    out_dir: Path,
    triton_out_dir: Path | None,
    source_triton_commit: str | None,
    triton_root: Path | None,
) -> dict[str, object]:
    out_dir.mkdir(parents=True, exist_ok=True)
    asm_path = out_dir / f"{kernel.kernel_id}.s"
    metadata_path = out_dir / f"{kernel.kernel_id}.json"
    amdgcn, amdgcn_symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel.kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT, triton_root=triton_root)
    asm = {**asm, "amdgcn": amdgcn}
    asm_path.write_text(amdgcn)
    triton_artifacts = {}
    if triton_out_dir is not None:
        triton_artifacts = {
            key: display_path(path, root=REPO_ROOT)
            for key, path in write_triton_text_artifacts(
                kernel_id=kernel.kernel_id,
                asm=asm,
                out_dir=triton_out_dir,
                repo_root=REPO_ROOT,
                triton_root=triton_root,
            ).items()
        }
    metadata = kernel.to_dict()
    metadata.update(
        {
            "generation_shape": {"m": shape.m, "n": shape.n, "k": shape.k},
            "shape_specialization": "runtime",
            "runtime_shape_args": ["M", "N", "K"],
            "asm_keys": sorted(asm),
            "triton_artifacts": triton_artifacts,
            "status": "generated",
            "source_triton_commit": source_triton_commit,
            "amdgcn_symbol": amdgcn_symbol,
            "launch_metadata": launch_metadata,
            "amdgcn_stats": {
                "iu4_wmma": amdgcn.count("v_wmma_i32_16x16x16_iu4"),
                "iu8_wmma": amdgcn.count("v_wmma_i32_16x16x16_iu8"),
                "waitcnt": amdgcn.count("s_waitcnt"),
                "lines": len(amdgcn.splitlines()),
            },
        }
    )
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    return {
        "kernel_id": kernel.kernel_id,
        "shape": metadata["generation_shape"],
        "asm": display_path(asm_path, root=REPO_ROOT),
        "metadata": display_path(metadata_path, root=REPO_ROOT),
        "triton_artifacts": triton_artifacts,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "amdgcn_stats": metadata["amdgcn_stats"],
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Regenerate the checked-in AMDGCN assembly matrix from the local Triton compiler."
    )
    parser.add_argument(
        "--out-dir",
        type=Path,
        default=DEFAULT_AMDGCN_DIR,
        help=f"directory for .s and per-kernel .json outputs (default: {DEFAULT_AMDGCN_DIR})",
    )
    parser.add_argument("--kernel-id", action="append", default=[])
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument(
        "--summary",
        type=Path,
        default=DEFAULT_SUMMARY,
        help=f"summary JSON path (default: {DEFAULT_SUMMARY})",
    )
    parser.add_argument(
        "--triton-out-dir",
        type=Path,
        default=DEFAULT_TRITON_DIR,
        help=f"directory for Triton source/IR outputs (default: {DEFAULT_TRITON_DIR})",
    )
    parser.add_argument("--no-triton-artifacts", action="store_true")
    parser.add_argument(
        "--clean",
        action="store_true",
        help="delete managed AMDGCN/Triton artifact files before regenerating the full matrix",
    )
    args = parser.parse_args(argv)

    if args.clean and (args.kernel_id or args.limit):
        parser.error("--clean regenerates the full matrix; do not combine it with --kernel-id or --limit")

    from generate_amdgcn import compile_kernel_with_metadata, triton_checkout_root, triton_commit

    kernels = list(default_registry.all())
    if args.kernel_id:
        selected = set(args.kernel_id)
        kernels = [kernel for kernel in kernels if kernel.kernel_id in selected]
    if args.limit:
        kernels = kernels[: args.limit]

    results = []
    failures = []
    out_dir = args.out_dir
    triton_out_dir = None if args.no_triton_artifacts else args.triton_out_dir
    source_triton_commit = triton_commit()
    triton_root = triton_checkout_root()
    if args.clean:
        removed = clean_generated_outputs(out_dir, triton_out_dir)
        print(f"removed {removed} stale generated artifact files", flush=True)
    for index, kernel in enumerate(kernels, start=1):
        shape = generation_shape(kernel)
        print(f"[{index}/{len(kernels)}] {kernel.kernel_id} shape={shape.m},{shape.n},{shape.k}", flush=True)
        try:
            asm, launch_metadata = compile_kernel_with_metadata(kernel, shape)
            results.append(
                write_artifacts(
                    kernel,
                    shape,
                    asm,
                    launch_metadata,
                    out_dir,
                    triton_out_dir,
                    source_triton_commit,
                    triton_root,
                )
            )
        except Exception as exc:
            failures.append(
                {"kernel_id": kernel.kernel_id, "shape": {"m": shape.m, "n": shape.n, "k": shape.k}, "error": repr(exc)}
            )
            print(f"FAILED {kernel.kernel_id}: {exc!r}", flush=True)

    summary = {
        "repo_root": "<repo>",
        "source_triton_commit": source_triton_commit,
        "generated": results,
        "failures": failures,
    }
    summary_path = args.summary
    summary_path.parent.mkdir(parents=True, exist_ok=True)
    summary_path.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(summary_path)
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

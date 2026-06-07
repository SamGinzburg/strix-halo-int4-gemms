from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from statistics import mean
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "ragged_dot_int4.json"


def add_local_paths() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))


add_local_paths()

from amd_strix_halo_kernels import (
    GemmLayout,
    RaggedAutotuneCandidate,
    RaggedBwdDotConfig,
    RaggedDotMode,
    RaggedDotConfig,
    ScaleMode,
    ScaleSpec,
    autotune_ragged_dot,
    default_ragged_dot_candidates,
)
from amd_strix_halo_kernels.benchmarking import BenchmarkShape


@dataclass(frozen=True, slots=True)
class RaggedBenchmarkConfig:
    block_m: int
    block_n: int
    block_k: int
    group_size_tasks: int
    num_warps: int
    num_stages: int
    align_tile: int = 8

    @property
    def label(self) -> str:
        return (
            f"BM{self.block_m}_BN{self.block_n}_BK{self.block_k}"
            f"_GST{self.group_size_tasks}_W{self.num_warps}_S{self.num_stages}"
        )

    def to_ragged_config(self) -> RaggedDotConfig:
        return RaggedDotConfig(
            block_m=self.block_m,
            block_n=self.block_n,
            block_k=self.block_k,
            align_tile=self.align_tile,
            group_size_tasks=self.group_size_tasks,
            num_warps=self.num_warps,
            num_stages=self.num_stages,
        )

    def to_bwd_config(self, split_k: int) -> RaggedBwdDotConfig:
        return RaggedBwdDotConfig(
            block_m=self.block_m,
            block_n=self.block_n,
            block_k=self.block_k,
            split_k=split_k,
            num_warps=self.num_warps,
            num_stages=self.num_stages,
        )

    def to_candidate(self, mode: RaggedDotMode, layout: GemmLayout, scale: ScaleSpec, split_k: int) -> RaggedAutotuneCandidate:
        config = self.to_ragged_config() if mode is RaggedDotMode.FWD else self.to_bwd_config(split_k)
        return RaggedAutotuneCandidate(mode=mode, layout=layout, scale=scale, config=config)


def parse_shape(value: str) -> BenchmarkShape:
    parts = value.replace("x", ",").split(",")
    if len(parts) != 3:
        raise argparse.ArgumentTypeError("shape must be M,N,K")
    try:
        m, n, k = (int(part) for part in parts)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("shape values must be integers") from exc
    if m <= 0 or n <= 0 or k <= 0:
        raise argparse.ArgumentTypeError("shape values must be positive")
    return BenchmarkShape(m=m, n=n, k=k)


def parse_scale(value: str) -> ScaleSpec:
    if value == "pc":
        return ScaleSpec(ScaleMode.PER_CHANNEL)
    if value.startswith("sc"):
        try:
            return ScaleSpec(ScaleMode.SUBCHANNEL, int(value[2:]))
        except ValueError as exc:
            raise argparse.ArgumentTypeError("subchannel scale must use sc<size>") from exc
    raise argparse.ArgumentTypeError("scale must be pc or sc<size>")


def parse_layout(value: str) -> GemmLayout:
    try:
        return GemmLayout(value)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("layout must be one of nn, nt, tn, tt") from exc


def parse_config(value: str) -> RaggedBenchmarkConfig:
    parts = value.split(",")
    if len(parts) not in {6, 7}:
        raise argparse.ArgumentTypeError("config must be BM,BN,BK,GROUP_SIZE_TASKS,WARPS,STAGES[,ALIGN_TILE]")
    try:
        block_m, block_n, block_k, group_size_tasks, warps, stages, *align = (int(part) for part in parts)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("config values must be integers") from exc
    return RaggedBenchmarkConfig(
        block_m=block_m,
        block_n=block_n,
        block_k=block_k,
        group_size_tasks=group_size_tasks,
        num_warps=warps,
        num_stages=stages,
        align_tile=align[0] if align else 8,
    )


def default_shapes() -> tuple[BenchmarkShape, ...]:
    return (
        BenchmarkShape(1024, 2048, 1024),
        BenchmarkShape(2048, 2048, 2048),
        BenchmarkShape(4096, 4096, 4096),
    )


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Benchmark Triton-JIT int4 ragged dot across runtime shapes.")
    parser.add_argument(
        "--mode",
        action="append",
        default=[],
        choices=("fwd", "bwd"),
        help="kernel family to benchmark",
    )
    parser.add_argument("--shape", type=parse_shape, action="append", default=[], help="shape as M,N,K")
    parser.add_argument("--groups", type=int, default=8, help="number of RHS groups/experts")
    parser.add_argument(
        "--case",
        action="append",
        default=[],
        choices=("balanced", "uneven"),
        help="group-size pattern to benchmark",
    )
    parser.add_argument("--layout", type=parse_layout, action="append", default=[], help="layout: nn, nt, tn, or tt")
    parser.add_argument("--scale", type=parse_scale, action="append", default=[], help="scale mode: pc or sc<size>")
    parser.add_argument("--split-k", type=int, action="append", default=[], help="backward split-K value")
    parser.add_argument(
        "--config",
        type=parse_config,
        action="append",
        default=[],
        help="limit tuning to one ragged config as BM,BN,BK,GROUP_SIZE_TASKS,WARPS,STAGES[,ALIGN_TILE]",
    )
    parser.add_argument("--warmup-ms", type=int, default=25)
    parser.add_argument("--rep-ms", type=int, default=100)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    return parser


def balanced_group_sizes(rows: int, groups: int) -> list[int]:
    base, remainder = divmod(rows, groups)
    return [base + (1 if group < remainder else 0) for group in range(groups)]


def uneven_group_sizes(rows: int, groups: int) -> list[int]:
    if groups == 1:
        return [rows]
    weights = [37, 511, 3, 1009, 250, 0, 1700, 586]
    if groups > len(weights):
        weights.extend((idx * 97 + 13) % 997 for idx in range(groups - len(weights)))
    weights = weights[:groups]
    total = sum(weights)
    sizes = [rows * weight // total if total else 0 for weight in weights]
    sizes[-1] += rows - sum(sizes)
    return sizes


def group_sizes_for(case: str, rows: int, groups: int) -> list[int]:
    if groups <= 0:
        raise ValueError("--groups must be positive")
    if case == "balanced":
        return balanced_group_sizes(rows, groups)
    if case == "uneven":
        return uneven_group_sizes(rows, groups)
    raise ValueError(f"unsupported case: {case}")


def record_to_output_dict(record: Any, *, case: str) -> dict[str, Any]:
    metadata = dict(record.metadata)
    return {
        "kernel_id": record.kernel_id,
        "mode": metadata["mode"],
        "layout": metadata["layout"],
        "shape": record.shape.to_dict(),
        "groups": metadata["groups"],
        "case": case,
        "group_sizes": metadata["group_sizes"],
        "scale": metadata["scale"],
        "runtime_ms": record.runtime_ms,
        "tops": record.tops,
        "success": record.success,
        "metadata": metadata,
        "notes": record.notes,
    }


def candidate_list_for(
    *,
    configs: tuple[RaggedBenchmarkConfig, ...],
    mode: RaggedDotMode,
    layout: GemmLayout,
    scale: ScaleSpec,
    split_ks: tuple[int, ...],
) -> tuple[RaggedAutotuneCandidate, ...]:
    if not configs:
        return default_ragged_dot_candidates(mode, layout=layout, scale=scale, split_ks=split_ks)
    return tuple(
        config.to_candidate(mode, layout, scale, split_k)
        for config in configs
        for split_k in (split_ks if mode is RaggedDotMode.BWD else (1,))
    )


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    if args.warmup_ms < 0:
        raise ValueError("--warmup-ms must be non-negative")
    if args.rep_ms <= 0:
        raise ValueError("--rep-ms must be positive")

    import torch

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("ragged dot benchmarks require a ROCm torch CUDA/HIP device")

    shapes = tuple(args.shape) if args.shape else default_shapes()
    modes = tuple(args.mode) if args.mode else ("fwd", "bwd")
    cases = tuple(args.case) if args.case else ("balanced", "uneven")
    scales = tuple(args.scale) if args.scale else (ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 256))
    layouts = tuple(args.layout) if args.layout else tuple(GemmLayout)
    configs = tuple(args.config)
    split_ks = tuple(args.split_k) if args.split_k else (1, 2)

    records: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []
    for mode in modes:
        mode_obj = RaggedDotMode(mode)
        for shape in shapes:
            for case in cases:
                group_sizes = group_sizes_for(case, shape.m if mode_obj is RaggedDotMode.FWD else shape.k, args.groups)
                for layout in layouts:
                    for scale in scales:
                        candidate_list = candidate_list_for(
                            configs=configs,
                            mode=mode_obj,
                            layout=layout,
                            scale=scale,
                            split_ks=split_ks,
                        )
                        try:
                            result = autotune_ragged_dot(
                                mode=mode_obj,
                                m=shape.m,
                                n=shape.n,
                                k=shape.k,
                                group_sizes=group_sizes,
                                layout=layout,
                                scale=scale,
                                candidates=candidate_list,
                                warmup_ms=args.warmup_ms,
                                rep_ms=args.rep_ms,
                                continue_on_error=True,
                            )
                        except Exception as exc:
                            failure = {
                                "mode": mode,
                                "layout": layout.value,
                                "shape": shape.to_dict(),
                                "groups": args.groups,
                                "case": case,
                                "scale": scale.label,
                                "configs": [candidate.config_label for candidate in candidate_list],
                                "error": repr(exc),
                            }
                            failures.append(failure)
                            print(f"FAILED {failure}", flush=True)
                            continue
                        for record in result.records:
                            row = record_to_output_dict(record, case=case)
                            if record.success:
                                records.append(row)
                                print(
                                    f"{row['kernel_id']} shape={shape.m},{shape.n},{shape.k} "
                                    f"case={case} runtime_ms={row['runtime_ms']:.6f} "
                                    f"tops={row['tops']:.3f}",
                                    flush=True,
                                )
                            else:
                                failure = {
                                    "mode": mode,
                                    "layout": layout.value,
                                    "shape": shape.to_dict(),
                                    "groups": args.groups,
                                    "case": case,
                                    "scale": scale.label,
                                    "config": row["metadata"]["config_label"],
                                    "error": row["metadata"].get("error", "unknown error"),
                                }
                                failures.append(failure)
                                print(f"FAILED {failure}", flush=True)

    if not records:
        raise RuntimeError(f"all ragged dot benchmark candidates failed: {failures}")

    best = max(records, key=lambda record: record["tops"])
    output = {
        "records": records,
        "failures": failures,
        "best": best,
        "summary": {
            "count": len(records),
            "mean_tops": mean(record["tops"] for record in records),
            "max_tops": best["tops"],
            "modes": list(modes),
            "shapes": [shape.to_dict() for shape in shapes],
            "cases": list(cases),
            "scales": [scale.label for scale in scales],
            "layouts": [layout.value for layout in layouts],
            "configs": [config.label for config in configs] if configs else ["default_ragged_dot_candidates"],
            "split_k": list(split_ks),
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2, sort_keys=True) + "\n")
    print(args.output)
    print(
        f"best {best['kernel_id']} shape={best['shape']} case={best['case']} "
        f"tops={best['tops']:.3f} runtime_ms={best['runtime_ms']:.6f}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

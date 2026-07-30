from __future__ import annotations

import argparse
import json
import os
import sys
from dataclasses import asdict, dataclass
from pathlib import Path
from statistics import mean
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "gfx1151_attention.json"
sys.path.insert(0, str(REPO_ROOT / "src"))

from amd_strix_halo_kernels import (
    Int4AttentionConfig,
    autotune_attention,
    default_attention_candidates,
    quantize_attention_qk_int4,
    quantize_attention_value_int4,
)


@dataclass(frozen=True, slots=True)
class AttentionShape:
    batch: int
    query_heads: int
    kv_heads: int
    query_length: int
    key_length: int
    head_dim: int
    value_dim: int


@dataclass(frozen=True, slots=True)
class AttentionCase:
    name: str
    shape: AttentionShape
    window_size: tuple[int, int] | None = None
    query_position_offset: int = 0


def parse_config(value: str) -> Int4AttentionConfig:
    try:
        parts = tuple(int(part) for part in value.split(","))
    except ValueError as exc:
        raise argparse.ArgumentTypeError(
            "config must be BLOCK_M,BLOCK_N,WARPS,STAGES[,DECODE_SPLITS]"
        ) from exc
    if len(parts) not in {4, 5}:
        raise argparse.ArgumentTypeError(
            "config must be BLOCK_M,BLOCK_N,WARPS,STAGES[,DECODE_SPLITS]"
        )
    block_m, block_n, num_warps, num_stages, *decode_splits = parts
    return Int4AttentionConfig(
        block_m=block_m,
        block_n=block_n,
        num_warps=num_warps,
        num_stages=num_stages,
        decode_splits=decode_splits[0] if decode_splits else 1,
    )


def benchmark_cases() -> tuple[AttentionCase, ...]:
    return (
        AttentionCase("prefill-512", AttentionShape(1, 8, 8, 512, 512, 64, 64)),
        AttentionCase("decode-2048", AttentionShape(1, 8, 8, 1, 2048, 64, 64), query_position_offset=2047),
        AttentionCase("local-128", AttentionShape(1, 8, 8, 512, 512, 64, 64), window_size=(127, 0)),
        AttentionCase("train-gqa-2048", AttentionShape(7, 16, 8, 2048, 2048, 64, 64)),
        AttentionCase(
            "train-gqa-local-128",
            AttentionShape(7, 16, 8, 2048, 2048, 64, 64),
            window_size=(127, 0),
        ),
    )


def default_cases() -> tuple[AttentionCase, ...]:
    return benchmark_cases()[:3]


def default_configs(*, pv_int4: bool, decode: bool) -> tuple[Int4AttentionConfig, ...]:
    return default_attention_candidates(pv_int4=pv_int4, decode=decode)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Tune fused BF16/INT4 scaled-dot-product attention on gfx1151."
    )
    parser.add_argument(
        "--mode",
        action="append",
        choices=("bf16-bf16", "int4-bf16", "bf16-int4", "int4-int4"),
        default=[],
        help="QK-PV operand mode; repeat to select multiple modes",
    )
    parser.add_argument(
        "--case",
        action="append",
        choices=tuple(case.name for case in benchmark_cases()),
        default=[],
        help="benchmark case; repeat to select multiple cases",
    )
    parser.add_argument(
        "--config",
        action="append",
        type=parse_config,
        default=[],
        help="candidate BLOCK_M,BLOCK_N,WARPS,STAGES[,DECODE_SPLITS]; repeat for multiple candidates",
    )
    parser.add_argument("--warmup-ms", type=int, default=25)
    parser.add_argument("--rep-ms", type=int, default=100)
    parser.add_argument(
        "--backend",
        choices=("auto", "precompiled", "jit"),
        default="auto",
        help="attention backend preference for candidate timing",
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    return parser


def _make_operands(torch: Any, case: AttentionCase, *, qk_int4: bool, pv_int4: bool):
    shape = case.shape
    generator = torch.Generator(device="cuda").manual_seed(20260730)
    q = torch.randn(
        (shape.batch, shape.query_heads, shape.query_length, shape.head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ).mul_(0.2)
    k = torch.randn(
        (shape.batch, shape.kv_heads, shape.key_length, shape.head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ).mul_(0.2)
    v = torch.randn(
        (shape.batch, shape.kv_heads, shape.key_length, shape.value_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    ).mul_(0.2)
    logical = (q, k, v)
    kwargs: dict[str, Any] = {}
    if qk_int4:
        q, q_scale, head_dim = quantize_attention_qk_int4(q)
        k, k_scale, _ = quantize_attention_qk_int4(k)
        kwargs.update(query_scale=q_scale, key_scale=k_scale, head_dim=head_dim)
    if pv_int4:
        v, value_scale = quantize_attention_value_int4(v)
        kwargs["value_scale"] = value_scale
    return q, k, v, kwargs, logical


def _active_pairs(case: AttentionCase) -> int:
    shape = case.shape
    if case.window_size is None:
        return shape.query_length * shape.key_length
    left, right = case.window_size
    total = 0
    for query_index in range(shape.query_length):
        position = query_index + case.query_position_offset
        total += max(0, min(shape.key_length, position + right + 1) - max(0, position - left))
    return total


def _effective_tops(case: AttentionCase, runtime_ms: float) -> float:
    shape = case.shape
    operations = (
        2
        * shape.batch
        * shape.query_heads
        * _active_pairs(case)
        * (shape.head_dim + shape.value_dim)
    )
    return operations / (runtime_ms * 1.0e9)


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    if args.warmup_ms < 0:
        raise ValueError("--warmup-ms must be non-negative")
    if args.rep_ms <= 0:
        raise ValueError("--rep-ms must be positive")

    import torch
    from triton.testing import do_bench

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("attention benchmarks require a ROCm torch CUDA/HIP device")

    modes = tuple(args.mode) if args.mode else ("bf16-bf16", "int4-bf16", "bf16-int4", "int4-int4")
    selected_cases = set(args.case)
    cases = (
        tuple(case for case in benchmark_cases() if case.name in selected_cases)
        if selected_cases
        else default_cases()
    )
    records: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []
    baselines: list[dict[str, Any]] = []
    aotriton_enabled = os.environ.get("TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL") == "1"
    use_precompiled = {"auto": None, "precompiled": True, "jit": False}[args.backend]
    for case in cases:
        _, _, _, _, logical = _make_operands(torch, case, qk_int4=False, pv_int4=False)
        enable_gqa = case.shape.query_heads != case.shape.kv_heads
        mask = None
        if case.window_size is not None:
            left, right = case.window_size
            query_positions = torch.arange(case.shape.query_length, device="cuda") + case.query_position_offset
            key_positions = torch.arange(case.shape.key_length, device="cuda")
            mask = (key_positions[None, :] >= query_positions[:, None] - left) & (
                key_positions[None, :] <= query_positions[:, None] + right
            )
        baseline_samples = tuple(
            float(sample)
            for sample in do_bench(
                lambda: torch.nn.functional.scaled_dot_product_attention(
                    *logical,
                    attn_mask=mask,
                    enable_gqa=enable_gqa,
                ),
                warmup=args.warmup_ms,
                rep=args.rep_ms,
                return_mode="all",
            )
        )
        baseline_ms = float(torch.tensor(baseline_samples).median())
        baselines.append(
            {
                "backend": "torch.nn.functional.scaled_dot_product_attention",
                "case": case.name,
                "runtime_ms": baseline_ms,
                "effective_tops": _effective_tops(case, baseline_ms),
                "samples": len(baseline_samples),
                "notes": (
                    "BF16 inputs; output allocation included; "
                    f"ROCm experimental AOTriton={'enabled' if aotriton_enabled else 'disabled'}"
                ),
            }
        )
    for mode in modes:
        qk_int4 = mode.startswith("int4")
        pv_int4 = mode.endswith("int4")
        for case in cases:
            enable_gqa = case.shape.query_heads != case.shape.kv_heads
            configs = tuple(args.config) if args.config else default_configs(
                pv_int4=pv_int4,
                decode=case.shape.query_length == 1,
            )
            q, k, v, operand_kwargs, _ = _make_operands(
                torch,
                case,
                qk_int4=qk_int4,
                pv_int4=pv_int4,
            )
            try:
                result = autotune_attention(
                    q,
                    k,
                    v,
                    enable_gqa=enable_gqa,
                    window_size=case.window_size,
                    query_position_offset=case.query_position_offset,
                    candidates=configs,
                    warmup_ms=args.warmup_ms,
                    rep_ms=args.rep_ms,
                    use_precompiled=use_precompiled,
                    **operand_kwargs,
                )
            except Exception as exc:
                failure = {
                    "mode": mode,
                    "case": case.name,
                    "config": None,
                    "error": repr(exc),
                }
                failures.append(failure)
                print(f"FAILED {failure}", flush=True)
                continue
            for config, benchmark_record in zip(result.candidates, result.records, strict=True):
                if not benchmark_record.success:
                    failure = {
                        "mode": mode,
                        "case": case.name,
                        "config": asdict(config),
                        "error": benchmark_record.metadata["error"],
                    }
                    failures.append(failure)
                    print(f"FAILED {failure}", flush=True)
                    continue
                numerical_gate = benchmark_record.metadata["numerical_gate"]
                numerical_metrics = benchmark_record.metadata["numerics"]
                record = {
                    "mode": mode,
                    "case": case.name,
                    "shape": asdict(case.shape),
                    "window_size": case.window_size,
                    "query_position_offset": case.query_position_offset,
                    "config": asdict(config),
                    "runtime_ms": benchmark_record.runtime_ms,
                    "effective_tops": benchmark_record.tops,
                    "samples": benchmark_record.iterations,
                    "arithmetic": benchmark_record.metadata["arithmetic"],
                    "dispatch_preference": benchmark_record.metadata["dispatch_preference"],
                    "numerics": {
                        **numerical_gate,
                        "max_rel_diff_denominator_clamp": numerical_gate["atol"],
                        "float32_validation_output": numerical_metrics["float32_validation_output"],
                        "timed_bfloat16_output_vs_bfloat16_rounded_oracle": numerical_metrics[
                            "timed_output_vs_rounded_oracle"
                        ],
                    },
                }
                records.append(record)
                print(
                    f"{mode} {case.name} BM{config.block_m}_BN{config.block_n}_W{config.num_warps} "
                    f"DS{config.decode_splits} "
                    f"{benchmark_record.runtime_ms:.6f} ms {benchmark_record.tops:.3f} effective TOPS",
                    flush=True,
                )

    if not records:
        raise RuntimeError(f"all attention benchmark candidates failed: {failures}")
    winners = []
    for mode in modes:
        for case in cases:
            candidates = [record for record in records if record["mode"] == mode and record["case"] == case.name]
            if candidates:
                winners.append(min(candidates, key=lambda record: record["runtime_ms"]))
    output = {
        "records": records,
        "baselines": baselines,
        "failures": failures,
        "winners": winners,
        "summary": {
            "count": len(records),
            "failures": len(failures),
            "mean_effective_tops": mean(record["effective_tops"] for record in records),
            "modes": list(modes),
            "cases": [case.name for case in cases],
            "backend": args.backend,
            "timing": "triton.testing.do_bench; prepacked inputs; preallocated output; quantization excluded",
            "validation": (
                "float32 optimized output versus representation-matched float32 oracle; "
                "rtol=atol=1e-3; max relative-error denominator clamped to 1e-3"
            ),
            "torch_rocm_aotriton_experimental": aotriton_enabled,
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2, sort_keys=True) + "\n")
    print(args.output)
    return 0 if not failures else 1


if __name__ == "__main__":
    raise SystemExit(main())

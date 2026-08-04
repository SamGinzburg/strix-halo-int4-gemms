from __future__ import annotations

import argparse
import json
import math
import statistics
import sys
from dataclasses import asdict
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "gfx1151_qwen36_gated_delta_net.json"
sys.path.insert(0, str(REPO_ROOT / "src"))

from amd_strix_halo_kernels import (  # noqa: E402
    KimiDeltaAttentionConfig,
    QwenGatedDeltaNetShape,
    quantize_kda_int4,
    qwen_gated_delta_net,
    qwen_gated_delta_net_backward,
    reference_qwen_gated_delta_net,
    reference_qwen_gated_delta_net_backward,
)
from amd_strix_halo_kernels.artifacts import installed_triton_commit  # noqa: E402


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Validate and benchmark Qwen3.6 grouped-head Gated DeltaNet on gfx1151."
    )
    parser.add_argument(
        "--mode",
        action="append",
        choices=("bf16", "int4-qk", "int4-v", "int4-all"),
        default=[],
        help="operand representation; repeat to select multiple modes",
    )
    parser.add_argument("--backend", choices=("triton", "gluon"), default="gluon")
    parser.add_argument(
        "--precompiled",
        choices=("auto", "require", "disable"),
        default="auto",
    )
    parser.add_argument("--batch", type=int, default=7)
    parser.add_argument("--sequence", type=int, default=2048)
    parser.add_argument("--query-key-heads", type=int, default=16)
    parser.add_argument("--value-heads", type=int, default=48)
    parser.add_argument("--head-dim", type=int, default=128)
    parser.add_argument("--value-dim", type=int, default=128)
    parser.add_argument("--value-block", type=int, default=64)
    parser.add_argument("--backward-value-block", type=int, default=16)
    parser.add_argument(
        "--checkpoint-interval",
        type=int,
        default=8,
        help="CI=8 is the measured B7/H48 production default and fits the two RDNA 3.5 cache pages",
    )
    parser.add_argument("--num-warps", type=int, default=4)
    parser.add_argument("--num-stages", type=int, default=2)
    parser.add_argument("--warmup-ms", type=int, default=10)
    parser.add_argument("--rep-ms", type=int, default=50)
    parser.add_argument("--skip-backward", action="store_true")
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    return parser


def _shape_from_args(args: argparse.Namespace) -> QwenGatedDeltaNetShape:
    if args.warmup_ms < 0 or args.rep_ms <= 0:
        raise ValueError("--warmup-ms must be non-negative and --rep-ms must be positive")
    return QwenGatedDeltaNetShape(
        batch=args.batch,
        sequence=args.sequence,
        query_key_heads=args.query_key_heads,
        value_heads=args.value_heads,
        head_dim=args.head_dim,
        value_dim=args.value_dim,
    )


def _logical_inputs(torch: Any, shape: QwenGatedDeltaNetShape, *, seed: int) -> tuple[Any, ...]:
    generator = torch.Generator(device="cuda").manual_seed(seed)
    query = torch.randn(
        (shape.batch, shape.sequence, shape.query_key_heads, shape.head_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    key = torch.randn(
        query.shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    value = torch.randn(
        (shape.batch, shape.sequence, shape.value_heads, shape.value_dim),
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    log_decay = -torch.rand(
        (shape.batch, shape.sequence, shape.value_heads),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    ).mul_(0.05)
    beta = torch.rand(
        (shape.batch, shape.sequence, shape.value_heads),
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    )
    return query, key, value, log_decay, beta


def _representation(
    logical: tuple[Any, ...],
    mode: str,
) -> tuple[tuple[Any, ...], dict[str, Any]]:
    query, key, value, log_decay, beta = logical
    kwargs: dict[str, Any] = {}
    if mode in {"int4-qk", "int4-all"}:
        query, query_scale, head_dim = quantize_kda_int4(query)
        key, key_scale, _ = quantize_kda_int4(key)
        kwargs.update(query_scale=query_scale, key_scale=key_scale, head_dim=head_dim)
    if mode in {"int4-v", "int4-all"}:
        value, value_scale, value_dim = quantize_kda_int4(value)
        kwargs.update(value_scale=value_scale, value_dim=value_dim)
    return (query, key, value, log_decay, beta), kwargs


def _expansion_workspaces(
    torch: Any,
    operands: tuple[Any, ...],
    shape: QwenGatedDeltaNetShape,
    *,
    qk_int4: bool,
) -> dict[str, Any]:
    query, key, _, log_decay, _ = operands
    result = {
        "query_workspace": torch.empty(
            (shape.batch, shape.sequence, shape.value_heads, query.shape[-1]),
            device="cuda",
            dtype=query.dtype,
        ),
        "key_workspace": torch.empty(
            (shape.batch, shape.sequence, shape.value_heads, key.shape[-1]),
            device="cuda",
            dtype=key.dtype,
        ),
        "log_decay_workspace": torch.empty(
            (shape.batch, shape.sequence, shape.value_heads, shape.head_dim),
            device="cuda",
            dtype=log_decay.dtype,
        ),
    }
    if qk_int4:
        result["query_scale_workspace"] = torch.empty(
            (shape.batch, shape.sequence, shape.value_heads),
            device="cuda",
            dtype=torch.bfloat16,
        )
        result["key_scale_workspace"] = torch.empty_like(result["query_scale_workspace"])
    return result


def _numerical_gate(torch: Any, mode: str, backend: str) -> dict[str, float]:
    shape = QwenGatedDeltaNetShape(
        batch=1,
        sequence=17,
        query_key_heads=2,
        value_heads=6,
        head_dim=16,
        value_dim=16,
    )
    operands, representation = _representation(
        _logical_inputs(torch, shape, seed=20260811),
        mode,
    )
    config = KimiDeltaAttentionConfig(
        value_block=8,
        backward_value_block=4,
        checkpoint_interval=4,
    )
    output, final_state = qwen_gated_delta_net(
        *operands,
        output_final_state=True,
        output_dtype=torch.float32,
        config=config,
        backend=backend,
        use_precompiled=False,
        **representation,
    )
    reference, reference_final = reference_qwen_gated_delta_net(
        *operands,
        output_dtype=torch.float32,
        **representation,
    )
    grad_output = torch.randn_like(output)
    grad_final = torch.randn_like(final_state)
    gradients = qwen_gated_delta_net_backward(
        *operands,
        grad_output,
        grad_final_state=grad_final,
        config=config,
        backend=backend,
        use_precompiled=False,
        **representation,
    )
    reference_gradients = reference_qwen_gated_delta_net_backward(
        *operands,
        grad_output,
        grad_final_state=grad_final,
        **representation,
    )
    tensors = (output, final_state, *gradients[:-1])
    references = (reference, reference_final, *reference_gradients[:-1])
    max_abs = 0.0
    for candidate, expected in zip(tensors, references, strict=True):
        torch.testing.assert_close(candidate, expected, atol=1.0e-3, rtol=1.0e-3)
        max_abs = max(max_abs, float((candidate - expected).abs().max()))
    return {"max_abs": max_abs, "atol": 1.0e-3, "rtol": 1.0e-3}


def _median_bench(do_bench: Any, function: Any, *, warmup: int, rep: int) -> float:
    samples = do_bench(function, warmup=warmup, rep=rep, return_mode="all")
    return float(statistics.median_low(float(sample) for sample in samples))


def _forward_operations(shape: QwenGatedDeltaNetShape) -> int:
    return (
        7
        * shape.batch
        * shape.sequence
        * shape.value_heads
        * shape.head_dim
        * shape.value_dim
    )


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    shape = _shape_from_args(args)

    import torch
    from triton.testing import do_bench

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("Qwen Gated DeltaNet benchmarks require ROCm")
    modes = tuple(args.mode) if args.mode else ("bf16", "int4-qk", "int4-v", "int4-all")
    use_precompiled = {"auto": None, "require": True, "disable": False}[args.precompiled]
    config = KimiDeltaAttentionConfig(
        value_block=args.value_block,
        backward_value_block=args.backward_value_block,
        checkpoint_interval=args.checkpoint_interval,
        num_warps=args.num_warps,
        num_stages=args.num_stages,
    )
    logical = _logical_inputs(torch, shape, seed=20260811)
    records: list[dict[str, Any]] = []
    failures: list[dict[str, str]] = []
    for mode in modes:
        try:
            numerical = _numerical_gate(torch, mode, args.backend)
            operands, representation = _representation(logical, mode)
            expansion = _expansion_workspaces(
                torch,
                operands,
                shape,
                qk_int4=mode in {"int4-qk", "int4-all"},
            )
            out = torch.empty(
                (shape.batch, shape.sequence, shape.value_heads, shape.value_dim),
                device="cuda",
                dtype=torch.bfloat16,
            )
            runtime_ms = _median_bench(
                do_bench,
                lambda: qwen_gated_delta_net(
                    *operands,
                    out=out,
                    config=config,
                    backend=args.backend,
                    use_precompiled=use_precompiled,
                    **expansion,
                    **representation,
                ),
                warmup=args.warmup_ms,
                rep=args.rep_ms,
            )
            records.append(
                {
                    "mode": mode,
                    "phase": "forward",
                    "shape": asdict(shape),
                    "config": asdict(config),
                    "backend": args.backend,
                    "precompiled": args.precompiled,
                    "runtime_ms": runtime_ms,
                    "effective_tops": _forward_operations(shape) / (runtime_ms * 1.0e9),
                    "numerical_gate": numerical,
                }
            )
            if args.skip_backward:
                continue
            checkpoints = math.ceil(shape.sequence / config.checkpoint_interval) + 1
            state_cache = torch.empty(
                (
                    shape.batch,
                    shape.value_heads,
                    checkpoints,
                    shape.head_dim,
                    shape.value_dim,
                ),
                device="cuda",
                dtype=torch.float32,
            )
            qk_shape = (
                shape.batch,
                shape.sequence,
                shape.value_heads,
                shape.head_dim,
            )
            grad_output = torch.randn_like(out)
            gradient_buffers = {
                "grad_query_expanded": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
                "grad_key_expanded": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
                "grad_log_decay_expanded": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
                "grad_query": torch.empty(
                    (shape.batch, shape.sequence, shape.query_key_heads, shape.head_dim),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_key": torch.empty(
                    (shape.batch, shape.sequence, shape.query_key_heads, shape.head_dim),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_value": torch.empty(
                    (shape.batch, shape.sequence, shape.value_heads, shape.value_dim),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_log_decay": torch.empty(
                    (shape.batch, shape.sequence, shape.value_heads),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_beta": torch.empty(
                    (shape.batch, shape.sequence, shape.value_heads),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_query_normalized": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
                "grad_key_normalized": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
            }
            qwen_gated_delta_net(
                *operands,
                out=out,
                state_cache=state_cache,
                config=config,
                backend=args.backend,
                use_precompiled=use_precompiled,
                **expansion,
                **representation,
            )
            backward_ms = _median_bench(
                do_bench,
                lambda: qwen_gated_delta_net_backward(
                    *operands,
                    grad_output,
                    state_cache=state_cache,
                    config=config,
                    backend=args.backend,
                    use_precompiled=use_precompiled,
                    **expansion,
                    **gradient_buffers,
                    **representation,
                ),
                warmup=args.warmup_ms,
                rep=args.rep_ms,
            )
            records.append(
                {
                    "mode": mode,
                    "phase": "backward",
                    "shape": asdict(shape),
                    "config": asdict(config),
                    "backend": args.backend,
                    "precompiled": args.precompiled,
                    "runtime_ms": backward_ms,
                    "numerical_gate": numerical,
                    "notes": "FP32 logical gradients; checkpoint construction excluded",
                }
            )
        except Exception as exc:
            failures.append({"mode": mode, "error": repr(exc)})

    payload = {
        "schema_version": 1,
        "device": torch.cuda.get_device_name(),
        "torch_version": torch.__version__,
        "hip_version": torch.version.hip,
        "triton_git_revision": installed_triton_commit(),
        "production_model": "Qwen/Qwen3.6-27B",
        "records": records,
        "failures": failures,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

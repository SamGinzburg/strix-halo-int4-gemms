from __future__ import annotations

import argparse
import json
import math
import statistics
import sys
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "gfx1151_kda.json"
sys.path.insert(0, str(REPO_ROOT / "src"))

from amd_strix_halo_kernels import (  # noqa: E402
    KimiDeltaAttentionConfig,
    int4_scaled_dot_product_attention,
    int4_scaled_dot_product_attention_backward,
    kimi_delta_attention,
    kimi_delta_attention_backward,
    quantize_attention_qk_int4,
    quantize_attention_value_int4,
    quantize_kda_int4,
    reference_kimi_delta_attention,
    reference_kimi_delta_attention_backward,
)


@dataclass(frozen=True, slots=True)
class KdaShape:
    batch: int = 4
    sequence: int = 2048
    heads: int = 32
    head_dim: int = 128
    value_dim: int = 128


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Validate and benchmark BF16/INT4 Kimi Delta Attention on gfx1151."
    )
    parser.add_argument(
        "--mode",
        action="append",
        choices=("bf16", "int4-qk", "int4-all"),
        default=[],
        help="operand representation; repeat to select multiple modes",
    )
    parser.add_argument("--batch", type=int, default=4)
    parser.add_argument("--sequence", type=int, default=2048)
    parser.add_argument("--heads", type=int, default=32)
    parser.add_argument("--head-dim", type=int, default=128)
    parser.add_argument("--value-dim", type=int, default=128)
    parser.add_argument(
        "--value-block",
        action="append",
        type=int,
        default=[],
        help="candidate value tile; repeat to tune (default: 2,4,8,16)",
    )
    parser.add_argument("--checkpoint-interval", type=int, default=16)
    parser.add_argument(
        "--backward-value-block",
        type=int,
        default=16,
        help="value tile used for backward (independent of forward tuning)",
    )
    parser.add_argument("--num-warps", type=int, default=4)
    parser.add_argument(
        "--chunked",
        action="store_true",
        help="benchmark the experimental compact-WY chunk path",
    )
    parser.add_argument("--warmup-ms", type=int, default=10)
    parser.add_argument("--rep-ms", type=int, default=50)
    parser.add_argument("--skip-backward", action="store_true")
    parser.add_argument("--skip-sdpa", action="store_true")
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    return parser


def _validate_args(args: argparse.Namespace) -> KdaShape:
    dimensions = {
        "batch": args.batch,
        "sequence": args.sequence,
        "heads": args.heads,
        "head_dim": args.head_dim,
        "value_dim": args.value_dim,
    }
    for name, value in dimensions.items():
        if value <= 0:
            raise ValueError(f"--{name.replace('_', '-')} must be positive")
    if args.warmup_ms < 0 or args.rep_ms <= 0:
        raise ValueError("--warmup-ms must be non-negative and --rep-ms must be positive")
    return KdaShape(**dimensions)


def _logical_operands(torch: Any, shape: KdaShape, *, seed: int) -> tuple[Any, ...]:
    generator = torch.Generator(device="cuda").manual_seed(seed)
    qk_shape = (
        shape.batch,
        shape.sequence,
        shape.heads,
        shape.head_dim,
    )
    value_shape = (
        shape.batch,
        shape.sequence,
        shape.heads,
        shape.value_dim,
    )
    query = torch.randn(
        qk_shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    key = torch.randn(
        qk_shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    value = torch.randn(
        value_shape,
        device="cuda",
        dtype=torch.bfloat16,
        generator=generator,
    )
    # These are already-activated model inputs. A small negative decay keeps
    # the long recurrence numerically representative and bounded.
    log_decay = -torch.rand(
        qk_shape,
        device="cuda",
        dtype=torch.float32,
        generator=generator,
    ).mul_(0.05)
    beta = torch.rand(
        (shape.batch, shape.sequence, shape.heads),
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
    if mode != "bf16":
        query, query_scale, head_dim = quantize_kda_int4(query)
        key, key_scale, _ = quantize_kda_int4(key)
        kwargs.update(
            query_scale=query_scale,
            key_scale=key_scale,
            head_dim=head_dim,
        )
    if mode == "int4-all":
        value, value_scale, value_dim = quantize_kda_int4(value)
        kwargs.update(value_scale=value_scale, value_dim=value_dim)
    return (query, key, value, log_decay, beta), kwargs


def _median_bench(do_bench: Any, function: Any, *, warmup: int, rep: int) -> float:
    samples = do_bench(function, warmup=warmup, rep=rep, return_mode="all")
    # Match torch.median's lower-middle convention for an even sample count.
    return float(statistics.median_low(float(sample) for sample in samples))


def _numerical_gate(torch: Any, mode: str) -> dict[str, float]:
    shape = KdaShape(batch=1, sequence=17, heads=2, head_dim=16, value_dim=16)
    logical = _logical_operands(torch, shape, seed=20260801)
    operands, kwargs = _representation(logical, mode)
    config = KimiDeltaAttentionConfig(value_block=4, checkpoint_interval=4)
    actual, actual_final = kimi_delta_attention(
        *operands,
        output_final_state=True,
        output_dtype=torch.float32,
        config=config,
        **kwargs,
    )
    expected, expected_final = reference_kimi_delta_attention(
        *operands,
        output_dtype=torch.float32,
        **kwargs,
    )
    grad_generator = torch.Generator(device="cuda").manual_seed(17)
    grad_output = torch.randn(
        actual.shape,
        device="cuda",
        dtype=torch.float32,
        generator=grad_generator,
    )
    grad_final_state = torch.randn(
        actual_final.shape,
        device="cuda",
        dtype=torch.float32,
        generator=grad_generator,
    )
    actual_grads = kimi_delta_attention_backward(
        *operands,
        grad_output,
        grad_final_state=grad_final_state,
        config=config,
        **kwargs,
    )
    expected_grads = reference_kimi_delta_attention_backward(
        *operands,
        grad_output,
        grad_final_state=grad_final_state,
        **kwargs,
    )
    tensors = [actual, actual_final, *actual_grads[:-1]]
    references = [expected, expected_final, *expected_grads[:-1]]
    forward_abs = float((actual - expected).abs().max())
    final_abs = float((actual_final - expected_final).abs().max())
    backward_abs = max(
        float((candidate - reference).abs().max())
        for candidate, reference in zip(tensors[2:], references[2:], strict=True)
    )
    for candidate, reference in zip(tensors, references, strict=True):
        torch.testing.assert_close(candidate, reference, atol=1.0e-3, rtol=1.0e-3)
    return {
        "forward_max_abs": forward_abs,
        "final_state_max_abs": final_abs,
        "backward_max_abs": backward_abs,
        "atol": 1.0e-3,
        "rtol": 1.0e-3,
    }


def _kda_operations(shape: KdaShape) -> int:
    # Effective recurrent work: decay (1DV), prediction (2DV), outer update
    # (2DV), and output projection (2DV), excluding scalar/vector overhead.
    return 7 * shape.batch * shape.sequence * shape.heads * shape.head_dim * shape.value_dim


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    shape = _validate_args(args)

    import torch
    from triton.testing import do_bench

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("KDA benchmarks require a ROCm torch CUDA/HIP device")
    modes = tuple(args.mode) if args.mode else ("bf16", "int4-qk", "int4-all")
    value_blocks = tuple(args.value_block) if args.value_block else (2, 4, 8, 16)
    logical = _logical_operands(torch, shape, seed=20260801)
    records: list[dict[str, Any]] = []
    failures: list[dict[str, Any]] = []
    numerical = {mode: _numerical_gate(torch, mode) for mode in modes}

    for mode in modes:
        operands, operand_kwargs = _representation(logical, mode)
        output = torch.empty(
            (shape.batch, shape.sequence, shape.heads, shape.value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        )
        launch_kwargs: dict[str, Any] = {}
        if args.chunked and mode != "int4-all" and args.checkpoint_interval == 16:
            launch_kwargs = {
                "w_workspace": torch.empty(
                    (
                        shape.batch,
                        shape.sequence,
                        shape.heads,
                        shape.head_dim,
                    ),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "u_workspace": torch.empty(
                    (
                        shape.batch,
                        shape.sequence,
                        shape.heads,
                        shape.value_dim,
                    ),
                    device="cuda",
                    dtype=torch.float32,
                ),
            }
        best: tuple[float, KimiDeltaAttentionConfig] | None = None
        for value_block in value_blocks:
            try:
                config = KimiDeltaAttentionConfig(
                    value_block=value_block,
                    checkpoint_interval=args.checkpoint_interval,
                    num_warps=args.num_warps,
                    chunked=args.chunked,
                )
                runtime_ms = _median_bench(
                    do_bench,
                    lambda config=config: kimi_delta_attention(
                        *operands,
                        out=output,
                        config=config,
                        **launch_kwargs,
                        **operand_kwargs,
                    ),
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
            except Exception as exc:
                failures.append(
                    {
                        "mode": mode,
                        "phase": "forward",
                        "value_block": value_block,
                        "error": repr(exc),
                    }
                )
                continue
            records.append(
                {
                    "mode": mode,
                    "phase": "forward",
                    "shape": asdict(shape),
                    "config": asdict(config),
                    "runtime_ms": runtime_ms,
                    "effective_tops": _kda_operations(shape) / (runtime_ms * 1.0e9),
                    "numerical_gate": numerical[mode],
                }
            )
            if best is None or runtime_ms < best[0]:
                best = (runtime_ms, config)
        if best is None or args.skip_backward:
            continue
        _, best_config = best
        backward_config = KimiDeltaAttentionConfig(
            value_block=args.backward_value_block,
            checkpoint_interval=args.checkpoint_interval,
            num_warps=args.num_warps,
        )
        checkpoints = math.ceil(shape.sequence / best_config.checkpoint_interval) + 1
        state_cache = torch.empty(
            (
                shape.batch,
                shape.heads,
                checkpoints,
                shape.head_dim,
                shape.value_dim,
            ),
            device="cuda",
            dtype=torch.float32,
        )
        kimi_delta_attention(
            *operands,
            out=output,
            state_cache=state_cache,
            config=best_config,
            **launch_kwargs,
            **operand_kwargs,
        )
        grad_output = torch.randn_like(output)
        qk_shape = (
            shape.batch,
            shape.sequence,
            shape.heads,
            shape.head_dim,
        )
        value_shape = (
            shape.batch,
            shape.sequence,
            shape.heads,
            shape.value_dim,
        )
        grad_buffers = {
            "grad_query": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
            "grad_key": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
            "grad_value": torch.empty(value_shape, device="cuda", dtype=torch.float32),
            "grad_log_decay": torch.empty(qk_shape, device="cuda", dtype=torch.float32),
            "grad_beta": torch.empty(
                (shape.batch, shape.sequence, shape.heads),
                device="cuda",
                dtype=torch.float32,
            ),
            "grad_query_normalized": torch.empty(
                qk_shape,
                device="cuda",
                dtype=torch.float32,
            ),
            "grad_key_normalized": torch.empty(
                qk_shape,
                device="cuda",
                dtype=torch.float32,
            ),
        }
        try:
            backward_ms = _median_bench(
                do_bench,
                lambda: kimi_delta_attention_backward(
                    *operands,
                    grad_output,
                    state_cache=state_cache,
                    config=backward_config,
                    **grad_buffers,
                    **operand_kwargs,
                ),
                warmup=args.warmup_ms,
                rep=args.rep_ms,
            )
            records.append(
                {
                    "mode": mode,
                    "phase": "backward",
                    "shape": asdict(shape),
                    "config": asdict(backward_config),
                    "runtime_ms": backward_ms,
                    "numerical_gate": numerical[mode],
                    "notes": "FP32 logical gradients; forward checkpoint construction excluded",
                }
            )
        except Exception as exc:
            failures.append(
                {
                    "mode": mode,
                    "phase": "backward",
                    "value_block": backward_config.value_block,
                    "error": repr(exc),
                }
            )

    baselines: list[dict[str, Any]] = []
    if not args.skip_sdpa:
        query, key, value, _, _ = logical
        query_sdpa = query.permute(0, 2, 1, 3).contiguous()
        key_sdpa = key.permute(0, 2, 1, 3).contiguous()
        value_sdpa = value.permute(0, 2, 1, 3).contiguous()
        sdpa = torch.nn.functional.scaled_dot_product_attention
        sdpa_ms = _median_bench(
            do_bench,
            lambda: sdpa(query_sdpa, key_sdpa, value_sdpa, is_causal=True),
            warmup=args.warmup_ms,
            rep=args.rep_ms,
        )
        baselines.append(
            {
                "name": "torch_sdpa_bf16_causal_forward",
                "shape": asdict(shape),
                "runtime_ms": sdpa_ms,
                "notes": "output allocation included",
            }
        )
        attention_out = torch.empty_like(value_sdpa)
        attention_modes: list[tuple[str, Any, Any, Any, dict[str, Any]]] = [
            ("bf16", query_sdpa, key_sdpa, value_sdpa, {}),
        ]
        query_int4, query_scale, attention_head_dim = quantize_attention_qk_int4(
            query_sdpa
        )
        key_int4, key_scale, _ = quantize_attention_qk_int4(key_sdpa)
        attention_modes.append(
            (
                "int4-qk",
                query_int4,
                key_int4,
                value_sdpa,
                {
                    "query_scale": query_scale,
                    "key_scale": key_scale,
                    "head_dim": attention_head_dim,
                },
            )
        )
        value_int4, value_scale = quantize_attention_value_int4(value_sdpa)
        attention_modes.append(
            (
                "int4-all",
                query_int4,
                key_int4,
                value_int4,
                {
                    "query_scale": query_scale,
                    "key_scale": key_scale,
                    "value_scale": value_scale,
                    "head_dim": attention_head_dim,
                },
            )
        )
        for attention_mode, q_arg, k_arg, v_arg, attention_kwargs in attention_modes:
            try:
                package_sdpa_ms = _median_bench(
                    do_bench,
                    lambda: int4_scaled_dot_product_attention(
                        q_arg,
                        k_arg,
                        v_arg,
                        is_causal=True,
                        out=attention_out,
                        use_precompiled=False,
                        **attention_kwargs,
                    ),
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
                baselines.append(
                    {
                        "name": f"package_sdpa_{attention_mode}_causal_forward",
                        "shape": asdict(shape),
                        "runtime_ms": package_sdpa_ms,
                        "notes": "preallocated output; Triton JIT backend",
                    }
                )
            except Exception as exc:
                failures.append(
                    {
                        "mode": attention_mode,
                        "phase": "attention-baseline",
                        "error": repr(exc),
                    }
                )
        if not args.skip_backward:
            attention_output = int4_scaled_dot_product_attention(
                query_sdpa,
                key_sdpa,
                value_sdpa,
                is_causal=True,
                out=attention_out,
                use_precompiled=False,
            )
            attention_grad_output = torch.randn_like(attention_output)
            attention_grad_buffers = {
                "grad_query": torch.empty(
                    query_sdpa.shape,
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_key": torch.empty(
                    key_sdpa.shape,
                    device="cuda",
                    dtype=torch.float32,
                ),
                "grad_value": torch.empty(
                    value_sdpa.shape,
                    device="cuda",
                    dtype=torch.float32,
                ),
                "lse": torch.empty(
                    (shape.batch, shape.heads, shape.sequence),
                    device="cuda",
                    dtype=torch.float32,
                ),
                "delta": torch.empty(
                    (shape.batch, shape.heads, shape.sequence),
                    device="cuda",
                    dtype=torch.float32,
                ),
            }
            try:
                attention_backward_ms = _median_bench(
                    do_bench,
                    lambda: int4_scaled_dot_product_attention_backward(
                        query_sdpa,
                        key_sdpa,
                        value_sdpa,
                        attention_output,
                        attention_grad_output,
                        is_causal=True,
                        use_precompiled=False,
                        **attention_grad_buffers,
                    ),
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
                baselines.append(
                    {
                        "name": "package_sdpa_bf16_causal_backward",
                        "shape": asdict(shape),
                        "runtime_ms": attention_backward_ms,
                        "notes": "FP32 Q/K/V gradients; forward excluded",
                    }
                )
            except Exception as exc:
                failures.append(
                    {
                        "mode": "bf16",
                        "phase": "attention-backward-baseline",
                        "error": repr(exc),
                    }
                )

    payload = {
        "device": torch.cuda.get_device_name(),
        "torch": torch.__version__,
        "hip": torch.version.hip,
        "triton": __import__("triton").__version__,
        "shape": asdict(shape),
        "records": records,
        "baselines": baselines,
        "failures": failures,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2) + "\n")
    print(json.dumps(payload, indent=2), flush=True)
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

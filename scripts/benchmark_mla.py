from __future__ import annotations

import argparse
import json
import statistics
import sys
from dataclasses import asdict
from pathlib import Path
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "gfx1151_mla.json"
sys.path.insert(0, str(REPO_ROOT / "src"))

from amd_strix_halo_kernels import (  # noqa: E402
    Int4AttentionBackwardConfig,
    Int4AttentionConfig,
    MultiHeadLatentAttentionShape,
    multi_head_latent_attention,
    multi_head_latent_attention_backward,
    reference_multi_head_latent_attention,
    reference_multi_head_latent_attention_backward,
)
from amd_strix_halo_kernels.artifacts import installed_triton_commit  # noqa: E402


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Validate and benchmark DeepSeek-style training MLA on gfx1151."
    )
    parser.add_argument("--batch", type=int, default=4)
    parser.add_argument("--query-length", type=int, default=2048)
    parser.add_argument("--key-length", type=int, default=2048)
    parser.add_argument("--heads", type=int, default=128)
    parser.add_argument("--latent-dim", type=int, default=512)
    parser.add_argument("--qk-nope-dim", type=int, default=128)
    parser.add_argument("--qk-rope-dim", type=int, default=64)
    parser.add_argument("--value-dim", type=int, default=128)
    parser.add_argument("--block-m", action="append", type=int, default=[])
    parser.add_argument("--block-n", action="append", type=int, default=[])
    parser.add_argument("--num-warps", type=int, default=4)
    parser.add_argument("--num-stages", type=int, default=2)
    parser.add_argument("--window-left", type=int)
    parser.add_argument("--window-right", type=int, default=0)
    parser.add_argument("--no-causal", action="store_true")
    parser.add_argument("--warmup-ms", type=int, default=10)
    parser.add_argument("--rep-ms", type=int, default=50)
    parser.add_argument("--skip-backward", action="store_true")
    parser.add_argument("--skip-torch", action="store_true")
    parser.add_argument(
        "--precompiled",
        choices=("auto", "require", "disable"),
        default="auto",
        help="native HSACO dispatch policy for the fused attention phase",
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    return parser


def _shape_from_args(args: argparse.Namespace) -> MultiHeadLatentAttentionShape:
    if args.warmup_ms < 0 or args.rep_ms <= 0:
        raise ValueError("--warmup-ms must be non-negative and --rep-ms must be positive")
    if args.window_left is not None and args.window_left < 0:
        raise ValueError("--window-left must be non-negative")
    if args.window_right < 0:
        raise ValueError("--window-right must be non-negative")
    return MultiHeadLatentAttentionShape(
        batch=args.batch,
        query_length=args.query_length,
        key_length=args.key_length,
        heads=args.heads,
        latent_dim=args.latent_dim,
        qk_nope_dim=args.qk_nope_dim,
        qk_rope_dim=args.qk_rope_dim,
        value_dim=args.value_dim,
    )


def _inputs(torch: Any, shape: MultiHeadLatentAttentionShape, *, seed: int) -> tuple[Any, ...]:
    generator = torch.Generator(device="cuda").manual_seed(seed)

    def randn(tensor_shape: tuple[int, ...], scale: float) -> Any:
        return torch.randn(
            tensor_shape,
            device="cuda",
            dtype=torch.bfloat16,
            generator=generator,
        ).mul_(scale)

    return (
        randn(
            (shape.batch, shape.heads, shape.query_length, shape.qk_nope_dim),
            0.2,
        ),
        randn(
            (shape.batch, shape.heads, shape.query_length, shape.qk_rope_dim),
            0.2,
        ),
        randn((shape.batch, shape.key_length, shape.latent_dim), 0.2),
        randn((shape.batch, shape.key_length, shape.qk_rope_dim), 0.2),
        randn((shape.heads, shape.kv_up_dim, shape.latent_dim), 0.02),
    )


def _forward_workspaces(torch: Any, shape: MultiHeadLatentAttentionShape) -> dict[str, Any]:
    return {
        "query_workspace": torch.empty(
            (shape.batch, shape.heads, shape.query_length, shape.qk_head_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "key_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.qk_head_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "value_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.value_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
        "kv_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.kv_up_dim),
            device="cuda",
            dtype=torch.bfloat16,
        ),
    }


def _backward_workspaces(torch: Any, shape: MultiHeadLatentAttentionShape) -> dict[str, Any]:
    return {
        "grad_query_workspace": torch.empty(
            (shape.batch, shape.heads, shape.query_length, shape.qk_head_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_key_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.qk_head_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_value_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.value_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_kv_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.kv_up_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "weight_f32_workspace": torch.empty(
            (shape.heads, shape.kv_up_dim, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "compressed_f32_workspace": torch.empty(
            (shape.batch, shape.key_length, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_latent_by_head_workspace": torch.empty(
            (shape.batch, shape.heads, shape.key_length, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_weight_by_batch_workspace": torch.empty(
            (shape.batch, shape.heads, shape.kv_up_dim, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_query_nope": torch.empty(
            (shape.batch, shape.heads, shape.query_length, shape.qk_nope_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_query_rope": torch.empty(
            (shape.batch, shape.heads, shape.query_length, shape.qk_rope_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_compressed_kv": torch.empty(
            (shape.batch, shape.key_length, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_key_rope": torch.empty(
            (shape.batch, shape.key_length, shape.qk_rope_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "grad_kv_up_weight": torch.empty(
            (shape.heads, shape.kv_up_dim, shape.latent_dim),
            device="cuda",
            dtype=torch.float32,
        ),
        "lse": torch.empty(
            (shape.batch, shape.heads, shape.query_length),
            device="cuda",
            dtype=torch.float32,
        ),
        "delta": torch.empty(
            (shape.batch, shape.heads, shape.query_length),
            device="cuda",
            dtype=torch.float32,
        ),
    }


def _numerical_gate(torch: Any) -> dict[str, float]:
    shape = MultiHeadLatentAttentionShape(
        batch=1,
        query_length=17,
        key_length=19,
        heads=2,
        latent_dim=16,
        qk_nope_dim=8,
        qk_rope_dim=8,
        value_dim=8,
    )
    inputs = _inputs(torch, shape, seed=20260812)
    forward_config = Int4AttentionConfig(block_m=16, block_n=16, num_warps=2)
    backward_config = Int4AttentionBackwardConfig(
        block_m=16,
        block_n=16,
        num_warps=2,
        dkv_block_m=16,
        dkv_block_n=16,
        dkv_num_warps=2,
    )
    output = multi_head_latent_attention(
        *inputs,
        is_causal=True,
        output_dtype=torch.float32,
        config=forward_config,
    )
    reference = reference_multi_head_latent_attention(
        *inputs,
        is_causal=True,
        output_dtype=torch.float32,
    )
    grad_output = torch.randn(output.shape, device="cuda", dtype=torch.bfloat16)
    gradients = multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        is_causal=True,
        config=backward_config,
    )
    reference_gradients = reference_multi_head_latent_attention_backward(
        *inputs,
        output,
        grad_output,
        is_causal=True,
    )
    max_abs = float((output - reference).abs().max())
    torch.testing.assert_close(output, reference, atol=1.0e-3, rtol=1.0e-3)
    for candidate, expected in zip(gradients, reference_gradients, strict=True):
        torch.testing.assert_close(candidate, expected, atol=1.0e-3, rtol=1.0e-3)
        max_abs = max(max_abs, float((candidate - expected).abs().max()))
    return {"max_abs": max_abs, "atol": 1.0e-3, "rtol": 1.0e-3}


def _median_bench(do_bench: Any, function: Any, *, warmup: int, rep: int) -> float:
    samples = do_bench(function, warmup=warmup, rep=rep, return_mode="all")
    return float(statistics.median_low(float(sample) for sample in samples))


def _forward_operations(shape: MultiHeadLatentAttentionShape) -> int:
    projection = (
        2
        * shape.batch
        * shape.heads
        * shape.key_length
        * shape.latent_dim
        * shape.kv_up_dim
    )
    attention = (
        2
        * shape.batch
        * shape.heads
        * shape.query_length
        * shape.key_length
        * (shape.qk_head_dim + shape.value_dim)
    )
    return projection + attention


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    shape = _shape_from_args(args)

    import torch
    from triton.testing import do_bench

    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("MLA benchmarks require ROCm")
    inputs = _inputs(torch, shape, seed=20260812)
    forward_workspaces = _forward_workspaces(torch, shape)
    output = torch.empty(
        (shape.batch, shape.heads, shape.query_length, shape.value_dim),
        device="cuda",
        dtype=torch.bfloat16,
    )
    window = (
        None
        if args.window_left is None
        else (args.window_left, args.window_right)
    )
    semantics = {"is_causal": not args.no_causal, "window_size": window}
    use_precompiled = {
        "auto": None,
        "require": True,
        "disable": False,
    }[args.precompiled]
    numerical = _numerical_gate(torch)
    block_ms = tuple(args.block_m) if args.block_m else (32, 64)
    block_ns = tuple(args.block_n) if args.block_n else (32, 64)
    records: list[dict[str, Any]] = []
    failures: list[dict[str, str]] = []
    best: tuple[float, Int4AttentionConfig] | None = None
    for block_m in block_ms:
        for block_n in block_ns:
            try:
                config = Int4AttentionConfig(
                    block_m=block_m,
                    block_n=block_n,
                    num_warps=args.num_warps,
                    num_stages=args.num_stages,
                )
                runtime_ms = _median_bench(
                    do_bench,
                    lambda config=config: multi_head_latent_attention(
                        *inputs,
                        out=output,
                        config=config,
                        use_precompiled=use_precompiled,
                        **semantics,
                        **forward_workspaces,
                    ),
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
                records.append(
                    {
                        "name": "package_mla_forward",
                        "shape": asdict(shape),
                        "config": asdict(config),
                        "semantics": semantics,
                        "precompiled": args.precompiled,
                        "runtime_ms": runtime_ms,
                        "effective_tops": _forward_operations(shape) / (runtime_ms * 1.0e9),
                        "numerical_gate": numerical,
                    }
                )
                if best is None or runtime_ms < best[0]:
                    best = runtime_ms, config
            except Exception as exc:
                failures.append(
                    {"phase": "forward", "config": f"{block_m}x{block_n}", "error": repr(exc)}
                )
    if best is not None and not args.skip_backward:
        _, best_forward = best
        backward_config = Int4AttentionBackwardConfig(
            block_m=min(best_forward.block_m, 32),
            block_n=min(best_forward.block_n, 32),
            num_warps=min(best_forward.num_warps, 4),
            dkv_block_m=32,
            dkv_block_n=16,
            dkv_num_warps=2,
        )
        backward_workspaces = _backward_workspaces(torch, shape)
        grad_output = torch.randn_like(output)
        multi_head_latent_attention(
            *inputs,
            out=output,
            config=best_forward,
            use_precompiled=use_precompiled,
            **semantics,
            **forward_workspaces,
        )
        try:
            backward_ms = _median_bench(
                do_bench,
                lambda: multi_head_latent_attention_backward(
                    *inputs,
                    output,
                    grad_output,
                    config=backward_config,
                    use_precompiled=use_precompiled,
                    **semantics,
                    **forward_workspaces,
                    **backward_workspaces,
                ),
                warmup=args.warmup_ms,
                rep=args.rep_ms,
            )
            records.append(
                {
                    "name": "package_mla_backward",
                    "shape": asdict(shape),
                    "config": asdict(backward_config),
                    "semantics": semantics,
                    "precompiled": args.precompiled,
                    "runtime_ms": backward_ms,
                    "numerical_gate": numerical,
                    "notes": "FP32 logical gradients; forward excluded",
                }
            )
        except Exception as exc:
            failures.append({"phase": "backward", "error": repr(exc)})

    baselines: list[dict[str, Any]] = []
    if not args.skip_torch:
        query, key, value = (
            forward_workspaces["query_workspace"],
            forward_workspaces["key_workspace"],
            forward_workspaces["value_workspace"],
        )
        # Materialize once so this isolates the attention portion. Local
        # attention intentionally has no equivalent built-in torch mask here.
        multi_head_latent_attention(
            *inputs,
            out=output,
            config=best[1] if best is not None else Int4AttentionConfig(),
            use_precompiled=use_precompiled,
            **semantics,
            **forward_workspaces,
        )
        torch_kwargs: dict[str, Any] = {"is_causal": not args.no_causal}
        if window is None:
            try:
                torch_ms = _median_bench(
                    do_bench,
                    lambda: torch.nn.functional.scaled_dot_product_attention(
                        query,
                        key,
                        value,
                        **torch_kwargs,
                    ),
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
                baselines.append(
                    {
                        "name": "torch_sdpa_bf16_attention_only",
                        "shape": asdict(shape),
                        "runtime_ms": torch_ms,
                        "notes": "latent up-projection excluded; output allocation included",
                    }
                )

                query_nope, query_rope, compressed_kv, key_rope, kv_up_weight = inputs
                kv_workspace = forward_workspaces["kv_workspace"]
                qk_nope_dim = shape.qk_nope_dim

                def torch_composed_mla() -> Any:
                    torch.matmul(
                        compressed_kv[:, None],
                        kv_up_weight[None].transpose(-1, -2),
                        out=kv_workspace,
                    )
                    query[..., :qk_nope_dim].copy_(query_nope)
                    query[..., qk_nope_dim:].copy_(query_rope)
                    key[..., :qk_nope_dim].copy_(kv_workspace[..., :qk_nope_dim])
                    key[..., qk_nope_dim:].copy_(key_rope[:, None])
                    value.copy_(kv_workspace[..., qk_nope_dim:])
                    return torch.nn.functional.scaled_dot_product_attention(
                        query,
                        key,
                        value,
                        **torch_kwargs,
                    )

                torch_e2e_ms = _median_bench(
                    do_bench,
                    torch_composed_mla,
                    warmup=args.warmup_ms,
                    rep=args.rep_ms,
                )
                baselines.append(
                    {
                        "name": "torch_bf16_mla_composition",
                        "shape": asdict(shape),
                        "runtime_ms": torch_e2e_ms,
                        "notes": (
                            "same BF16 latent up-projection and operand materialization; "
                            "PyTorch SDPA output allocation included"
                        ),
                    }
                )
            except Exception as exc:
                failures.append({"phase": "torch-baseline", "error": repr(exc)})

    payload = {
        "schema_version": 1,
        "device": torch.cuda.get_device_name(),
        "torch_version": torch.__version__,
        "hip_version": torch.version.hip,
        "triton_git_revision": installed_triton_commit(),
        "production_profile": "DeepSeek-V3/R1 MLA dimensions",
        "records": records,
        "baselines": baselines,
        "failures": failures,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(json.dumps(payload, indent=2, sort_keys=True))
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

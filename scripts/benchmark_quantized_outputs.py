from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
from typing import Any, Callable

import torch

from amd_strix_halo_kernels import (
    Epilogue,
    OperandDType,
    OutputDType,
    RaggedDotConfig,
    ScaleMode,
    ScaleSpec,
    fused_swiglu_up_gate,
    mm,
    prepare_ragged_group_info,
    quantize_int4_output,
    ragged_dot_int4,
)
from amd_strix_halo_kernels import native


SC256 = ScaleSpec(ScaleMode.SUBCHANNEL, 256)


def _benchmark(call: Callable[[], Any], *, warmup: int, iterations: int) -> float:
    for _ in range(warmup):
        call()
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(iterations):
        call()
    end.record()
    end.synchronize()
    return float(start.elapsed_time(end)) / iterations


def _quality(actual: Any, reference: Any) -> dict[str, float]:
    actual_f32 = actual.float()
    reference_f32 = reference.float()
    error = actual_f32 - reference_f32
    reference_norm = torch.linalg.vector_norm(reference_f32).clamp_min(1.0e-12)
    return {
        "relative_l2": float(torch.linalg.vector_norm(error) / reference_norm),
        "cosine": float(torch.nn.functional.cosine_similarity(
            actual_f32.flatten(), reference_f32.flatten(), dim=0
        )),
        "max_abs": float(error.abs().max()),
    }


def _scales(rows: int, cols: int, contraction: int) -> tuple[Any, Any]:
    scale_cols = (contraction + 255) // 256
    a_scale = torch.full((rows, scale_cols), 0.01, device="cuda", dtype=torch.bfloat16)
    b_scale = torch.full((scale_cols, cols), 0.01, device="cuda", dtype=torch.bfloat16)
    return a_scale, b_scale


def _dense_case(rows: int, width: int, contraction: int, *, warmup: int, iterations: int) -> dict[str, Any]:
    lhs = torch.randint(0, 256, (rows, contraction // 2), device="cuda", dtype=torch.uint8)
    up_gate = torch.randint(0, 256, (contraction // 2, width * 2), device="cuda", dtype=torch.uint8)
    down_weight = torch.randint(0, 256, (width // 2, width), device="cuda", dtype=torch.uint8)
    a_scale, up_gate_scale = _scales(rows, width * 2, contraction)
    down_scale = torch.full((width // 256, width), 0.01, device="cuda", dtype=torch.bfloat16)
    bf16_activation = torch.empty((rows, width), device="cuda", dtype=torch.bfloat16)
    packed_activation = torch.empty((rows, width // 2), device="cuda", dtype=torch.uint8)
    activation_scale = torch.empty((rows, width // 256), device="cuda", dtype=torch.bfloat16)
    down_out = torch.empty((rows, width), device="cuda", dtype=torch.bfloat16)

    def bf16_producer() -> Any:
        return fused_swiglu_up_gate(
            lhs,
            up_gate,
            a_scale=a_scale,
            b_scale=up_gate_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            out=bf16_activation,
        )

    def fused_producer() -> Any:
        return fused_swiglu_up_gate(
            lhs,
            up_gate,
            a_scale=a_scale,
            b_scale=up_gate_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            output_dtype=OutputDType.INT4,
            out=packed_activation,
            out_scale=activation_scale,
        )

    def baseline_chain() -> Any:
        activation = quantize_int4_output(bf16_producer(), SC256)
        return mm(
            activation.packed,
            down_weight,
            a_scale=activation.scale,
            b_scale=down_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            out=down_out,
        )

    def fused_chain() -> Any:
        activation = fused_producer()
        return mm(
            activation.packed,
            down_weight,
            a_scale=activation.scale,
            b_scale=down_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            out=down_out,
        )

    bf16_ms = _benchmark(bf16_producer, warmup=warmup, iterations=iterations)
    fused_ms = _benchmark(fused_producer, warmup=warmup, iterations=iterations)
    baseline_chain_ms = _benchmark(baseline_chain, warmup=warmup, iterations=iterations)
    fused_chain_ms = _benchmark(fused_chain, warmup=warmup, iterations=iterations)
    bf16_reference = bf16_producer().clone()
    quantized = fused_producer()
    torch.cuda.synchronize()
    return {
        "bf16_producer_ms": bf16_ms,
        "fused_int4_producer_ms": fused_ms,
        "baseline_bf16_quant_down_ms": baseline_chain_ms,
        "fused_int4_down_ms": fused_chain_ms,
        "chain_speedup": baseline_chain_ms / fused_chain_ms,
        "activation_quality_vs_bf16": _quality(quantized.dequantize(), bf16_reference),
    }


def _ragged_case(
    rows: int,
    width: int,
    contraction: int,
    groups: int,
    *,
    warmup: int,
    iterations: int,
    native_root: Path,
) -> dict[str, Any]:
    config = RaggedDotConfig()
    lhs = torch.randint(0, 256, (rows, contraction // 2), device="cuda", dtype=torch.uint8)
    rhs = torch.randint(
        0,
        256,
        (groups, contraction // 2, width * 2),
        device="cuda",
        dtype=torch.uint8,
    )
    group_sizes = torch.full((groups,), rows // groups, device="cuda", dtype=torch.int32)
    group_sizes[-1] += rows - int(group_sizes.sum().item())
    group_info = prepare_ragged_group_info(
        group_sizes,
        tile=config.block_m,
        rows=rows,
        align_tile=config.align_tile,
    )
    a_scale = torch.full((rows, contraction // 256), 0.01, device="cuda", dtype=torch.bfloat16)
    b_scale = torch.full(
        (groups, contraction // 256, width * 2),
        0.01,
        device="cuda",
        dtype=torch.bfloat16,
    )
    bf16_up_gate = torch.empty((rows, width * 2), device="cuda", dtype=torch.bfloat16)
    packed_activation = torch.empty((rows, width // 2), device="cuda", dtype=torch.uint8)
    activation_scale = torch.empty((rows, width // 256), device="cuda", dtype=torch.bfloat16)
    down_weight = torch.randint(0, 256, (width // 2, width), device="cuda", dtype=torch.uint8)
    down_scale = torch.full((width // 256, width), 0.01, device="cuda", dtype=torch.bfloat16)
    down_out = torch.empty((rows, width), device="cuda", dtype=torch.bfloat16)

    native_kwargs = {
        "use_native": True,
        "native_root": str(native_root),
        "native_library_path": str(native_root / native.NATIVE_LIBRARY_NAME),
    }

    def baseline() -> Any:
        up_gate = ragged_dot_int4(
            lhs,
            rhs,
            None,
            group_info=group_info,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=SC256,
            config=config,
            out=bf16_up_gate,
            **native_kwargs,
        )
        up, gate = up_gate.chunk(2, dim=-1)
        return quantize_int4_output(up * torch.nn.functional.silu(gate), SC256)

    def fused() -> Any:
        return ragged_dot_int4(
            lhs,
            rhs,
            None,
            group_info=group_info,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=SC256,
            config=config,
            epilogue=Epilogue.SWIGLU,
            output_dtype=OutputDType.INT4,
            out=packed_activation,
            out_scale=activation_scale,
            **native_kwargs,
        )

    def baseline_chain() -> Any:
        activation = baseline()
        return mm(
            activation.packed,
            down_weight,
            a_scale=activation.scale,
            b_scale=down_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            out=down_out,
        )

    def fused_chain() -> Any:
        activation = fused()
        return mm(
            activation.packed,
            down_weight,
            a_scale=activation.scale,
            b_scale=down_scale,
            dtype=OperandDType.INT4,
            scale=SC256,
            out=down_out,
        )

    baseline_ms = _benchmark(baseline, warmup=warmup, iterations=iterations)
    fused_ms = _benchmark(fused, warmup=warmup, iterations=iterations)
    baseline_chain_ms = _benchmark(baseline_chain, warmup=warmup, iterations=iterations)
    fused_chain_ms = _benchmark(fused_chain, warmup=warmup, iterations=iterations)
    reference = baseline().dequantize()
    actual = fused().dequantize()
    torch.cuda.synchronize()
    return {
        "baseline_bf16_epilogue_quant_ms": baseline_ms,
        "fused_int4_producer_ms": fused_ms,
        "producer_speedup": baseline_ms / fused_ms,
        "baseline_bf16_quant_down_ms": baseline_chain_ms,
        "fused_int4_down_ms": fused_chain_ms,
        "chain_speedup": baseline_chain_ms / fused_chain_ms,
        "activation_quality_vs_baseline_quant": _quality(actual, reference),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description="Benchmark fused INT4 activation outputs for down projection.")
    parser.add_argument("--rows", type=int, default=14_336)
    parser.add_argument("--width", type=int, default=1_024)
    parser.add_argument("--contraction", type=int, default=1_024)
    parser.add_argument("--groups", type=int, default=8)
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--iterations", type=int, default=50)
    parser.add_argument("--native-root", type=Path, default=None)
    args = parser.parse_args()
    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("benchmark_quantized_outputs.py requires ROCm torch")
    if args.native_root is None:
        configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
        if not configured:
            raise ValueError("pass --native-root or set AMD_STRIX_HALO_NATIVE_ROOT")
        args.native_root = Path(configured)
    native.package_root = lambda: args.native_root
    torch.manual_seed(907)
    results = {
        "shape": {
            "rows": args.rows,
            "width": args.width,
            "contraction": args.contraction,
            "groups": args.groups,
        },
        "input_dtype": "packed signed INT4 with BF16 sc256 scales",
        "output_contract": "packed signed INT4 + BF16 sc256 scales",
        "dense_swiglu_down": _dense_case(
            args.rows,
            args.width,
            args.contraction,
            warmup=args.warmup,
            iterations=args.iterations,
        ),
        "ragged_swiglu": _ragged_case(
            args.rows,
            args.width,
            args.contraction,
            args.groups,
            warmup=args.warmup,
            iterations=args.iterations,
            native_root=args.native_root,
        ),
    }
    print(json.dumps(results, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

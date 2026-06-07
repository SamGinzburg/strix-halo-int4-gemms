from __future__ import annotations

import argparse
import hashlib
import sys
import tempfile
import zipfile
from pathlib import Path
from statistics import mean
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "benchmarks" / "gfx1151_generated.json"


def latest_wheel() -> Path | None:
    wheels = sorted((REPO_ROOT / "dist").glob("amd_strix_halo_kernels-*.whl"))
    return wheels[-1] if wheels else None


def parse_shape(value: str) -> tuple[int, int, int]:
    parts = value.split(",")
    if len(parts) != 3:
        raise argparse.ArgumentTypeError("--shape must use M,N,K")
    try:
        m, n, k = (int(part) for part in parts)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("--shape values must be integers") from exc
    if m <= 0 or n <= 0 or k <= 0:
        raise argparse.ArgumentTypeError("--shape values must be positive")
    return m, n, k


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Benchmark and correctness-check packaged generated AMDGCN GEMM kernels."
    )
    parser.add_argument(
        "--wheel",
        type=Path,
        default=None,
        help="wheel to extract and benchmark (default: newest dist/amd_strix_halo_kernels-*.whl when present)",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=DEFAULT_OUTPUT,
        help=f"BenchmarkDatabase JSON output path (default: {DEFAULT_OUTPUT})",
    )
    parser.add_argument("--kernel-id", action="append", default=[], help="benchmark only the selected kernel id")
    parser.add_argument(
        "--shape",
        type=parse_shape,
        default=None,
        metavar="M,N,K",
        help=(
            "runtime logical shape to benchmark for every selected kernel "
            "(default: each kernel's representative generation shape)"
        ),
    )
    parser.add_argument("--dtype", action="append", default=[], choices=("int4", "int8"), help="benchmark only dtype")
    parser.add_argument(
        "--layout",
        action="append",
        default=[],
        choices=("nn", "nt", "tn"),
        help="benchmark only logical GEMM layout",
    )
    parser.add_argument(
        "--epilogue",
        action="append",
        default=[],
        choices=("none", "relu2", "swiglu"),
        help="benchmark only epilogue",
    )
    parser.add_argument(
        "--schedule",
        action="append",
        default=[],
        choices=("standard", "persistent"),
        help="benchmark only kernel schedule",
    )
    parser.add_argument(
        "--warmup-ms",
        "--warmup",
        type=int,
        dest="warmup_ms",
        default=25,
        help="Triton do_bench warmup duration in milliseconds (default: 25)",
    )
    parser.add_argument(
        "--rep-ms",
        "--iterations",
        type=int,
        dest="rep_ms",
        default=100,
        help="Triton do_bench measurement duration in milliseconds (default: 100)",
    )
    return parser


def stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def add_import_path(wheel: Path | None) -> tempfile.TemporaryDirectory[str] | None:
    if wheel is None:
        sys.path.insert(0, str(REPO_ROOT / "src"))
        return None
    if not wheel.exists():
        raise FileNotFoundError(f"wheel does not exist: {wheel}")
    extracted = tempfile.TemporaryDirectory(prefix="ashk_bench_wheel_")
    zipfile.ZipFile(wheel).extractall(extracted.name)
    sys.path.insert(0, extracted.name)
    return extracted


def scale_tensors(torch: Any, kernel: Any, shape: Any) -> tuple[Any, Any]:
    from amd_strix_halo_kernels.metadata import ScaleMode

    b_cols = shape.n * 2 if kernel.epilogue.value == "swiglu" else shape.n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, shape.m, dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, b_cols, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = kernel.scale.subchannel_size or 1
    scale_cols = (shape.k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.80, 1.20, shape.m * scale_cols, dtype=torch.bfloat16).reshape(shape.m, scale_cols)
    b_scale = torch.linspace(1.15, 0.85, b_cols * scale_cols, dtype=torch.bfloat16).reshape(scale_cols, b_cols)
    return a_scale, b_scale


def make_inputs(torch: Any, kernel: Any, shape: Any) -> tuple[Any, Any, Any, Any, Any | None, Any]:
    from amd_strix_halo_kernels.api import explicit_mm
    from amd_strix_halo_kernels.metadata import Epilogue, GemmLayout, OperandDType
    from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major

    torch.manual_seed(stable_seed(kernel.kernel_id))
    bits = 4 if kernel.a_dtype is OperandDType.INT4 else 8
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    a_bf16 = torch.randn((shape.m, shape.k), dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((shape.k, b_cols), dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=bits, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=bits, scale=0.1)
    a_trans = kernel.layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = kernel.layout in {GemmLayout.NT, GemmLayout.TT}
    a_arg = a_q
    b_arg = b_q
    if kernel.a_dtype is OperandDType.INT4:
        a_arg = (
            pack_int4_k_major(a_q).transpose(0, 1).contiguous()
            if a_trans
            else pack_int4_k_major(a_q)
        )
        b_arg = (
            pack_int4_k_major(b_q.transpose(0, 1))
            if b_trans
            else pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
        )
    else:
        a_arg = a_q.transpose(0, 1).contiguous() if a_trans else a_q
        b_arg = b_q.transpose(0, 1).contiguous() if b_trans else b_q
    a_scale, b_scale = scale_tensors(torch, kernel, shape)
    expected = explicit_mm(
        a_arg,
        b_arg,
        kernel=kernel,
        a_scale=a_scale,
        b_scale=b_scale,
        use_reference=True,
    )
    return a_arg, b_arg, a_scale, b_scale, None, expected


def max_diffs(torch: Any, actual: Any, expected: Any) -> tuple[float, float]:
    diff = (actual.to(torch.float32) - expected.to(torch.float32)).abs()
    max_abs = float(diff.max().item())
    max_rel = float((diff / torch.clamp(expected.to(torch.float32).abs(), min=1.0e-3)).max().item())
    return max_abs, max_rel


def output_torch_dtype(torch: Any, kernel: Any) -> Any:
    return torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32


def validation_tolerances(kernel: Any) -> tuple[float, float]:
    from amd_strix_halo_kernels.metadata import Epilogue

    if kernel.output_dtype == "bfloat16":
        return 8.0e-3, 1.0e-2
    atol = 1.0e-2 if kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} else 1.0e-3
    return 1.0e-4, atol


def benchmark_kernel(
    torch: Any,
    kernel: Any,
    *,
    warmup_ms: int,
    rep_ms: int,
    shape_override: Any | None = None,
) -> Any:
    from amd_strix_halo_kernels.benchmarking import BenchmarkRecord, BenchmarkShape, benchmark_triton_callable
    from amd_strix_halo_kernels.metadata import Epilogue
    from amd_strix_halo_kernels.native import launch_generated_kernel
    from amd_strix_halo_kernels.template_config import representative_generation_shape

    representative_shape = representative_generation_shape(kernel)
    shape = shape_override or representative_shape
    benchmark_shape = BenchmarkShape(shape.m, shape.n, shape.k)
    a, b, a_scale, b_scale, gate, expected = make_inputs(torch, kernel, shape)
    a_gpu = a.to("cuda")
    b_gpu = b.to("cuda")
    a_scale_gpu = a_scale.to("cuda")
    b_scale_gpu = b_scale.to("cuda")
    gate_gpu = None if gate is None else gate.to("cuda")
    c_gpu = torch.empty((shape.m, shape.n), device="cuda", dtype=output_torch_dtype(torch, kernel))

    def run() -> Any:
        return launch_generated_kernel(
            a_gpu,
            b_gpu,
            kernel=kernel,
            a_scale=a_scale_gpu,
            b_scale=b_scale_gpu,
            gate=gate_gpu,
            c=c_gpu,
        )

    actual = run()
    torch.cuda.synchronize()
    actual_cpu = actual.cpu()
    rtol, atol = validation_tolerances(kernel)
    torch.testing.assert_close(actual_cpu, expected, rtol=rtol, atol=atol)
    max_abs, max_rel = max_diffs(torch, actual_cpu, expected)

    record = benchmark_triton_callable(
        kernel=kernel,
        shape=benchmark_shape,
        fn=run,
        warmup_ms=warmup_ms,
        rep_ms=rep_ms,
        notes=(
            "packaged generated HSACO; preallocated output; median of triton.testing.do_bench "
            "device samples; correctness vs BF16 fake-quant reference"
        ),
        metadata={
            "arch": kernel.arch,
            "dtype": kernel.a_dtype.value,
            "layout": kernel.layout.value,
            "scale": kernel.scale.label,
            "epilogue": kernel.epilogue.value,
            "schedule": kernel.schedule.value,
            "output_dtype": kernel.output_dtype,
            "tile": kernel.tile.label,
            "even_k": kernel.tile.even_k,
            "split_k": kernel.tile.split_k,
            "torch_version": str(torch.__version__),
            "torch_hip": str(torch.version.hip),
            "device": torch.cuda.get_device_name(),
            "input_distribution": "randn_bf16_fake_quant_scale_0.1",
            "representative_generation_shape": {
                "m": representative_shape.m,
                "n": representative_shape.n,
                "k": representative_shape.k,
            },
            "runtime_shape_override": shape_override is not None,
        },
    )
    tops_multiplier = 2.0 if kernel.epilogue is Epilogue.SWIGLU else 1.0
    return BenchmarkRecord(
        kernel_id=kernel.kernel_id,
        shape=record.shape,
        runtime_ms=record.runtime_ms,
        tops=record.tops * tops_multiplier,
        iterations=record.iterations,
        warmup=record.warmup,
        max_abs_diff=max_abs,
        max_rel_diff=max_rel,
        notes=record.notes,
        metadata=record.metadata,
    )


def print_summary(records: list[Any]) -> None:
    grouped: dict[tuple[str, str, str, str, str, bool], list[Any]] = {}
    for record in records:
        metadata = record.metadata
        key = (
            metadata["dtype"],
            metadata["layout"],
            metadata["scale"],
            metadata["epilogue"],
            metadata["schedule"],
            bool(metadata["even_k"]),
        )
        grouped.setdefault(key, []).append(record)
    print("dtype layout scale epilogue schedule even_k count mean_tops max_tops max_abs_diff")
    for key in sorted(grouped):
        rows = grouped[key]
        print(
            key[0],
            key[1],
            key[2],
            key[3],
            key[4],
            str(key[5]).lower(),
            len(rows),
            f"{mean(row.tops for row in rows):.3f}",
            f"{max(row.tops for row in rows):.3f}",
            f"{max(row.max_abs_diff or 0.0 for row in rows):.6g}",
        )


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    if args.warmup_ms < 0:
        raise ValueError("--warmup-ms must be non-negative")
    if args.rep_ms <= 0:
        raise ValueError("--rep-ms must be positive")

    wheel = args.wheel if args.wheel is not None else latest_wheel()
    extracted = add_import_path(wheel)
    try:
        import torch
        from amd_strix_halo_kernels.benchmarking import BenchmarkDatabase, BenchmarkShape
        from amd_strix_halo_kernels.native import dispatch_runtime_status
        from amd_strix_halo_kernels.registry import default_registry

        if not torch.cuda.is_available() or torch.version.hip is None:
            raise RuntimeError("benchmarks require a ROCm torch CUDA/HIP device")
        status = dispatch_runtime_status()
        if not status.has_linked_kernels:
            raise RuntimeError("native dispatch library does not report linked generated kernels")

        selected = list(default_registry.all())
        if args.kernel_id:
            requested = set(args.kernel_id)
            selected = [kernel for kernel in selected if kernel.kernel_id in requested]
            missing = requested.difference(kernel.kernel_id for kernel in selected)
            if missing:
                raise LookupError(f"unknown kernel ids: {sorted(missing)}")
        if args.dtype:
            requested_dtypes = set(args.dtype)
            selected = [kernel for kernel in selected if kernel.a_dtype.value in requested_dtypes]
        if args.layout:
            requested_layouts = set(args.layout)
            selected = [kernel for kernel in selected if kernel.layout.value in requested_layouts]
        if args.epilogue:
            requested_epilogues = set(args.epilogue)
            selected = [kernel for kernel in selected if kernel.epilogue.value in requested_epilogues]
        if args.schedule:
            requested_schedules = set(args.schedule)
            selected = [kernel for kernel in selected if kernel.schedule.value in requested_schedules]
        if not selected:
            raise LookupError("no kernels selected for benchmark")

        shape_override = BenchmarkShape(*args.shape) if args.shape is not None else None
        records = []
        for index, kernel in enumerate(selected, start=1):
            try:
                records.append(
                    benchmark_kernel(
                        torch,
                        kernel,
                        warmup_ms=args.warmup_ms,
                        rep_ms=args.rep_ms,
                        shape_override=shape_override,
                    )
                )
            except Exception as exc:
                raise RuntimeError(f"benchmark failed for [{index}/{len(selected)}] {kernel.kernel_id}") from exc
        BenchmarkDatabase(records).save(args.output)
        print(args.output)
        print_summary(records)
        return 0
    finally:
        if extracted is not None:
            extracted.cleanup()


if __name__ == "__main__":
    raise SystemExit(main())

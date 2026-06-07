from __future__ import annotations

import argparse
import json
import sys
from dataclasses import replace
from pathlib import Path
from statistics import mean
from typing import Any


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_ARTIFACT_DIR = REPO_ROOT / "kernels" / "triton" / "tuned"


def add_local_paths() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    sys.path.insert(0, str(REPO_ROOT / "scripts"))


add_local_paths()

from amd_strix_halo_kernels.artifacts import display_path, write_triton_text_artifacts
from amd_strix_halo_kernels.benchmarking import BenchmarkShape, summarize_runtime_samples, tops_for_runtime
from amd_strix_halo_kernels.metadata import (
    ACC_DTYPE,
    ARCH,
    Epilogue,
    KernelMetadata,
    OperandDType,
    SCALE_DTYPE_BF16,
    ScaleMode,
    ScaleSpec,
    TileConfig,
    make_kernel_id,
    output_dtype_for_split_k,
)
from amd_strix_halo_kernels.template_config import LaunchShape


torch: Any = None
triton: Any = None
fake_quant_int: Any = None
pack_int4_k_major: Any = None
seed_tile_configs: Any = None
_int4_scaled_gemm: Any = None
_int8_scaled_gemm: Any = None
compile_kernel: Any = None


def load_runtime() -> None:
    global torch, triton, fake_quant_int, pack_int4_k_major, seed_tile_configs, _int4_scaled_gemm, _int8_scaled_gemm, compile_kernel
    if torch is not None:
        return
    import torch as torch_module
    import triton as triton_module
    from amd_strix_halo_kernels.quant import fake_quant_int as fake_quant_int_fn
    from amd_strix_halo_kernels.quant import pack_int4_k_major as pack_int4_k_major_fn
    from amd_strix_halo_kernels.registry import seed_tile_configs as seed_tile_configs_fn
    from generate_amdgcn import _int4_scaled_gemm as int4_kernel
    from generate_amdgcn import _int8_scaled_gemm as int8_kernel
    from generate_amdgcn import compile_kernel as compile_kernel_fn

    torch = torch_module
    triton = triton_module
    fake_quant_int = fake_quant_int_fn
    pack_int4_k_major = pack_int4_k_major_fn
    seed_tile_configs = seed_tile_configs_fn
    _int4_scaled_gemm = int4_kernel
    _int8_scaled_gemm = int8_kernel
    compile_kernel = compile_kernel_fn


def parse_shape(value: str) -> BenchmarkShape:
    parts = value.replace("x", ",").split(",")
    if len(parts) != 3:
        raise argparse.ArgumentTypeError("shape must be M,N,K")
    return BenchmarkShape(*(int(part) for part in parts))


def parse_dtype(value: str) -> OperandDType:
    try:
        return OperandDType(value)
    except ValueError as exc:
        raise argparse.ArgumentTypeError(f"dtype must be one of {[dtype.value for dtype in OperandDType]}") from exc


def parse_scale(value: str) -> ScaleSpec:
    if value == "pc":
        return ScaleSpec(ScaleMode.PER_CHANNEL)
    if value.startswith("sc"):
        return ScaleSpec(ScaleMode.SUBCHANNEL, int(value[2:]))
    raise argparse.ArgumentTypeError("scale must be pc or sc<size>")


def parse_tile(value: str) -> TileConfig:
    parts = value.split(",")
    if len(parts) not in {7, 8}:
        raise argparse.ArgumentTypeError("tile must be BM,BN,BK,GM,WARPS,STAGES,WAVES_PER_EU[,SPLIT_K]")
    try:
        block_m, block_n, block_k, group_m, warps, stages, waves, *split = (int(part) for part in parts)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("tile must be BM,BN,BK,GM,WARPS,STAGES,WAVES_PER_EU[,SPLIT_K]") from exc
    split_k = split[0] if split else 1
    if split_k != 1:
        raise argparse.ArgumentTypeError("ReLU^2 tuning only supports SPLIT_K=1")
    return TileConfig(block_m, block_n, block_k, group_m, warps, stages, waves, even_k=True, split_k=split_k)


def default_tiles(dtype: OperandDType) -> tuple[TileConfig, ...]:
    seeded = seed_tile_configs(dtype, epilogue=Epilogue.RELU2)[0]
    if dtype is OperandDType.INT4:
        return (
            seeded,
            TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=True),
            TileConfig(64, 512, 32, 4, 16, 2, 2, even_k=True),
            TileConfig(64, 256, 32, 4, 16, 2, 2, even_k=True),
            TileConfig(64, 128, 128, 4, 16, 2, 2, even_k=True),
            TileConfig(128, 256, 32, 4, 16, 3, 2, even_k=True),
            TileConfig(128, 512, 32, 4, 16, 2, 2, even_k=True),
        )
    return (
        seeded,
        TileConfig(64, 256, 32, 4, 8, 3, 2, even_k=True),
        TileConfig(128, 256, 32, 4, 8, 3, 2, even_k=True),
        TileConfig(128, 512, 32, 4, 8, 3, 2, even_k=True),
    )


def make_kernel(dtype: OperandDType, scale: ScaleSpec, tile: TileConfig, shape: BenchmarkShape) -> KernelMetadata:
    even_tile = replace(tile, even_k=shape.k % (tile.block_k * tile.split_k) == 0)
    kernel_id = make_kernel_id(dtype, scale, Epilogue.RELU2, even_tile)
    return KernelMetadata(
        kernel_id=kernel_id,
        arch=ARCH,
        a_dtype=dtype,
        b_dtype=dtype,
        acc_dtype=ACC_DTYPE,
        output_dtype=output_dtype_for_split_k(even_tile.split_k),
        scale_dtype=SCALE_DTYPE_BF16,
        scale=scale,
        epilogue=Epilogue.RELU2,
        tile=even_tile,
        triton_kernel_name=f"triton_{kernel_id}",
    )


def make_inputs(kernel: KernelMetadata, shape: BenchmarkShape) -> tuple[Any, Any, Any, Any, Any, Any, Any]:
    torch.manual_seed(17)
    bits = 4 if kernel.a_dtype is OperandDType.INT4 else 8
    a_bf16 = torch.randn((shape.m, shape.k), device="cuda", dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((shape.k, shape.n), device="cuda", dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=bits, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=bits, scale=0.1)

    if kernel.a_dtype is OperandDType.INT4:
        a = pack_int4_k_major(a_q)
        b = pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
    else:
        a = a_q.contiguous()
        b = b_q.contiguous()

    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, shape.m, device="cuda", dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, shape.n, device="cuda", dtype=torch.bfloat16)
        gemm = torch.matmul(a_q.to(torch.float32), b_q.to(torch.float32)) * a_scale[:, None] * b_scale[None, :]
    else:
        scale_cols = triton.cdiv(shape.k, kernel.scale.subchannel_size or 1)
        a_scale = torch.linspace(0.80, 1.20, shape.m * scale_cols, device="cuda", dtype=torch.bfloat16).reshape(
            shape.m, scale_cols
        )
        b_scale = torch.linspace(1.15, 0.85, shape.n * scale_cols, device="cuda", dtype=torch.bfloat16).reshape(
            scale_cols, shape.n
        )
        gemm = torch.zeros((shape.m, shape.n), device="cuda", dtype=torch.float32)
        subchannel = kernel.scale.subchannel_size or 1
        for group_index, k0 in enumerate(range(0, shape.k, subchannel)):
            k1 = min(k0 + subchannel, shape.k)
            partial = torch.matmul(a_q[:, k0:k1].to(torch.float32), b_q[k0:k1, :].to(torch.float32))
            gemm += partial * a_scale[:, group_index, None] * b_scale[group_index, :][None, :]

    output_dtype = torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32
    c = torch.empty((shape.m, shape.n), device="cuda", dtype=output_dtype)
    expected = torch.relu(gemm).square()
    gate = torch.empty((0,), device="cuda", dtype=torch.float32)
    return a, b, a_scale, b_scale, c, gate, expected


def launch(kernel: KernelMetadata, shape: BenchmarkShape, args: tuple[Any, ...]) -> Any:
    grid = (
        triton.cdiv(shape.m, kernel.tile.block_m) * triton.cdiv(shape.n, kernel.tile.block_n),
        kernel.tile.split_k,
    )
    common = dict(
        M=shape.m,
        N=shape.n,
        K=shape.k,
        BLOCK_M=kernel.tile.block_m,
        BLOCK_N=kernel.tile.block_n,
        BLOCK_K=kernel.tile.block_k,
        GROUP_SIZE_M=kernel.tile.group_size_m,
        SUBCHANNEL=kernel.scale.subchannel_size or 0,
        PER_CHANNEL=kernel.scale.mode is ScaleMode.PER_CHANNEL,
        SWIGLU=False,
        RELU2=True,
        EVEN_K=kernel.tile.even_k,
        SPLIT_K=kernel.tile.split_k,
        A_TRANS=False,
        B_TRANS=False,
        num_warps=kernel.tile.num_warps,
        num_stages=kernel.tile.num_stages,
        waves_per_eu=kernel.tile.waves_per_eu,
        matrix_instr_nonkdim=16,
        kpack=1,
    )
    fn = _int4_scaled_gemm if kernel.a_dtype is OperandDType.INT4 else _int8_scaled_gemm
    fn[grid](*args[:6], **common)
    return args[4]


def validation_tolerances(kernel: KernelMetadata) -> tuple[float, float]:
    if kernel.output_dtype == "bfloat16":
        return 8.0e-3, 1.0e-2
    return 1.0e-4, 1.0


def benchmark_kernel(
    kernel: KernelMetadata,
    shape: BenchmarkShape,
    *,
    warmup_ms: int,
    rep_ms: int,
) -> dict[str, Any]:
    args = make_inputs(kernel, shape)
    actual = launch(kernel, shape, args)
    torch.cuda.synchronize()
    diff = (actual.to(torch.float32) - args[6].to(torch.float32)).abs()
    max_abs = float(diff.max().item())
    max_rel = float((diff / torch.clamp(args[6].to(torch.float32).abs(), min=1.0e-3)).max().item())
    rtol, atol = validation_tolerances(kernel)
    torch.testing.assert_close(actual, args[6].to(actual.dtype), rtol=rtol, atol=atol)

    from triton.testing import do_bench

    samples = tuple(
        float(sample)
        for sample in do_bench(lambda: launch(kernel, shape, args), warmup=warmup_ms, rep=rep_ms, return_mode="all")
    )
    summary = summarize_runtime_samples(samples)
    runtime_ms = float(summary["runtime_ms_median"])
    return {
        "kernel_id": kernel.kernel_id,
        "shape": shape.to_dict(),
        "runtime_ms": runtime_ms,
        "tops": tops_for_runtime(shape, runtime_ms),
        "max_abs_diff": max_abs,
        "max_rel_diff": max_rel,
        "metadata": {
            "dtype": kernel.a_dtype.value,
            "scale": kernel.scale.label,
            "output_dtype": kernel.output_dtype,
            "tile": kernel.tile.label,
            "input_distribution": "randn_bf16_fake_quant_scale_0.1",
            "warmup_ms": warmup_ms,
            "rep_ms": rep_ms,
            "torch_version": str(torch.__version__),
            "torch_hip": str(torch.version.hip),
            "device": torch.cuda.get_device_name(),
            **summary,
        },
    }


def save_artifacts(kernel: KernelMetadata, shape: BenchmarkShape, out_dir: Path) -> dict[str, str]:
    asm = compile_kernel(kernel, LaunchShape(shape.m, shape.n, shape.k))
    artifact_id = f"{kernel.kernel_id}_m{shape.m}_n{shape.n}_k{shape.k}"
    return {
        key: display_path(path, root=REPO_ROOT)
        for key, path in write_triton_text_artifacts(kernel_id=artifact_id, asm=asm, out_dir=out_dir).items()
    }


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Tune direct Triton generated ReLU^2 GEMM kernels on a real shape.")
    parser.add_argument("--shape", type=parse_shape, default=parse_shape("4096,4096,4096"))
    parser.add_argument("--dtype", type=parse_dtype, default=OperandDType.INT4)
    parser.add_argument("--scale", type=parse_scale, action="append", default=[])
    parser.add_argument("--tile", type=parse_tile, action="append", default=[])
    parser.add_argument("--warmup-ms", type=int, default=25)
    parser.add_argument("--rep-ms", type=int, default=100)
    parser.add_argument("--output", type=Path, default=REPO_ROOT / "benchmarks" / "relu2_tuning.json")
    parser.add_argument("--save-best-artifacts", action="store_true")
    parser.add_argument("--artifact-dir", type=Path, default=DEFAULT_ARTIFACT_DIR)
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    load_runtime()
    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("ReLU^2 tuning requires a ROCm torch CUDA/HIP device")
    if args.warmup_ms < 0:
        raise ValueError("--warmup-ms must be non-negative")
    if args.rep_ms <= 0:
        raise ValueError("--rep-ms must be positive")

    scales = tuple(args.scale) if args.scale else (ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 256))
    tiles = tuple(args.tile) if args.tile else default_tiles(args.dtype)
    records = []
    failures = []
    for scale in scales:
        for tile in tiles:
            kernel = make_kernel(args.dtype, scale, tile, args.shape)
            try:
                record = benchmark_kernel(kernel, args.shape, warmup_ms=args.warmup_ms, rep_ms=args.rep_ms)
                records.append(record)
                print(
                    f"{record['kernel_id']} runtime_ms={record['runtime_ms']:.6f} "
                    f"tops={record['tops']:.3f} max_abs={record['max_abs_diff']:.6g}",
                    flush=True,
                )
            except Exception as exc:
                failure = {"kernel_id": kernel.kernel_id, "error": repr(exc)}
                failures.append(failure)
                print(f"FAILED {kernel.kernel_id}: {exc!r}", flush=True)

    if not records:
        raise RuntimeError(f"all ReLU^2 tuning candidates failed: {failures}")
    best = max(records, key=lambda record: record["tops"])
    artifact_paths = {}
    if args.save_best_artifacts:
        best_scale = next(scale for scale in scales if scale.label == best["metadata"]["scale"])
        best_tile = next(tile for tile in tiles if tile.label == best["metadata"]["tile"])
        best_kernel = make_kernel(args.dtype, best_scale, best_tile, args.shape)
        artifact_paths = save_artifacts(best_kernel, args.shape, args.artifact_dir)

    output = {
        "shape": args.shape.to_dict(),
        "records": records,
        "failures": failures,
        "best": best,
        "best_artifacts": artifact_paths,
        "summary": {
            "count": len(records),
            "mean_tops": mean(record["tops"] for record in records),
            "max_tops": best["tops"],
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2, sort_keys=True) + "\n")
    print(args.output)
    print(f"best {best['kernel_id']} tops={best['tops']:.3f} runtime_ms={best['runtime_ms']:.6f}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

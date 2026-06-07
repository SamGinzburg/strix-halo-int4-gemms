from __future__ import annotations

from .benchmarking import BenchmarkDatabase, BenchmarkShape
from .metadata import Epilogue, GemmLayout, KernelMetadata, KernelSchedule, OperandDType, ScaleSpec
from .registry import KernelRegistry, default_registry
from .template_config import LaunchShape, is_tile_multiple_shape


def kernel_supports_shape(kernel: KernelMetadata, *, m: int, n: int, k: int) -> bool:
    if kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} and kernel.tile.split_k != 1:
        return False
    return kernel.tile.even_k and is_tile_multiple_shape(kernel, LaunchShape(m, n, k))


def estimate_kernel_score(
    kernel: KernelMetadata,
    *,
    m: int,
    n: int,
    k: int,
    benchmark_db: BenchmarkDatabase | None = None,
) -> float:
    if not kernel_supports_shape(kernel, m=m, n=n, k=k):
        return float("-inf")
    if benchmark_db is not None:
        record = benchmark_db.best_record(kernel, BenchmarkShape(m, n, k))
        if record is not None:
            return record.tops
    score = kernel.measured_tops or 1.0
    score /= kernel.tile.split_k
    if kernel.tile.block_k == 64 and kernel.tile.block_m == 64 and kernel.tile.block_n == 512:
        score *= 2.0
    return score


def choose_kernel(
    *,
    m: int,
    n: int,
    k: int,
    dtype: OperandDType,
    layout: GemmLayout = GemmLayout.NN,
    scale: ScaleSpec,
    epilogue: Epilogue,
    schedule: KernelSchedule = KernelSchedule.STANDARD,
    registry: KernelRegistry = default_registry,
    benchmark_db: BenchmarkDatabase | None = None,
) -> KernelMetadata:
    candidates = [
        kernel
        for kernel in registry.all()
        if kernel.a_dtype is dtype
        and kernel.b_dtype is dtype
        and kernel.layout is layout
        and kernel.scale == scale
        and kernel.epilogue is epilogue
        and kernel.schedule is schedule
        and kernel_supports_shape(kernel, m=m, n=n, k=k)
    ]
    if not candidates:
        raise LookupError("no kernels match logical dtype/layout/scale/epilogue request and shape")
    return max(candidates, key=lambda kernel: estimate_kernel_score(kernel, m=m, n=n, k=k, benchmark_db=benchmark_db))

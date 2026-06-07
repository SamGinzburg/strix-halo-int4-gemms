import argparse
from pathlib import Path

import pytest

from scripts.benchmark_generated import parse_shape

from amd_strix_halo_kernels.benchmarking import (
    BenchmarkDatabase,
    BenchmarkRecord,
    BenchmarkShape,
    summarize_runtime_samples,
    tops_for_runtime,
)
from amd_strix_halo_kernels.heuristics import choose_kernel, estimate_kernel_score, kernel_supports_shape
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
)
from amd_strix_halo_kernels.registry import KernelRegistry, default_registry


REPO_ROOT = Path(__file__).resolve().parents[1]


def make_kernel(kernel_id: str, tile: TileConfig) -> KernelMetadata:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    return KernelMetadata(
        kernel_id=kernel_id,
        arch=ARCH,
        a_dtype=OperandDType.INT4,
        b_dtype=OperandDType.INT4,
        acc_dtype=ACC_DTYPE,
        output_dtype="float32",
        scale_dtype=SCALE_DTYPE_BF16,
        scale=scale,
        epilogue=Epilogue.NONE,
        tile=tile,
        triton_kernel_name=f"triton_{kernel_id}",
    )


def test_tops_for_runtime_uses_two_gemm_ops_per_mac() -> None:
    shape = BenchmarkShape(1024, 1024, 1024)

    assert tops_for_runtime(shape, runtime_ms=1.0) == 2.147483648


def test_summarize_runtime_samples_reports_robust_device_statistics() -> None:
    summary = summarize_runtime_samples([4.0, 1.0, 2.0, 8.0])

    assert summary["sample_count"] == 4
    assert summary["runtime_ms_min"] == 1.0
    assert summary["runtime_ms_median"] == 3.0
    assert summary["runtime_ms_mean"] == 3.75
    assert summary["runtime_ms_p20"] == pytest.approx(1.6)
    assert summary["runtime_ms_p80"] == pytest.approx(5.6)
    assert summary["runtime_ms_max"] == 8.0


def test_benchmark_generated_parse_shape() -> None:
    assert parse_shape("128,1024,64") == (128, 1024, 64)
    with pytest.raises(argparse.ArgumentTypeError):
        parse_shape("96,0,32")


def test_benchmark_database_roundtrips_and_filters_failed_records(tmp_path) -> None:
    shape = BenchmarkShape(64, 512, 64)
    record = BenchmarkRecord("kernel_a", shape, runtime_ms=0.25, tops=17.1, iterations=20, warmup=5)
    failed = BenchmarkRecord("kernel_a", shape, runtime_ms=0.1, tops=99.0, iterations=20, warmup=5, success=False)
    db = BenchmarkDatabase([record, failed])
    path = tmp_path / "benchmarks.json"

    db.save(path)
    loaded = BenchmarkDatabase.load(path)

    assert loaded.best_record(make_kernel("kernel_a", TileConfig(64, 512, 64, 4, 8, 3, 0, True)), shape) == record


def test_heuristic_uses_exact_shape_benchmark_record() -> None:
    fast = make_kernel("fast", TileConfig(64, 512, 64, 4, 8, 3, 0, True))
    slow = make_kernel("slow", TileConfig(64, 256, 64, 4, 8, 3, 0, True))
    registry = KernelRegistry([fast, slow])
    shape = BenchmarkShape(64, 512, 64)
    db = BenchmarkDatabase(
        [
            BenchmarkRecord("fast", shape, runtime_ms=1.0, tops=4.0, iterations=20, warmup=5),
            BenchmarkRecord("slow", shape, runtime_ms=1.0, tops=8.0, iterations=20, warmup=5),
        ]
    )

    selected = choose_kernel(
        m=shape.m,
        n=shape.n,
        k=shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        registry=registry,
        benchmark_db=db,
    )

    assert selected.kernel_id == "slow"


def test_heuristic_rejects_masked_or_non_tile_multiple_kernels() -> None:
    masked = make_kernel("masked", TileConfig(64, 512, 64, 4, 8, 3, 0, False))

    assert kernel_supports_shape(masked, m=64, n=512, k=96) is False
    assert kernel_supports_shape(masked, m=64, n=512, k=128) is False
    assert estimate_kernel_score(masked, m=64, n=512, k=128) == float("-inf")


def test_heuristic_rejects_m_and_n_not_multiple_of_tile() -> None:
    kernel = make_kernel("kernel", TileConfig(64, 512, 64, 4, 8, 3, 0, True))

    assert kernel_supports_shape(kernel, m=65, n=513, k=128) is False
    assert estimate_kernel_score(kernel, m=65, n=513, k=128) == float("-inf")


def test_checked_in_generated_benchmark_database_covers_registry() -> None:
    db = BenchmarkDatabase.load(REPO_ROOT / "benchmarks" / "gfx1151_generated.json")
    records = db.records()

    assert {record.kernel_id for record in records} == {kernel.kernel_id for kernel in default_registry.all()}
    assert all(record.success for record in records)
    by_id = {kernel.kernel_id: kernel for kernel in default_registry.all()}
    for record in records:
        kernel = by_id[record.kernel_id]
        if kernel.output_dtype == "bfloat16":
            atol = {
                Epilogue.NONE: 4.0,
                Epilogue.RELU2: 512.0,
                Epilogue.SWIGLU: 32.0,
            }[kernel.epilogue]
            assert (record.max_abs_diff or 0.0) <= atol or (record.max_rel_diff or 0.0) <= 1.0e-2
            continue
        atol = 5.0e-1 if kernel.epilogue is Epilogue.RELU2 else 1.0e-1 if kernel.epilogue is Epilogue.SWIGLU else 1.0e-3
        assert (record.max_abs_diff or 0.0) <= atol
        if kernel.epilogue is Epilogue.RELU2:
            assert (record.max_rel_diff or 0.0) <= 1.0e-3

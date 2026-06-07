from __future__ import annotations

import json
import statistics
import time
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Any, Callable, Iterable

from .metadata import KernelMetadata


@dataclass(frozen=True, slots=True)
class BenchmarkShape:
    m: int
    n: int
    k: int

    def to_dict(self) -> dict[str, int]:
        return asdict(self)

    @classmethod
    def from_dict(cls, data: dict[str, Any]) -> "BenchmarkShape":
        return cls(m=int(data["m"]), n=int(data["n"]), k=int(data["k"]))


@dataclass(frozen=True, slots=True)
class BenchmarkRecord:
    kernel_id: str
    shape: BenchmarkShape
    runtime_ms: float
    tops: float
    iterations: int
    warmup: int
    success: bool = True
    max_abs_diff: float | None = None
    max_rel_diff: float | None = None
    notes: str = ""
    metadata: dict[str, Any] = field(default_factory=dict)

    def to_dict(self) -> dict[str, Any]:
        data = asdict(self)
        data["shape"] = self.shape.to_dict()
        return data

    @classmethod
    def from_dict(cls, data: dict[str, Any]) -> "BenchmarkRecord":
        return cls(
            kernel_id=str(data["kernel_id"]),
            shape=BenchmarkShape.from_dict(data["shape"]),
            runtime_ms=float(data["runtime_ms"]),
            tops=float(data["tops"]),
            iterations=int(data["iterations"]),
            warmup=int(data["warmup"]),
            success=bool(data.get("success", True)),
            max_abs_diff=data.get("max_abs_diff"),
            max_rel_diff=data.get("max_rel_diff"),
            notes=str(data.get("notes", "")),
            metadata=dict(data.get("metadata", {})),
        )


class BenchmarkDatabase:
    def __init__(self, records: Iterable[BenchmarkRecord] = ()) -> None:
        self._records = list(records)

    def add(self, record: BenchmarkRecord) -> None:
        self._records.append(record)

    def records(self) -> tuple[BenchmarkRecord, ...]:
        return tuple(self._records)

    def matching_records(self, kernel: KernelMetadata, shape: BenchmarkShape) -> tuple[BenchmarkRecord, ...]:
        return tuple(
            record
            for record in self._records
            if record.success
            and record.kernel_id == kernel.kernel_id
            and record.shape == shape
        )

    def best_record(self, kernel: KernelMetadata, shape: BenchmarkShape) -> BenchmarkRecord | None:
        records = self.matching_records(kernel, shape)
        if not records:
            return None
        return max(records, key=lambda record: record.tops)

    def to_dict(self) -> dict[str, Any]:
        return {"records": [record.to_dict() for record in self._records]}

    @classmethod
    def from_dict(cls, data: dict[str, Any]) -> "BenchmarkDatabase":
        return cls(BenchmarkRecord.from_dict(record) for record in data.get("records", []))

    @classmethod
    def load(cls, path: Path) -> "BenchmarkDatabase":
        return cls.from_dict(json.loads(path.read_text()))

    def save(self, path: Path) -> None:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(json.dumps(self.to_dict(), indent=2, sort_keys=True) + "\n")


def gemm_ops(shape: BenchmarkShape) -> int:
    return 2 * shape.m * shape.n * shape.k


def tops_for_runtime(shape: BenchmarkShape, runtime_ms: float) -> float:
    if runtime_ms <= 0:
        raise ValueError("runtime_ms must be positive")
    return gemm_ops(shape) / (runtime_ms / 1_000.0) / 1_000_000_000_000.0


def _quantile(sorted_values: list[float], q: float) -> float:
    if not 0.0 <= q <= 1.0:
        raise ValueError("quantile must be between 0 and 1")
    if len(sorted_values) == 1:
        return sorted_values[0]
    point = q * (len(sorted_values) - 1)
    lower = int(point)
    upper = min(lower + 1, len(sorted_values) - 1)
    weight = point - lower
    return (1.0 - weight) * sorted_values[lower] + weight * sorted_values[upper]


def summarize_runtime_samples(samples_ms: Iterable[float]) -> dict[str, float | int]:
    raw_samples = [float(sample) for sample in samples_ms]
    if not raw_samples:
        raise ValueError("at least one runtime sample is required")
    samples = [sample for sample in raw_samples if sample > 0.0]
    if not samples:
        raise ValueError("at least one positive runtime sample is required")
    sorted_samples = sorted(samples)
    return {
        "sample_count": len(samples),
        "raw_sample_count": len(raw_samples),
        "dropped_nonpositive_sample_count": len(raw_samples) - len(samples),
        "runtime_ms_min": sorted_samples[0],
        "runtime_ms_p20": _quantile(sorted_samples, 0.20),
        "runtime_ms_median": statistics.median(sorted_samples),
        "runtime_ms_mean": statistics.mean(sorted_samples),
        "runtime_ms_p80": _quantile(sorted_samples, 0.80),
        "runtime_ms_max": sorted_samples[-1],
    }


def triton_do_bench_samples(
    fn: Callable[[], Any],
    *,
    warmup_ms: int = 25,
    rep_ms: int = 100,
) -> tuple[float, ...]:
    if warmup_ms < 0:
        raise ValueError("warmup_ms must be non-negative")
    if rep_ms <= 0:
        raise ValueError("rep_ms must be positive")
    try:
        from triton.testing import do_bench
    except ImportError as exc:
        raise RuntimeError("triton is required for device benchmark timing") from exc
    return tuple(float(sample) for sample in do_bench(fn, warmup=warmup_ms, rep=rep_ms, return_mode="all"))


def benchmark_triton_callable(
    *,
    kernel: KernelMetadata,
    shape: BenchmarkShape,
    fn: Callable[[], Any],
    warmup_ms: int = 25,
    rep_ms: int = 100,
    metadata: dict[str, Any] | None = None,
    notes: str = "",
) -> BenchmarkRecord:
    samples = triton_do_bench_samples(fn, warmup_ms=warmup_ms, rep_ms=rep_ms)
    summary = summarize_runtime_samples(samples)
    elapsed_ms = float(summary["runtime_ms_median"])
    timing_metadata = {
        "timing_backend": "triton.testing.do_bench",
        "timing_return_mode": "all",
        "warmup_ms": warmup_ms,
        "rep_ms": rep_ms,
        **summary,
    }
    timing_metadata.update(metadata or {})
    return BenchmarkRecord(
        kernel_id=kernel.kernel_id,
        shape=shape,
        runtime_ms=elapsed_ms,
        tops=tops_for_runtime(shape, elapsed_ms),
        iterations=int(summary["sample_count"]),
        warmup=warmup_ms,
        metadata=timing_metadata,
        notes=notes,
    )


def benchmark_callable(
    *,
    kernel: KernelMetadata,
    shape: BenchmarkShape,
    fn: Callable[[], Any],
    warmup: int = 5,
    iterations: int = 20,
    synchronize: Callable[[], Any] | None = None,
    metadata: dict[str, Any] | None = None,
    notes: str = "",
) -> BenchmarkRecord:
    if warmup < 0:
        raise ValueError("warmup must be non-negative")
    if iterations <= 0:
        raise ValueError("iterations must be positive")

    for _ in range(warmup):
        fn()
    if synchronize is not None:
        synchronize()

    start = time.perf_counter()
    for _ in range(iterations):
        fn()
    if synchronize is not None:
        synchronize()
    elapsed_ms = (time.perf_counter() - start) * 1_000.0 / iterations

    return BenchmarkRecord(
        kernel_id=kernel.kernel_id,
        shape=shape,
        runtime_ms=elapsed_ms,
        tops=tops_for_runtime(shape, elapsed_ms),
        iterations=iterations,
        warmup=warmup,
        metadata=dict(metadata or {}),
        notes=notes,
    )

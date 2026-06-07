from __future__ import annotations

import hashlib
import json
from dataclasses import dataclass
from enum import Enum
from pathlib import Path
from typing import Any, Callable, Iterable, Sequence

from .api import explicit_mm
from .benchmarking import (
    BenchmarkDatabase,
    BenchmarkRecord,
    BenchmarkShape,
    benchmark_triton_callable,
    summarize_runtime_samples,
    tops_for_runtime,
    triton_do_bench_samples,
)
from .heuristics import kernel_supports_shape
from .metadata import Epilogue, GemmLayout, KernelMetadata, KernelSchedule, OperandDType, ScaleMode, ScaleSpec
from .ragged_artifacts import ragged_config_label
from .native import amdgcn_metadata_path_for_kernel_id, launch_generated_kernel
from .quant import fake_quant_int, pack_int4_k_major
from .ragged import (
    RaggedBwdDotConfig,
    RaggedDotConfig,
    _can_use_bwd_even_k_fast_path,
    _can_use_even_k_fast_path,
    ragged_dot_int4,
    ragged_dot_int4_bwd,
)
from .registry import KernelRegistry, default_registry


BenchmarkRunner = Callable[[KernelMetadata, BenchmarkShape], BenchmarkRecord]
RaggedBenchmarkRunner = Callable[["RaggedAutotuneCandidate", BenchmarkShape], BenchmarkRecord]


class RaggedDotMode(str, Enum):
    """Ragged int4 dot kernel family to autotune."""

    FWD = "fwd"
    BWD = "bwd"


@dataclass(frozen=True, slots=True)
class AutotuneResult:
    shape: BenchmarkShape
    candidates: tuple[KernelMetadata, ...]
    records: tuple[BenchmarkRecord, ...]
    best_kernel: KernelMetadata
    best_record: BenchmarkRecord
    benchmark_db: BenchmarkDatabase


@dataclass(frozen=True, slots=True)
class RaggedAutotuneCandidate:
    """One Triton-JIT ragged-dot launch candidate."""

    mode: RaggedDotMode
    layout: GemmLayout
    scale: ScaleSpec
    config: RaggedDotConfig | RaggedBwdDotConfig

    @property
    def config_label(self) -> str:
        return ragged_config_label(self.config)

    @property
    def kernel_id(self) -> str:
        return (
            f"ragged_dot_int4_{self.mode.value}_{self.layout.value}_"
            f"{self.scale.label.lower()}_{self.config_label.lower()}"
        )


@dataclass(frozen=True, slots=True)
class RaggedAutotuneResult:
    """Autotune result for Triton-JIT ragged int4 dot kernels."""

    shape: BenchmarkShape
    mode: RaggedDotMode
    layout: GemmLayout
    scale: ScaleSpec
    group_sizes: tuple[int, ...]
    candidates: tuple[RaggedAutotuneCandidate, ...]
    records: tuple[BenchmarkRecord, ...]
    best_candidate: RaggedAutotuneCandidate
    best_record: BenchmarkRecord
    benchmark_db: BenchmarkDatabase


def generated_shape_for_kernel(kernel: KernelMetadata, *, root: str | Path | None = None) -> BenchmarkShape | None:
    path = amdgcn_metadata_path_for_kernel_id(kernel.kernel_id, root=root)
    if not path.exists():
        return None
    generation_shape = json.loads(path.read_text()).get("generation_shape")
    if not isinstance(generation_shape, dict):
        return None
    return BenchmarkShape.from_dict(generation_shape)


def artifact_supports_shape(kernel: KernelMetadata, shape: BenchmarkShape, *, root: str | Path | None = None) -> bool:
    path = amdgcn_metadata_path_for_kernel_id(kernel.kernel_id, root=root)
    if not path.exists():
        return False
    metadata = json.loads(path.read_text())
    if metadata.get("shape_specialization") == "runtime":
        return kernel_supports_shape(kernel, m=shape.m, n=shape.n, k=shape.k)
    generation_shape = metadata.get("generation_shape")
    return isinstance(generation_shape, dict) and BenchmarkShape.from_dict(generation_shape) == shape


def find_autotune_candidates(
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
    root: str | Path | None = None,
    require_exact_generated_shape: bool = True,
) -> tuple[KernelMetadata, ...]:
    shape = BenchmarkShape(m, n, k)
    candidates = []
    for kernel in registry.all():
        if (
            kernel.a_dtype is not dtype
            or kernel.b_dtype is not dtype
            or kernel.layout is not layout
            or kernel.scale != scale
            or kernel.epilogue is not epilogue
            or kernel.schedule is not schedule
            or not kernel_supports_shape(kernel, m=m, n=n, k=k)
        ):
            continue
        if require_exact_generated_shape and not artifact_supports_shape(kernel, shape, root=root):
            continue
        candidates.append(kernel)
    return tuple(candidates)


def autotune(
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
    benchmark_db_path: str | Path | None = None,
    root: str | Path | None = None,
    library_path: str | Path | None = None,
    warmup_ms: int = 25,
    rep_ms: int = 100,
    validate: bool = False,
    benchmark_runner: BenchmarkRunner | None = None,
) -> AutotuneResult:
    shape = BenchmarkShape(m, n, k)
    candidates = find_autotune_candidates(
        m=m,
        n=n,
        k=k,
        dtype=dtype,
        layout=layout,
        scale=scale,
        epilogue=epilogue,
        schedule=schedule,
        registry=registry,
        root=root,
    )
    if not candidates:
        raise LookupError(
            f"no pregenerated kernels match dtype={dtype.value}, layout={layout.value}, scale={scale.label}, "
            f"epilogue={epilogue.value}, schedule={schedule.value}, shape=({m}, {n}, {k})"
        )

    if benchmark_db is None and benchmark_db_path is not None and Path(benchmark_db_path).exists():
        benchmark_db = BenchmarkDatabase.load(Path(benchmark_db_path))
    existing_records = tuple(benchmark_db.records()) if benchmark_db is not None else ()

    runner = benchmark_runner or (
        lambda kernel, tuned_shape: _benchmark_native_kernel(
            kernel,
            tuned_shape,
            root=root,
            library_path=library_path,
            warmup_ms=warmup_ms,
            rep_ms=rep_ms,
            validate=validate,
        )
    )
    records = tuple(runner(kernel, shape) for kernel in candidates)
    if not records:
        raise RuntimeError("autotune produced no benchmark records")
    successful_records = tuple(record for record in records if record.success)
    if not successful_records:
        raise RuntimeError("autotune produced no successful benchmark records")
    best_record = max(successful_records, key=lambda record: record.tops)
    best_kernel = next(kernel for kernel in candidates if kernel.kernel_id == best_record.kernel_id)
    updated_db = BenchmarkDatabase((*existing_records, *records))
    if benchmark_db_path is not None:
        updated_db.save(Path(benchmark_db_path))
    return AutotuneResult(
        shape=shape,
        candidates=candidates,
        records=records,
        best_kernel=best_kernel,
        best_record=best_record,
        benchmark_db=updated_db,
    )


def default_ragged_dot_candidates(
    mode: RaggedDotMode,
    *,
    layout: GemmLayout = GemmLayout.NN,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    split_ks: Iterable[int] = (1, 2),
) -> tuple[RaggedAutotuneCandidate, ...]:
    """Return the default Triton-JIT ragged-dot autotune candidates."""

    mode = _check_ragged_mode(mode)
    layout = _check_layout(layout)
    split_ks = tuple(split_ks)
    if mode is RaggedDotMode.FWD:
        return tuple(
            RaggedAutotuneCandidate(mode=mode, layout=layout, scale=scale, config=config)
            for config in _default_ragged_fwd_configs()
        )
    return tuple(
        RaggedAutotuneCandidate(
            mode=mode,
            layout=layout,
            scale=scale,
            config=RaggedBwdDotConfig(
                block_m=config.block_m,
                block_n=config.block_n,
                block_k=config.block_k,
                split_k=split_k,
                num_warps=config.num_warps,
                num_stages=config.num_stages,
            ),
        )
        for config in _default_ragged_bwd_base_configs()
        for split_k in split_ks
    )


def autotune_ragged_dot(
    *,
    mode: RaggedDotMode,
    m: int,
    n: int,
    k: int,
    k_capacity: int | None = None,
    group_sizes: Sequence[int] | Any | None = None,
    groups: int = 8,
    layout: GemmLayout = GemmLayout.NN,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    candidates: Iterable[RaggedAutotuneCandidate | RaggedDotConfig | RaggedBwdDotConfig] | None = None,
    split_ks: Iterable[int] = (1, 2),
    benchmark_db: BenchmarkDatabase | None = None,
    benchmark_db_path: str | Path | None = None,
    warmup_ms: int = 25,
    rep_ms: int = 100,
    continue_on_error: bool = True,
    benchmark_runner: RaggedBenchmarkRunner | None = None,
) -> RaggedAutotuneResult:
    """Autotune Triton-JIT ragged int4 dot kernels for one runtime shape.

    ``RaggedDotMode.FWD`` tunes the M-ragged forward path where ``group_sizes``
    must partition ``M``. ``RaggedDotMode.BWD`` tunes the K-ragged backward-style path
    where ``group_sizes`` partitions the logical reduction work ``K`` across
    groups. Backward synthetic operands are padded to ``k_capacity`` per group,
    which defaults to ``max(group_sizes)``.
    """

    if m <= 0 or n <= 0 or k <= 0:
        raise ValueError("m, n, and k must be positive")
    if warmup_ms < 0:
        raise ValueError("warmup_ms must be non-negative")
    if rep_ms <= 0:
        raise ValueError("rep_ms must be positive")

    mode = _check_ragged_mode(mode)
    layout = _check_layout(layout)
    normalized_group_sizes = _normalize_ragged_group_sizes(
        mode=mode,
        group_sizes=group_sizes,
        groups=groups,
        m=m,
        k=k,
    )
    physical_k_capacity = _normalize_ragged_k_capacity(
        mode=mode,
        k=k,
        k_capacity=k_capacity,
        group_sizes=normalized_group_sizes,
    )
    shape = BenchmarkShape(m=m, n=n, k=k)
    candidate_tuple = _normalize_ragged_candidates(
        mode=mode,
        layout=layout,
        scale=scale,
        candidates=candidates,
        split_ks=split_ks,
    )
    if not candidate_tuple:
        raise LookupError(f"no ragged-dot autotune candidates for mode={mode.value}, layout={layout.value}")

    if benchmark_db is None and benchmark_db_path is not None and Path(benchmark_db_path).exists():
        benchmark_db = BenchmarkDatabase.load(Path(benchmark_db_path))
    existing_records = tuple(benchmark_db.records()) if benchmark_db is not None else ()

    runner = benchmark_runner or (
        lambda candidate, record_shape: _benchmark_ragged_candidate(
            candidate,
            record_shape,
            m=m,
            n=n,
            k_capacity=physical_k_capacity,
            group_sizes=normalized_group_sizes,
            warmup_ms=warmup_ms,
            rep_ms=rep_ms,
        )
    )

    records: list[BenchmarkRecord] = []
    for candidate in candidate_tuple:
        try:
            record = runner(candidate, shape)
        except Exception as exc:
            if not continue_on_error:
                raise
            record = BenchmarkRecord(
                kernel_id=candidate.kernel_id,
                shape=shape,
                runtime_ms=float("inf"),
                tops=0.0,
                iterations=0,
                warmup=warmup_ms,
                success=False,
                notes="ragged-dot autotune candidate failed",
                metadata={
                    "error": repr(exc),
                    **_ragged_record_metadata(
                        candidate=candidate,
                        group_sizes=normalized_group_sizes,
                        k_capacity=physical_k_capacity,
                        warmup_ms=warmup_ms,
                        rep_ms=rep_ms,
                    ),
                },
            )
        records.append(record)

    successful_records = tuple(record for record in records if record.success)
    if not successful_records:
        raise RuntimeError("ragged-dot autotune produced no successful benchmark records")
    best_record = max(successful_records, key=lambda record: record.tops)
    best_candidate = next(candidate for candidate in candidate_tuple if candidate.kernel_id == best_record.kernel_id)
    updated_db = BenchmarkDatabase((*existing_records, *records))
    if benchmark_db_path is not None:
        updated_db.save(Path(benchmark_db_path))
    return RaggedAutotuneResult(
        shape=shape,
        mode=mode,
        layout=layout,
        scale=scale,
        group_sizes=normalized_group_sizes,
        candidates=candidate_tuple,
        records=tuple(records),
        best_candidate=best_candidate,
        best_record=best_record,
        benchmark_db=updated_db,
    )


def _stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def _check_layout(layout: GemmLayout) -> GemmLayout:
    if type(layout) is not GemmLayout:
        raise TypeError(f"layout must be a GemmLayout, got {type(layout).__name__}")
    return layout


def _check_ragged_mode(mode: RaggedDotMode) -> RaggedDotMode:
    if type(mode) is not RaggedDotMode:
        raise TypeError(f"mode must be a RaggedDotMode, got {type(mode).__name__}")
    return mode


def _balanced_sizes(total: int, groups: int) -> tuple[int, ...]:
    if groups <= 0:
        raise ValueError("groups must be positive")
    base, remainder = divmod(total, groups)
    return tuple(base + (1 if group < remainder else 0) for group in range(groups))


def _normalize_ragged_group_sizes(
    *,
    mode: RaggedDotMode,
    group_sizes: Sequence[int] | Any | None,
    groups: int,
    m: int,
    k: int,
) -> tuple[int, ...]:
    if group_sizes is None:
        total = m if mode is RaggedDotMode.FWD else k
        values = _balanced_sizes(total, groups)
    else:
        host_values = group_sizes
        if hasattr(host_values, "detach"):
            host_values = host_values.detach()
        if hasattr(host_values, "cpu"):
            host_values = host_values.cpu()
        if hasattr(host_values, "tolist"):
            host_values = host_values.tolist()
        values = tuple(int(value) for value in host_values)
    if not values:
        raise ValueError("group_sizes must contain at least one group")
    if any(value < 0 for value in values):
        raise ValueError("group_sizes must be non-negative")
    if mode is RaggedDotMode.FWD:
        total_m = sum(values)
        if total_m != m:
            raise ValueError(f"forward group_sizes must sum to M={m}; got {total_m}")
    else:
        total_k = sum(values)
        if total_k != k:
            raise ValueError(f"backward group_sizes must sum to K={k}; got {total_k}")
    return values


def _normalize_ragged_k_capacity(
    *,
    mode: RaggedDotMode,
    k: int,
    k_capacity: int | None,
    group_sizes: tuple[int, ...],
) -> int:
    if mode is RaggedDotMode.FWD:
        if k_capacity is not None and k_capacity != k:
            raise ValueError("k_capacity is only configurable for backward ragged dot")
        return k
    max_group_k = max(group_sizes)
    physical_k_capacity = max_group_k if k_capacity is None else int(k_capacity)
    if physical_k_capacity <= 0:
        raise ValueError("k_capacity must be positive")
    if physical_k_capacity < max_group_k:
        raise ValueError(
            f"backward k_capacity must be >= max(group_sizes)={max_group_k}; got {physical_k_capacity}"
        )
    return physical_k_capacity


def _default_ragged_fwd_configs() -> tuple[RaggedDotConfig, ...]:
    return (
        RaggedDotConfig(block_m=16, block_n=128, block_k=32, group_size_tasks=1, num_warps=4, num_stages=3),
        RaggedDotConfig(block_m=32, block_n=128, block_k=64, group_size_tasks=1, num_warps=4, num_stages=3),
        RaggedDotConfig(block_m=64, block_n=128, block_k=64, group_size_tasks=1, num_warps=8, num_stages=3),
        RaggedDotConfig(block_m=64, block_n=256, block_k=64, group_size_tasks=1, num_warps=8, num_stages=3),
        RaggedDotConfig(block_m=64, block_n=256, block_k=128, group_size_tasks=1, num_warps=8, num_stages=3),
        RaggedDotConfig(block_m=64, block_n=128, block_k=64, group_size_tasks=2, num_warps=8, num_stages=3),
        RaggedDotConfig(block_m=64, block_n=256, block_k=64, group_size_tasks=2, num_warps=8, num_stages=3),
    )


def _default_ragged_bwd_base_configs() -> tuple[RaggedBwdDotConfig, ...]:
    return (
        RaggedBwdDotConfig(block_m=16, block_n=128, block_k=32, split_k=1, num_warps=4, num_stages=3),
        RaggedBwdDotConfig(block_m=32, block_n=128, block_k=64, split_k=1, num_warps=4, num_stages=3),
        RaggedBwdDotConfig(block_m=64, block_n=128, block_k=64, split_k=1, num_warps=8, num_stages=3),
        RaggedBwdDotConfig(block_m=64, block_n=256, block_k=64, split_k=1, num_warps=8, num_stages=3),
        RaggedBwdDotConfig(block_m=64, block_n=256, block_k=128, split_k=1, num_warps=8, num_stages=3),
    )


def _normalize_ragged_candidates(
    *,
    mode: RaggedDotMode,
    layout: GemmLayout,
    scale: ScaleSpec,
    candidates: Iterable[RaggedAutotuneCandidate | RaggedDotConfig | RaggedBwdDotConfig] | None,
    split_ks: Iterable[int],
) -> tuple[RaggedAutotuneCandidate, ...]:
    if candidates is None:
        return default_ragged_dot_candidates(mode, layout=layout, scale=scale, split_ks=split_ks)
    normalized = []
    for candidate in candidates:
        if isinstance(candidate, RaggedAutotuneCandidate):
            if candidate.mode is not mode:
                raise ValueError(f"candidate mode {candidate.mode.value} does not match requested {mode.value}")
            if candidate.layout is not layout:
                raise ValueError(f"candidate layout {candidate.layout.value} does not match requested {layout.value}")
            if candidate.scale != scale:
                raise ValueError(f"candidate scale {candidate.scale.label} does not match requested {scale.label}")
            if mode is RaggedDotMode.FWD and not isinstance(candidate.config, RaggedDotConfig):
                raise TypeError("forward ragged-dot candidates must use RaggedDotConfig")
            if mode is RaggedDotMode.BWD and not isinstance(candidate.config, RaggedBwdDotConfig):
                raise TypeError("backward ragged-dot candidates must use RaggedBwdDotConfig")
            normalized.append(candidate)
        elif mode is RaggedDotMode.FWD and isinstance(candidate, RaggedDotConfig):
            normalized.append(RaggedAutotuneCandidate(mode=mode, layout=layout, scale=scale, config=candidate))
        elif mode is RaggedDotMode.BWD and isinstance(candidate, RaggedBwdDotConfig):
            normalized.append(RaggedAutotuneCandidate(mode=mode, layout=layout, scale=scale, config=candidate))
        else:
            raise TypeError(f"unsupported ragged autotune candidate {candidate!r}")
    return tuple(normalized)


def _pack_ragged_fwd_rhs(torch: Any, b_q: Any, layout: GemmLayout) -> Any:
    b_trans = layout in {GemmLayout.NT, GemmLayout.TT}
    return torch.stack(
        [
            (
                pack_int4_k_major(b_q[group].transpose(0, 1)).contiguous()
                if b_trans
                else pack_int4_k_major(b_q[group].transpose(0, 1)).transpose(0, 1).contiguous()
            )
            for group in range(b_q.shape[0])
        ]
    ).contiguous()


def _pack_ragged_bwd_args(torch: Any, a_q: Any, b_q: Any, layout: GemmLayout) -> tuple[Any, Any]:
    a_trans = layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = layout in {GemmLayout.NT, GemmLayout.TT}
    lhs_groups = []
    rhs_groups = []
    for group in range(a_q.shape[0]):
        lhs = pack_int4_k_major(a_q[group])
        if a_trans:
            lhs = lhs.transpose(0, 1).contiguous()
        rhs = pack_int4_k_major(b_q[group].transpose(0, 1))
        rhs = rhs.contiguous() if b_trans else rhs.transpose(0, 1).contiguous()
        lhs_groups.append(lhs)
        rhs_groups.append(rhs)
    return torch.stack(lhs_groups).contiguous(), torch.stack(rhs_groups).contiguous()


def _ragged_scale_tensors(
    torch: Any,
    *,
    mode: RaggedDotMode,
    m: int,
    n: int,
    k: int,
    groups: int,
    scale: ScaleSpec,
) -> tuple[Any, Any]:
    if scale.mode is ScaleMode.PER_CHANNEL:
        if mode is RaggedDotMode.FWD:
            a_scale = torch.linspace(0.75, 1.25, m, device="cuda", dtype=torch.bfloat16)
        else:
            a_scale = torch.linspace(0.75, 1.25, groups * m, device="cuda", dtype=torch.bfloat16).reshape(groups, m)
        b_scale = torch.linspace(1.10, 0.90, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)
        return a_scale, b_scale

    subchannel = scale.subchannel_size or 1
    scale_cols = (k + subchannel - 1) // subchannel
    if mode is RaggedDotMode.FWD:
        a_scale = torch.linspace(0.80, 1.20, m * scale_cols, device="cuda", dtype=torch.bfloat16).reshape(
            m, scale_cols
        )
    else:
        a_scale = torch.linspace(
            0.80,
            1.20,
            groups * m * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, m, scale_cols)
    b_scale = torch.linspace(
        1.15,
        0.85,
        groups * scale_cols * n,
        device="cuda",
        dtype=torch.bfloat16,
    ).reshape(groups, scale_cols, n)
    return a_scale, b_scale


def _make_ragged_fwd_inputs(
    torch: Any,
    *,
    m: int,
    n: int,
    k: int,
    group_sizes: tuple[int, ...],
    layout: GemmLayout,
    scale: ScaleSpec,
) -> dict[str, Any]:
    groups = len(group_sizes)
    a_q = torch.randint(-8, 8, (m, k), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-8, 8, (groups, k, n), device="cuda", dtype=torch.int8)
    lhs = pack_int4_k_major(a_q)
    if layout in {GemmLayout.TN, GemmLayout.TT}:
        lhs = lhs.transpose(0, 1).contiguous()
    rhs = _pack_ragged_fwd_rhs(torch, b_q, layout)
    a_scale, b_scale = _ragged_scale_tensors(torch, mode=RaggedDotMode.FWD, m=m, n=n, k=k, groups=groups, scale=scale)
    return {
        "lhs": lhs,
        "rhs": rhs,
        "group_sizes": torch.tensor(group_sizes, device="cuda", dtype=torch.int32),
        "a_scale": a_scale,
        "b_scale": b_scale,
        "out": torch.empty((m, n), device="cuda", dtype=torch.bfloat16),
    }


def _make_ragged_bwd_inputs(
    torch: Any,
    *,
    m: int,
    n: int,
    k: int,
    group_sizes: tuple[int, ...],
    layout: GemmLayout,
    scale: ScaleSpec,
) -> dict[str, Any]:
    groups = len(group_sizes)
    a_q = torch.randint(-8, 8, (groups, m, k), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-8, 8, (groups, k, n), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_ragged_bwd_args(torch, a_q, b_q, layout)
    a_scale, b_scale = _ragged_scale_tensors(torch, mode=RaggedDotMode.BWD, m=m, n=n, k=k, groups=groups, scale=scale)
    return {
        "lhs": lhs,
        "rhs": rhs,
        "group_sizes": torch.tensor(group_sizes, device="cuda", dtype=torch.int32),
        "a_scale": a_scale,
        "b_scale": b_scale,
        "out": torch.empty((groups, m, n), device="cuda", dtype=torch.float32),
    }


def _ragged_record_metadata(
    *,
    candidate: RaggedAutotuneCandidate,
    group_sizes: tuple[int, ...],
    k_capacity: int,
    warmup_ms: int,
    rep_ms: int,
) -> dict[str, Any]:
    return {
        "mode": candidate.mode.value,
        "layout": candidate.layout.value,
        "scale": candidate.scale.label,
        "groups": len(group_sizes),
        "group_sizes": list(group_sizes),
        "logical_k_capacity": k_capacity,
        "config": _ragged_config_dict(candidate.config),
        "config_label": candidate.config_label,
        "dtype": "int4",
        "path": "triton_jit_ragged_dot_fwd"
        if candidate.mode is RaggedDotMode.FWD
        else "triton_jit_ragged_dot_bwd_splitk",
        "timing_backend": "triton.testing.do_bench",
        "warmup_ms": warmup_ms,
        "rep_ms": rep_ms,
    }


def _ragged_config_dict(config: RaggedDotConfig | RaggedBwdDotConfig) -> dict[str, Any]:
    if isinstance(config, RaggedDotConfig):
        return {
            "block_m": config.block_m,
            "block_n": config.block_n,
            "block_k": config.block_k,
            "align_tile": config.align_tile,
            "group_size_tasks": config.group_size_tasks,
            "enable_even_k_fast_path": config.enable_even_k_fast_path,
            "num_warps": config.num_warps,
            "num_stages": config.num_stages,
        }
    return {
        "block_m": config.block_m,
        "block_n": config.block_n,
        "block_k": config.block_k,
        "split_k": config.split_k,
        "enable_even_k_fast_path": config.enable_even_k_fast_path,
        "num_warps": config.num_warps,
        "num_stages": config.num_stages,
    }


def _benchmark_ragged_candidate(
    candidate: RaggedAutotuneCandidate,
    shape: BenchmarkShape,
    *,
    m: int,
    n: int,
    k_capacity: int,
    group_sizes: tuple[int, ...],
    warmup_ms: int,
    rep_ms: int,
) -> BenchmarkRecord:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for ragged-dot autotuning") from exc
    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("ragged-dot autotuning requires a ROCm torch CUDA/HIP device")

    torch.manual_seed(_stable_seed(f"{candidate.kernel_id}-{m},{n},{k_capacity}-{group_sizes}"))
    tensors = (
        _make_ragged_fwd_inputs(
            torch,
            m=m,
            n=n,
            k=k_capacity,
            group_sizes=group_sizes,
            layout=candidate.layout,
            scale=candidate.scale,
        )
        if candidate.mode is RaggedDotMode.FWD
        else _make_ragged_bwd_inputs(
            torch,
            m=m,
            n=n,
            k=k_capacity,
            group_sizes=group_sizes,
            layout=candidate.layout,
            scale=candidate.scale,
        )
    )
    uses_even_k_fast_path = _ragged_uses_even_k_fast_path(
        torch,
        candidate=candidate,
        logical_k=shape.k,
        group_sizes_tensor=tensors["group_sizes"],
    )

    def run() -> Any:
        if candidate.mode is RaggedDotMode.FWD:
            if not isinstance(candidate.config, RaggedDotConfig):
                raise TypeError("forward ragged-dot candidate must use RaggedDotConfig")
            return ragged_dot_int4(
                tensors["lhs"],
                tensors["rhs"],
                tensors["group_sizes"],
                a_scale=tensors["a_scale"],
                b_scale=tensors["b_scale"],
                scale=candidate.scale,
                config=candidate.config,
                layout=candidate.layout,
                out=tensors["out"],
            )
        if not isinstance(candidate.config, RaggedBwdDotConfig):
            raise TypeError("backward ragged-dot candidate must use RaggedBwdDotConfig")
        return ragged_dot_int4_bwd(
            tensors["lhs"],
            tensors["rhs"],
            tensors["group_sizes"],
            a_scale=tensors["a_scale"],
            b_scale=tensors["b_scale"],
            scale=candidate.scale,
            config=candidate.config,
            layout=candidate.layout,
            out=tensors["out"],
        )

    run()
    torch.cuda.synchronize()
    samples = triton_do_bench_samples(run, warmup_ms=warmup_ms, rep_ms=rep_ms)
    summary = summarize_runtime_samples(samples)
    runtime_ms = float(summary["runtime_ms_median"])
    metadata = {
        **_ragged_record_metadata(
            candidate=candidate,
            group_sizes=group_sizes,
            k_capacity=k_capacity,
            warmup_ms=warmup_ms,
            rep_ms=rep_ms,
        ),
        "output_dtype": "bfloat16" if candidate.mode is RaggedDotMode.FWD else "float32",
        "input_distribution": "random_int4_uniform",
        "torch_version": str(torch.__version__),
        "torch_hip": str(torch.version.hip),
        "device": torch.cuda.get_device_name(),
        "uses_even_k_fast_path": uses_even_k_fast_path,
        "masks_k": not uses_even_k_fast_path,
        **summary,
    }
    return BenchmarkRecord(
        kernel_id=candidate.kernel_id,
        shape=shape,
        runtime_ms=runtime_ms,
        tops=tops_for_runtime(shape, runtime_ms),
        iterations=int(summary["sample_count"]),
        warmup=warmup_ms,
        metadata=metadata,
        notes="prepacked operands; BF16 scales; quantization/packing excluded from timing",
    )


def _ragged_uses_even_k_fast_path(
    torch: Any,
    *,
    candidate: RaggedAutotuneCandidate,
    logical_k: int,
    group_sizes_tensor: Any,
) -> bool:
    if candidate.mode is RaggedDotMode.FWD:
        if not isinstance(candidate.config, RaggedDotConfig):
            raise TypeError("forward ragged-dot candidate must use RaggedDotConfig")
        return _can_use_even_k_fast_path(logical_k=logical_k, scale=candidate.scale, config=candidate.config)
    if not isinstance(candidate.config, RaggedBwdDotConfig):
        raise TypeError("backward ragged-dot candidate must use RaggedBwdDotConfig")
    return _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=group_sizes_tensor,
        scale=candidate.scale,
        config=candidate.config,
    )


def _scale_tensors(torch: Any, kernel: KernelMetadata, shape: BenchmarkShape) -> tuple[Any, Any]:
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.75, 1.25, shape.m, dtype=torch.bfloat16)
        b_scale = torch.linspace(1.10, 0.90, b_cols, dtype=torch.bfloat16)
        return a_scale, b_scale
    subchannel = kernel.scale.subchannel_size or 1
    scale_cols = (shape.k + subchannel - 1) // subchannel
    a_scale = torch.linspace(0.80, 1.20, shape.m * scale_cols, dtype=torch.bfloat16).reshape(shape.m, scale_cols)
    b_scale = torch.linspace(1.15, 0.85, b_cols * scale_cols, dtype=torch.bfloat16).reshape(scale_cols, b_cols)
    return a_scale, b_scale


def _make_inputs(torch: Any, kernel: KernelMetadata, shape: BenchmarkShape) -> tuple[Any, Any, Any, Any, Any | None, Any | None]:
    torch.manual_seed(_stable_seed(f"{kernel.kernel_id}-{shape.m},{shape.n},{shape.k}"))
    bits = 4 if kernel.a_dtype is OperandDType.INT4 else 8
    b_cols = shape.n * 2 if kernel.epilogue is Epilogue.SWIGLU else shape.n
    a_bf16 = torch.randn((shape.m, shape.k), dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((shape.k, b_cols), dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=bits, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=bits, scale=0.1)
    a_trans = kernel.layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = kernel.layout in {GemmLayout.NT, GemmLayout.TT}
    a = a_q
    b = b_q
    if kernel.a_dtype is OperandDType.INT4:
        a = (
            pack_int4_k_major(a_q).transpose(0, 1).contiguous()
            if a_trans
            else pack_int4_k_major(a_q)
        )
        b = (
            pack_int4_k_major(b_q.transpose(0, 1))
            if b_trans
            else pack_int4_k_major(b_q.transpose(0, 1)).transpose(0, 1).contiguous()
        )
    else:
        a = a_q.transpose(0, 1).contiguous() if a_trans else a_q
        b = b_q.transpose(0, 1).contiguous() if b_trans else b_q
    a_scale, b_scale = _scale_tensors(torch, kernel, shape)
    return a, b, a_scale, b_scale, None, None


def _max_diffs(torch: Any, actual: Any, expected: Any) -> tuple[float, float]:
    diff = (actual.to(torch.float32) - expected.to(torch.float32)).abs()
    return (
        float(diff.max().item()),
        float((diff / torch.clamp(expected.to(torch.float32).abs(), min=1.0e-3)).max().item()),
    )


def _output_torch_dtype(torch: Any, kernel: KernelMetadata) -> Any:
    if kernel.output_dtype == "bfloat16":
        return torch.bfloat16
    if kernel.output_dtype == "float32":
        return torch.float32
    raise ValueError(f"unsupported kernel output dtype: {kernel.output_dtype}")


def _validation_tolerances(kernel: KernelMetadata) -> tuple[float, float]:
    if kernel.output_dtype == "bfloat16":
        return 8.0e-3, 1.0e-2
    atol = 1.0e-2 if kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} else 1.0e-3
    return 1.0e-4, atol


def _benchmark_native_kernel(
    kernel: KernelMetadata,
    shape: BenchmarkShape,
    *,
    root: str | Path | None,
    library_path: str | Path | None,
    warmup_ms: int,
    rep_ms: int,
    validate: bool,
) -> BenchmarkRecord:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for autotuning native kernels") from exc
    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("autotuning native kernels requires a ROCm torch CUDA/HIP device")

    a, b, a_scale, b_scale, gate, _ = _make_inputs(torch, kernel, shape)
    expected = None
    if validate:
        expected = explicit_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, gate=gate, use_reference=True)

    a_gpu = a.to("cuda")
    b_gpu = b.to("cuda")
    a_scale_gpu = a_scale.to("cuda")
    b_scale_gpu = b_scale.to("cuda")
    gate_gpu = None if gate is None else gate.to("cuda")
    c_gpu = torch.empty((shape.m, shape.n), device="cuda", dtype=_output_torch_dtype(torch, kernel))

    def run() -> Any:
        return launch_generated_kernel(
            a_gpu,
            b_gpu,
            kernel=kernel,
            a_scale=a_scale_gpu,
            b_scale=b_scale_gpu,
            gate=gate_gpu,
            c=c_gpu,
            root=root,
            library_path=library_path,
        )

    max_abs = None
    max_rel = None
    if validate:
        actual = run()
        torch.cuda.synchronize()
        actual_cpu = actual.cpu()
        rtol, atol = _validation_tolerances(kernel)
        torch.testing.assert_close(actual_cpu, expected, rtol=rtol, atol=atol)
        max_abs, max_rel = _max_diffs(torch, actual_cpu, expected)

    record = benchmark_triton_callable(
        kernel=kernel,
        shape=shape,
        fn=run,
        warmup_ms=warmup_ms,
        rep_ms=rep_ms,
        notes="autotuned pregenerated HSACO with triton.testing.do_bench device timing",
        metadata={
            "arch": kernel.arch,
            "dtype": kernel.a_dtype.value,
            "layout": kernel.layout.value,
            "scale": kernel.scale.label,
            "epilogue": kernel.epilogue.value,
            "output_dtype": kernel.output_dtype,
            "tile": kernel.tile.label,
            "even_k": kernel.tile.even_k,
            "split_k": kernel.tile.split_k,
            "validated": validate,
            "torch_version": str(torch.__version__),
            "torch_hip": str(torch.version.hip),
            "device": torch.cuda.get_device_name(),
        },
    )
    tops_multiplier = 2.0 if kernel.epilogue is Epilogue.SWIGLU else 1.0
    return BenchmarkRecord(
        kernel_id=record.kernel_id,
        shape=record.shape,
        runtime_ms=record.runtime_ms,
        tops=record.tops * tops_multiplier,
        iterations=record.iterations,
        warmup=record.warmup,
        success=record.success,
        max_abs_diff=max_abs,
        max_rel_diff=max_rel,
        notes=record.notes,
        metadata=record.metadata,
    )

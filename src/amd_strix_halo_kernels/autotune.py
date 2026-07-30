from __future__ import annotations

import hashlib
import json
import math
from dataclasses import dataclass
from enum import Enum
from pathlib import Path
from typing import Any, Callable, Iterable, Sequence

from .api import explicit_mm
from .attention import (
    Int4AttentionConfig,
    _normalize_window,
    int4_scaled_dot_product_attention,
    reference_scaled_dot_product_attention,
)
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
    prepare_ragged_bwd_group_info,
    ragged_dot_int4,
    ragged_dot_int4_bwd,
)
from .registry import KernelRegistry, default_registry


BenchmarkRunner = Callable[[KernelMetadata, BenchmarkShape], BenchmarkRecord]
RaggedBenchmarkRunner = Callable[["RaggedAutotuneCandidate", BenchmarkShape], BenchmarkRecord]
AttentionBenchmarkRunner = Callable[[Int4AttentionConfig, "AttentionShape"], BenchmarkRecord]


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
class AttentionShape:
    """Logical dimensions that define one attention tuning workload."""

    batch: int
    query_heads: int
    kv_heads: int
    query_length: int
    key_length: int
    head_dim: int
    value_dim: int

    def to_dict(self) -> dict[str, int]:
        return {
            "batch": self.batch,
            "query_heads": self.query_heads,
            "kv_heads": self.kv_heads,
            "query_length": self.query_length,
            "key_length": self.key_length,
            "head_dim": self.head_dim,
            "value_dim": self.value_dim,
        }

    @property
    def benchmark_shape(self) -> BenchmarkShape:
        """Compatibility shape used by the shared benchmark database schema."""

        return BenchmarkShape(self.query_length, self.key_length, self.head_dim)


@dataclass(frozen=True, slots=True)
class AttentionAutotuneResult:
    """Numerically validated tuning result for fused attention."""

    shape: AttentionShape
    mode: str
    output_dtype: str
    is_causal: bool
    window_size: tuple[int, int] | None
    query_position_offset: int
    candidates: tuple[Int4AttentionConfig, ...]
    records: tuple[BenchmarkRecord, ...]
    best_config: Int4AttentionConfig
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


def default_attention_candidates(
    *,
    pv_int4: bool,
    decode: bool,
) -> tuple[Int4AttentionConfig, ...]:
    """Return the default fused-attention launch candidates.

    ``pv_int4`` selects the BF16 or packed-INT4 value path. ``decode=True``
    returns split-reduction candidates for a single-query workload; otherwise
    the returned candidates cover prefill/training tiles.
    """

    if not isinstance(pv_int4, bool):
        raise TypeError("pv_int4 must be a Python bool")
    if not isinstance(decode, bool):
        raise TypeError("decode must be a Python bool")
    if decode:
        # Packed V uses one scale per 16-token group. BN16 reuses one scale
        # vector for the whole tile; larger measured tiles add scale traffic
        # and register pressure without improving latency.
        block_ns = (16,) if pv_int4 else (32, 64)
        return tuple(
            Int4AttentionConfig(
                block_m=16,
                block_n=block_n,
                num_warps=num_warps,
                num_stages=1,
                decode_splits=decode_splits,
            )
            for block_n in block_ns
            for num_warps in (4, 8)
            for decode_splits in (1, 2, 4, 8, 16)
        )
    block_ns = (16,) if pv_int4 else (16, 32, 64)
    return tuple(
        Int4AttentionConfig(
            block_m=block_m,
            block_n=block_n,
            num_warps=num_warps,
            num_stages=1,
        )
        for block_m in (16, 32, 64)
        for block_n in block_ns
        for num_warps in (4, 8)
    )


def autotune_attention(
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None = None,
    key_scale: Any | None = None,
    value_scale: Any | None = None,
    attn_mask: Any | None = None,
    is_causal: bool = False,
    scale: float | None = None,
    enable_gqa: bool = False,
    window_size: int | tuple[int, int] | None = None,
    query_position_offset: int = 0,
    head_dim: int | None = None,
    output_dtype: Any | None = None,
    candidates: Iterable[Int4AttentionConfig] | None = None,
    benchmark_db: BenchmarkDatabase | None = None,
    benchmark_db_path: str | Path | None = None,
    warmup_ms: int = 25,
    rep_ms: int = 100,
    rtol: float = 1.0e-3,
    atol: float = 1.0e-3,
    continue_on_error: bool = True,
    use_precompiled: bool | None = None,
    benchmark_runner: AttentionBenchmarkRunner | None = None,
) -> AttentionAutotuneResult:
    """Autotune fused BF16/INT4 attention for the supplied operands.

    Every real device candidate is first checked in FP32 against
    :func:`reference_scaled_dot_product_attention`, then its requested output
    dtype is checked against the correspondingly rounded oracle. Both gates
    use at most ``rtol=atol=1e-3``. Quantization, input allocation, output
    allocation, and workspace allocation are excluded from timing.

    The candidate set covers all four QK/PV representation combinations. The
    representation is inferred from the actual BF16 or packed-INT4 inputs and
    scale tensors. Tuning is eager and must run outside CUDAGraph capture; the
    returned ``best_config`` can subsequently be used with a preallocated
    output/workspace inside a graph.

    Backend selection matches the attention call: ``use_precompiled=None``
    uses installed native artifacts when covered and JIT otherwise, ``True``
    restricts successful candidates to packaged artifacts, and ``False``
    forces JIT.
    """

    torch = _attention_torch()
    if isinstance(warmup_ms, bool) or not isinstance(warmup_ms, int):
        raise TypeError("warmup_ms must be a Python int")
    if isinstance(rep_ms, bool) or not isinstance(rep_ms, int):
        raise TypeError("rep_ms must be a Python int")
    if warmup_ms < 0:
        raise ValueError("warmup_ms must be non-negative")
    if rep_ms <= 0:
        raise ValueError("rep_ms must be positive")
    if not isinstance(continue_on_error, bool):
        raise TypeError("continue_on_error must be a Python bool")
    if use_precompiled is not None and not isinstance(use_precompiled, bool):
        raise TypeError("use_precompiled must be a Python bool or None")
    if not isinstance(is_causal, bool):
        raise TypeError("is_causal must be a Python bool")
    if not isinstance(enable_gqa, bool):
        raise TypeError("enable_gqa must be a Python bool")
    _check_attention_tolerance("rtol", rtol)
    _check_attention_tolerance("atol", atol)
    window = _normalize_window(window_size)
    shape, qk_int4, pv_int4 = _attention_shape_from_inputs(
        torch,
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=head_dim,
        enable_gqa=enable_gqa,
    )
    resolved_output_dtype = torch.bfloat16 if output_dtype is None else output_dtype
    if resolved_output_dtype not in {torch.bfloat16, torch.float32}:
        raise ValueError("output_dtype must be torch.bfloat16 or torch.float32")
    candidate_tuple = _normalize_attention_candidates(
        candidates,
        pv_int4=pv_int4,
        decode=shape.query_length == 1,
    )
    if not candidate_tuple:
        raise LookupError("no attention autotune candidates")

    mode = _attention_mode(qk_int4=qk_int4, pv_int4=pv_int4)
    mask_kind = _attention_mask_kind(torch, attn_mask)
    semantics = {
        **_attention_semantics_metadata(
            shape=shape,
            mode=mode,
            output_dtype=resolved_output_dtype,
            torch=torch,
            device=query.device,
            attn_mask=attn_mask,
            mask_kind=mask_kind,
            is_causal=is_causal,
            scale=scale,
            enable_gqa=enable_gqa,
            window=window,
            query_position_offset=query_position_offset,
            rtol=float(rtol),
            atol=float(atol),
        ),
        "dispatch_preference": (
            "auto" if use_precompiled is None else "precompiled" if use_precompiled else "jit"
        ),
    }
    if benchmark_db is None and benchmark_db_path is not None and Path(benchmark_db_path).exists():
        benchmark_db = BenchmarkDatabase.load(Path(benchmark_db_path))
    existing_records = tuple(benchmark_db.records()) if benchmark_db is not None else ()

    if benchmark_runner is None:
        if query.device.type != "cuda" or not torch.cuda.is_available() or torch.version.hip is None:
            raise RuntimeError("attention autotuning requires a ROCm torch CUDA/HIP device")
        if torch.cuda.is_current_stream_capturing():
            raise RuntimeError("attention autotuning cannot run during CUDAGraph capture")
        expected = reference_scaled_dot_product_attention(
            query,
            key,
            value,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            attn_mask=attn_mask,
            is_causal=is_causal,
            scale=scale,
            enable_gqa=enable_gqa,
            window_size=window,
            query_position_offset=query_position_offset,
            head_dim=head_dim,
            output_dtype=torch.float32,
        )
        runner = lambda candidate, tuned_shape: _benchmark_attention_candidate(
            torch,
            candidate,
            tuned_shape,
            query=query,
            key=key,
            value=value,
            expected=expected,
            query_scale=query_scale,
            key_scale=key_scale,
            value_scale=value_scale,
            attn_mask=attn_mask,
            is_causal=is_causal,
            scale=scale,
            enable_gqa=enable_gqa,
            window=window,
            query_position_offset=query_position_offset,
            head_dim=head_dim,
            output_dtype=resolved_output_dtype,
            warmup_ms=warmup_ms,
            rep_ms=rep_ms,
            rtol=float(rtol),
            atol=float(atol),
            semantics=semantics,
            use_precompiled=use_precompiled,
        )
    else:
        runner = benchmark_runner

    records: list[BenchmarkRecord] = []
    for candidate in candidate_tuple:
        try:
            record = runner(candidate, shape)
        except Exception as exc:
            if not continue_on_error:
                raise
            record = BenchmarkRecord(
                kernel_id=_attention_candidate_id(mode, candidate),
                shape=shape.benchmark_shape,
                runtime_ms=float("inf"),
                tops=0.0,
                iterations=0,
                warmup=warmup_ms,
                success=False,
                notes="attention autotune candidate failed",
                metadata={
                    **semantics,
                    "config": _attention_config_dict(candidate),
                    "config_label": _attention_config_label(candidate),
                    "error": repr(exc),
                },
            )
        records.append(record)

    successful_pairs = tuple(
        (candidate, record)
        for candidate, record in zip(candidate_tuple, records, strict=True)
        if record.success
    )
    if not successful_pairs:
        raise RuntimeError("attention autotune produced no successful benchmark records")
    best_config, best_record = min(
        successful_pairs,
        key=lambda pair: pair[1].runtime_ms,
    )
    updated_db = BenchmarkDatabase((*existing_records, *records))
    if benchmark_db_path is not None:
        updated_db.save(Path(benchmark_db_path))
    return AttentionAutotuneResult(
        shape=shape,
        mode=mode,
        output_dtype="bfloat16" if resolved_output_dtype == torch.bfloat16 else "float32",
        is_causal=is_causal,
        window_size=window,
        query_position_offset=query_position_offset,
        candidates=candidate_tuple,
        records=tuple(records),
        best_config=best_config,
        best_record=best_record,
        benchmark_db=updated_db,
    )


def _attention_torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for attention autotuning") from exc
    return torch


def _check_attention_tolerance(name: str, value: float) -> None:
    if isinstance(value, bool) or not isinstance(value, (int, float)):
        raise TypeError(f"{name} must be a Python float")
    resolved = float(value)
    if not math.isfinite(resolved) or resolved < 0.0:
        raise ValueError(f"{name} must be finite and non-negative")
    if resolved > 1.0e-3:
        raise ValueError(f"{name} must be 1e-3 or stricter")


def _attention_shape_from_inputs(
    torch: Any,
    query: Any,
    key: Any,
    value: Any,
    *,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    head_dim: int | None,
    enable_gqa: bool,
) -> tuple[AttentionShape, bool, bool]:
    if head_dim is not None:
        if isinstance(head_dim, bool) or not isinstance(head_dim, int):
            raise TypeError("head_dim must be a positive Python int or None")
        if head_dim <= 0:
            raise ValueError("head_dim must be positive")
    for name, tensor in (("query", query), ("key", key), ("value", value)):
        if not torch.is_tensor(tensor):
            raise TypeError(f"{name} must be a torch.Tensor")
        if tensor.ndim != 4:
            raise ValueError(f"{name} must have shape (B, H, S, D); got {tuple(tensor.shape)}")
        if not tensor.is_contiguous():
            raise ValueError(f"{name} must be contiguous")
    if query.device != key.device or query.device != value.device:
        raise ValueError("query, key, and value must be on the same device")
    if query.dtype != key.dtype or query.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("query and key must both be bfloat16 or both be packed-int4 uint8")
    if value.dtype not in {torch.bfloat16, torch.uint8}:
        raise ValueError("value must be bfloat16 or grouped packed-int4 uint8")

    qk_int4 = query.dtype == torch.uint8
    pv_int4 = value.dtype == torch.uint8
    batch, query_heads, query_length = (int(query.shape[index]) for index in range(3))
    key_batch, kv_heads, key_length = (int(key.shape[index]) for index in range(3))
    if batch != key_batch or batch != int(value.shape[0]):
        raise ValueError("query, key, and value batch dimensions must match")
    if kv_heads != int(value.shape[1]):
        raise ValueError("key and value head dimensions must match")
    if query_heads != kv_heads:
        if not enable_gqa:
            raise ValueError("query and key/value heads differ; pass enable_gqa=True")
        if kv_heads == 0 or query_heads % kv_heads != 0:
            raise ValueError("enable_gqa requires query_heads to be divisible by key/value heads")

    if qk_int4:
        if int(query.shape[-1]) != int(key.shape[-1]):
            raise ValueError("packed query and key head capacities must match")
        capacity = int(query.shape[-1]) * 2
        logical_head_dim = capacity if head_dim is None else head_dim
        if logical_head_dim <= 0 or logical_head_dim > capacity:
            raise ValueError(f"head_dim must be in [1, {capacity}]; got {logical_head_dim}")
        if capacity % 16 != 0:
            raise ValueError("packed query/key capacity must be a multiple of 16 logical values")
        for name, tensor, expected_shape in (
            ("query_scale", query_scale, (batch, query_heads, query_length)),
            ("key_scale", key_scale, (batch, kv_heads, key_length)),
        ):
            _check_attention_scale_tensor(
                torch,
                name,
                tensor,
                device=query.device,
                expected_shape=expected_shape,
            )
    else:
        if query_scale is not None or key_scale is not None:
            raise ValueError("query_scale and key_scale must be omitted for BF16 query/key")
        logical_head_dim = int(query.shape[-1])
        if int(key.shape[-1]) != logical_head_dim:
            raise ValueError("BF16 query and key head dimensions must match")
        if head_dim is not None and head_dim != logical_head_dim:
            raise ValueError(f"head_dim must match BF16 query/key dimension {logical_head_dim}")

    value_dim = int(value.shape[-1])
    if pv_int4:
        expected_groups = (key_length + 15) // 16
        expected_packed_tokens = expected_groups * 8
        if int(value.shape[-2]) != expected_packed_tokens:
            raise ValueError(
                "packed INT4 value must have shape "
                f"(B, Hkv, {expected_packed_tokens}, Dv) for key length {key_length}"
            )
        _check_attention_scale_tensor(
            torch,
            "value_scale",
            value_scale,
            device=query.device,
            expected_shape=(batch, kv_heads, expected_groups, value_dim),
        )
    else:
        if value_scale is not None:
            raise ValueError("value_scale must be omitted for BF16 value")
        if int(value.shape[-2]) != key_length:
            raise ValueError("BF16 key and value sequence lengths must match")

    if min(batch, query_heads, kv_heads, logical_head_dim, value_dim) <= 0:
        raise ValueError("batch, head counts, head_dim, and value_dim must be positive")
    if query_length <= 0 or key_length <= 0:
        raise ValueError("attention autotuning requires non-empty query and key sequences")
    return (
        AttentionShape(
            batch=batch,
            query_heads=query_heads,
            kv_heads=kv_heads,
            query_length=query_length,
            key_length=key_length,
            head_dim=logical_head_dim,
            value_dim=value_dim,
        ),
        qk_int4,
        pv_int4,
    )


def _check_attention_scale_tensor(
    torch: Any,
    name: str,
    tensor: Any,
    *,
    device: Any,
    expected_shape: tuple[int, ...],
) -> None:
    if not torch.is_tensor(tensor):
        raise TypeError(f"{name} must be a torch.Tensor")
    if tensor.device != device or tensor.dtype != torch.bfloat16:
        raise ValueError(f"{name} must be BF16 on device {device}")
    if tuple(tensor.shape) != expected_shape:
        raise ValueError(f"{name} must have shape {expected_shape}; got {tuple(tensor.shape)}")
    if not tensor.is_contiguous():
        raise ValueError(f"{name} must be contiguous")


def _normalize_attention_candidates(
    candidates: Iterable[Int4AttentionConfig] | None,
    *,
    pv_int4: bool,
    decode: bool,
) -> tuple[Int4AttentionConfig, ...]:
    values = default_attention_candidates(pv_int4=pv_int4, decode=decode) if candidates is None else tuple(candidates)
    normalized: list[Int4AttentionConfig] = []
    seen: set[Int4AttentionConfig] = set()
    for candidate in values:
        if not isinstance(candidate, Int4AttentionConfig):
            raise TypeError("attention candidates must be Int4AttentionConfig instances")
        if candidate in seen:
            continue
        seen.add(candidate)
        normalized.append(candidate)
    return tuple(normalized)


def _attention_mode(*, qk_int4: bool, pv_int4: bool) -> str:
    return f"{'int4' if qk_int4 else 'bf16'}-{'int4' if pv_int4 else 'bf16'}"


def _attention_config_dict(config: Int4AttentionConfig) -> dict[str, int]:
    return {
        "block_m": config.block_m,
        "block_n": config.block_n,
        "num_warps": config.num_warps,
        "num_stages": config.num_stages,
        "decode_splits": config.decode_splits,
    }


def _attention_config_label(config: Int4AttentionConfig) -> str:
    return (
        f"BM{config.block_m}_BN{config.block_n}_W{config.num_warps}_"
        f"S{config.num_stages}_DS{config.decode_splits}"
    )


def _attention_candidate_id(mode: str, config: Int4AttentionConfig) -> str:
    return f"attention_{mode}_{_attention_config_label(config).lower()}"


def _attention_mask_kind(torch: Any, attn_mask: Any | None) -> str:
    if attn_mask is None:
        return "none"
    if not torch.is_tensor(attn_mask):
        raise TypeError("attn_mask must be a torch.Tensor")
    if attn_mask.dtype == torch.bool:
        return "boolean"
    if attn_mask.dtype in {torch.bfloat16, torch.float32}:
        return "additive"
    raise ValueError("attn_mask must have bool, bfloat16, or float32 dtype")


def _attention_semantics_metadata(
    *,
    shape: AttentionShape,
    mode: str,
    output_dtype: Any,
    torch: Any,
    device: Any,
    attn_mask: Any | None,
    mask_kind: str,
    is_causal: bool,
    scale: float | None,
    enable_gqa: bool,
    window: tuple[int, int] | None,
    query_position_offset: int,
    rtol: float,
    atol: float,
) -> dict[str, Any]:
    if attn_mask is not None and is_causal:
        raise ValueError("attn_mask and is_causal cannot both be set")
    if isinstance(query_position_offset, bool) or not isinstance(query_position_offset, int):
        raise TypeError("query_position_offset must be a non-negative Python int")
    if query_position_offset < 0:
        raise ValueError("query_position_offset must be non-negative")
    if scale is not None:
        if isinstance(scale, bool) or not isinstance(scale, (int, float)):
            raise TypeError("scale must be a Python float or None")
        if not math.isfinite(float(scale)) or float(scale) <= 0.0:
            raise ValueError("scale must be finite and positive")
    if attn_mask is not None:
        if attn_mask.device != device:
            raise ValueError(f"attn_mask must be on device {device}; got {attn_mask.device}")
        if attn_mask.ndim > 4:
            raise ValueError("attn_mask must have at most four dimensions")
        target_shape = (shape.batch, shape.query_heads, shape.query_length, shape.key_length)
        padded_shape = (1,) * (4 - attn_mask.ndim) + tuple(int(value) for value in attn_mask.shape)
        if any(actual not in {1, target} for actual, target in zip(padded_shape, target_shape, strict=True)):
            raise ValueError(f"attn_mask shape {tuple(attn_mask.shape)} is not broadcastable to {target_shape}")
    qk_int4, pv_int4 = mode.split("-")
    return {
        "family": "fused_attention",
        "mode": mode,
        "attention_shape": shape.to_dict(),
        "mask_kind": mask_kind,
        "mask_shape": None if attn_mask is None else list(attn_mask.shape),
        "is_causal": is_causal,
        "window_size": None if window is None else list(window),
        "query_position_offset": query_position_offset,
        "softmax_scale": None if scale is None else float(scale),
        "enable_gqa": enable_gqa,
        "arithmetic": {
            "query_key_storage": "packed_signed_int4" if qk_int4 == "int4" else "bfloat16",
            "value_storage": "packed_signed_int4" if pv_int4 == "int4" else "bfloat16",
            "scale_storage": "bfloat16" if "int4" in {qk_int4, pv_int4} else "none",
            "softmax_accumulator": "float32",
            "timed_output": "bfloat16" if output_dtype == torch.bfloat16 else "float32",
            "validation_output": "float32",
        },
        "numerical_gate": {
            "reference": "representation-matched float32 attention oracle",
            "rtol": rtol,
            "atol": atol,
        },
    }


def _attention_active_pairs(
    shape: AttentionShape,
    *,
    is_causal: bool,
    window: tuple[int, int] | None,
    query_position_offset: int,
) -> int:
    total = 0
    for query_index in range(shape.query_length):
        query_position = query_index + query_position_offset
        lower = 0
        upper = shape.key_length
        if is_causal:
            upper = min(upper, query_position + 1)
        if window is not None:
            left, right = window
            lower = max(lower, query_position - left)
            upper = min(upper, query_position + right + 1)
        total += max(0, upper - lower)
    return total


def _attention_effective_tops(
    shape: AttentionShape,
    runtime_ms: float,
    *,
    is_causal: bool,
    window: tuple[int, int] | None,
    query_position_offset: int,
) -> float:
    operations = (
        2
        * shape.batch
        * shape.query_heads
        * _attention_active_pairs(
            shape,
            is_causal=is_causal,
            window=window,
            query_position_offset=query_position_offset,
        )
        * (shape.head_dim + shape.value_dim)
    )
    return operations / (runtime_ms * 1.0e9)


def _attention_numerical_metrics(
    torch: Any,
    actual: Any,
    expected: Any,
    *,
    rtol: float,
    atol: float,
) -> dict[str, float]:
    difference = (actual.float() - expected.float()).abs()
    expected_float = expected.float()
    expected_norm = torch.linalg.vector_norm(expected_float)
    relative_l2 = torch.linalg.vector_norm(difference) / expected_norm.clamp_min(
        torch.finfo(torch.float32).tiny
    )
    tolerance = atol + rtol * expected_float.abs()
    denominator_floor = max(atol, torch.finfo(torch.float32).tiny)
    return {
        "max_abs_diff": float(difference.max()),
        "max_rel_diff": float((difference / expected_float.abs().clamp_min(denominator_floor)).max()),
        "relative_l2": float(relative_l2),
        "max_tolerance_ratio": float((difference / tolerance.clamp_min(torch.finfo(torch.float32).tiny)).max()),
    }


def _benchmark_attention_candidate(
    torch: Any,
    candidate: Int4AttentionConfig,
    shape: AttentionShape,
    *,
    query: Any,
    key: Any,
    value: Any,
    expected: Any,
    query_scale: Any | None,
    key_scale: Any | None,
    value_scale: Any | None,
    attn_mask: Any | None,
    is_causal: bool,
    scale: float | None,
    enable_gqa: bool,
    window: tuple[int, int] | None,
    query_position_offset: int,
    head_dim: int | None,
    output_dtype: Any,
    warmup_ms: int,
    rep_ms: int,
    rtol: float,
    atol: float,
    semantics: dict[str, Any],
    use_precompiled: bool | None,
) -> BenchmarkRecord:
    out_shape = (shape.batch, shape.query_heads, shape.query_length, shape.value_dim)
    timed_out = torch.empty(out_shape, device=query.device, dtype=output_dtype)
    workspace = None
    if candidate.decode_splits > 1:
        workspace = torch.empty(
            (shape.batch, shape.query_heads, candidate.decode_splits, shape.value_dim + 2),
            device=query.device,
            dtype=torch.float32,
        )
    common_kwargs = {
        "query_scale": query_scale,
        "key_scale": key_scale,
        "value_scale": value_scale,
        "attn_mask": attn_mask,
        "is_causal": is_causal,
        "scale": scale,
        "enable_gqa": enable_gqa,
        "window_size": window,
        "query_position_offset": query_position_offset,
        "head_dim": head_dim,
        "config": candidate,
        "workspace": workspace,
        "use_precompiled": use_precompiled,
    }
    validation_out = torch.empty(out_shape, device=query.device, dtype=torch.float32)
    actual_fp32 = int4_scaled_dot_product_attention(
        query,
        key,
        value,
        output_dtype=torch.float32,
        out=validation_out,
        **common_kwargs,
    )
    torch.testing.assert_close(actual_fp32, expected, rtol=rtol, atol=atol)
    fp32_metrics = _attention_numerical_metrics(
        torch,
        actual_fp32,
        expected,
        rtol=rtol,
        atol=atol,
    )

    def run() -> Any:
        return int4_scaled_dot_product_attention(
            query,
            key,
            value,
            output_dtype=output_dtype,
            out=timed_out,
            **common_kwargs,
        )

    run()
    samples = triton_do_bench_samples(run, warmup_ms=warmup_ms, rep_ms=rep_ms)
    summary = summarize_runtime_samples(samples)
    runtime_ms = float(summary["runtime_ms_median"])
    rounded_expected = expected if output_dtype == torch.float32 else expected.to(torch.bfloat16)
    torch.testing.assert_close(timed_out, rounded_expected, rtol=rtol, atol=atol)
    timed_metrics = _attention_numerical_metrics(
        torch,
        timed_out,
        rounded_expected,
        rtol=rtol,
        atol=atol,
    )
    mode = str(semantics["mode"])
    return BenchmarkRecord(
        kernel_id=_attention_candidate_id(mode, candidate),
        shape=shape.benchmark_shape,
        runtime_ms=runtime_ms,
        tops=_attention_effective_tops(
            shape,
            runtime_ms,
            is_causal=is_causal,
            window=window,
            query_position_offset=query_position_offset,
        ),
        iterations=int(summary["sample_count"]),
        warmup=warmup_ms,
        max_abs_diff=timed_metrics["max_abs_diff"],
        max_rel_diff=timed_metrics["max_rel_diff"],
        notes="prepacked inputs; preallocated output/workspace; quantization and allocations excluded",
        metadata={
            **semantics,
            "config": _attention_config_dict(candidate),
            "config_label": _attention_config_label(candidate),
            "timing_backend": "triton.testing.do_bench",
            "warmup_ms": warmup_ms,
            "rep_ms": rep_ms,
            "torch_version": str(torch.__version__),
            "torch_hip": str(torch.version.hip),
            "device": torch.cuda.get_device_name(query.device),
            "numerics": {
                "float32_validation_output": fp32_metrics,
                "timed_output_vs_rounded_oracle": timed_metrics,
            },
            **summary,
        },
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
    output_dtype: Any | None = None,
    continue_on_error: bool = True,
    benchmark_runner: RaggedBenchmarkRunner | None = None,
) -> RaggedAutotuneResult:
    """Autotune Triton-JIT ragged int4 dot kernels for one runtime shape.

    ``RaggedDotMode.FWD`` tunes the M-ragged forward path where ``group_sizes``
    must partition ``M``. ``RaggedDotMode.BWD`` tunes the K-ragged backward-style path
    where ``group_sizes`` partitions the logical reduction work ``K`` across
    groups. Backward synthetic operands are padded to ``k_capacity`` per group,
    which defaults to ``max(group_sizes)`` and is rounded up to an even value
    for packed int4 storage. ``output_dtype`` is forwarded to the backward API;
    when omitted, each candidate uses BF16 for ``split_k=1`` and FP32 for
    ``split_k>1``. Forward candidates always use BF16.
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
            output_dtype=output_dtype,
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
    return ((physical_k_capacity + 1) // 2) * 2


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
        RaggedBwdDotConfig(block_m=64, block_n=64, block_k=64, split_k=1, num_warps=4, num_stages=3),
        RaggedBwdDotConfig(block_m=128, block_n=64, block_k=64, split_k=1, num_warps=8, num_stages=3),
        RaggedBwdDotConfig(block_m=64, block_n=256, block_k=64, split_k=1, num_warps=8, num_stages=3),
        RaggedBwdDotConfig(block_m=64, block_n=256, block_k=128, split_k=1, num_warps=8, num_stages=3),
        RaggedBwdDotConfig(block_m=128, block_n=128, block_k=64, split_k=1, num_warps=8, num_stages=3),
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
    output_dtype: Any,
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
        "out": torch.empty((groups, m, n), device="cuda", dtype=output_dtype),
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
    output_dtype: Any | None,
) -> BenchmarkRecord:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for ragged-dot autotuning") from exc
    if not torch.cuda.is_available() or torch.version.hip is None:
        raise RuntimeError("ragged-dot autotuning requires a ROCm torch CUDA/HIP device")

    torch.manual_seed(_stable_seed(f"{candidate.kernel_id}-{m},{n},{k_capacity}-{group_sizes}"))
    if candidate.mode is RaggedDotMode.FWD:
        if output_dtype not in {None, torch.bfloat16}:
            raise ValueError("forward ragged-dot autotuning supports torch.bfloat16 output only")
        resolved_output_dtype = torch.bfloat16
    else:
        if not isinstance(candidate.config, RaggedBwdDotConfig):
            raise TypeError("backward ragged-dot candidate must use RaggedBwdDotConfig")
        resolved_output_dtype = output_dtype or (
            torch.bfloat16 if candidate.config.split_k == 1 else torch.float32
        )
        if resolved_output_dtype not in {torch.bfloat16, torch.float32}:
            raise ValueError(
                "backward ragged-dot output_dtype must be torch.bfloat16 or torch.float32"
            )
        if candidate.config.split_k > 1 and resolved_output_dtype != torch.float32:
            raise ValueError("backward BF16 output requires split_k=1")

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
            output_dtype=resolved_output_dtype,
        )
    )
    uses_even_k_fast_path = _ragged_uses_even_k_fast_path(
        torch,
        candidate=candidate,
        logical_k=shape.k,
        group_sizes_tensor=tensors["group_sizes"],
    )
    bwd_group_info = (
        prepare_ragged_bwd_group_info(
            tensors["group_sizes"],
            k_capacity=k_capacity,
            scale=candidate.scale,
            config=candidate.config,
        )
        if candidate.mode is RaggedDotMode.BWD
        else None
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
                use_native=False,
            )
        if not isinstance(candidate.config, RaggedBwdDotConfig):
            raise TypeError("backward ragged-dot candidate must use RaggedBwdDotConfig")
        return ragged_dot_int4_bwd(
            tensors["lhs"],
            tensors["rhs"],
            None,
            group_info=bwd_group_info,
            a_scale=tensors["a_scale"],
            b_scale=tensors["b_scale"],
            scale=candidate.scale,
            config=candidate.config,
            layout=candidate.layout,
            out=tensors["out"],
            output_dtype=resolved_output_dtype,
            use_native=False,
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
        "output_dtype": "bfloat16" if resolved_output_dtype == torch.bfloat16 else "float32",
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

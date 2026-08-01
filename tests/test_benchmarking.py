import argparse
import json
from pathlib import Path
from types import SimpleNamespace

import pytest

from scripts.benchmark_attention import benchmark_cases as attention_benchmark_cases
from scripts.benchmark_attention import build_parser as build_attention_benchmark_parser
from scripts.benchmark_attention import default_cases as default_attention_benchmark_cases
from scripts.benchmark_generated import (
    build_parser,
    configure_extracted_native_root,
    parse_shape,
    validation_tolerances,
)

from amd_strix_halo_kernels.benchmarking import (
    BenchmarkDatabase,
    BenchmarkRecord,
    BenchmarkShape,
    summarize_runtime_samples,
    tops_for_runtime,
)
from amd_strix_halo_kernels.autotune import _attention_numerical_metrics as attention_numerical_metrics
from amd_strix_halo_kernels.heuristics import choose_kernel, estimate_kernel_score, kernel_supports_shape
from amd_strix_halo_kernels.metadata import (
    ACC_DTYPE,
    ARCH,
    Epilogue,
    GemmLayout,
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


def test_benchmark_generated_supports_timing_only_and_strict_bf16_validation() -> None:
    args = build_parser().parse_args(
        [
            "--validation-device",
            "none",
            "--scale",
            "sc256",
            "--split-k",
            "1",
            "--output-dtype",
            "bfloat16",
            "--even-k-only",
        ]
    )

    assert args.validation_device == "none"
    assert (args.scale, args.split_k, args.output_dtype, args.even_k_only) == (
        ["sc256"],
        [1],
        ["bfloat16"],
        True,
    )
    assert validation_tolerances(SimpleNamespace(output_dtype="bfloat16")) == (1.0e-3, 1.0e-3)


def test_benchmark_generated_accepts_int4_output_with_strict_validation() -> None:
    args = build_parser().parse_args(["--output-dtype", "int4"])

    assert args.output_dtype == ["int4"]
    assert validation_tolerances(SimpleNamespace(output_dtype="int4")) == (1.0e-3, 1.0e-3)


def test_attention_training_cases_are_selectable_but_not_in_default_sweep() -> None:
    default_names = {case.name for case in default_attention_benchmark_cases()}
    all_names = {case.name for case in attention_benchmark_cases()}

    assert default_names == {"prefill-512", "decode-2048", "local-128"}
    assert all_names - default_names == {"train-gqa-2048", "train-gqa-local-128"}
    args = build_attention_benchmark_parser().parse_args(
        ["--case", "train-gqa-2048", "--case", "train-gqa-local-128"]
    )
    assert args.case == ["train-gqa-2048", "train-gqa-local-128"]


def test_attention_benchmark_reports_absolute_and_clamped_relative_error() -> None:
    torch = pytest.importorskip("torch")
    expected = torch.tensor([2.0, 0.0], dtype=torch.float32)
    actual = torch.tensor([2.001, 0.0005], dtype=torch.float32)

    metrics = attention_numerical_metrics(torch, actual, expected, rtol=1.0e-3, atol=1.0e-3)

    assert metrics["max_abs_diff"] == pytest.approx(1.0e-3, abs=1.0e-6)
    assert metrics["max_rel_diff"] == pytest.approx(0.5, abs=1.0e-6)
    assert metrics["relative_l2"] < 1.0e-3
    assert metrics["max_tolerance_ratio"] < 1.0


def test_configure_extracted_native_root_overrides_editable_package_lookup(tmp_path) -> None:
    package_root = tmp_path / "amd_strix_halo_kernels"
    package_root.mkdir()
    (package_root / "libdispatch.so").touch()
    extracted = SimpleNamespace(name=str(tmp_path))
    native = SimpleNamespace(NATIVE_LIBRARY_NAME="libdispatch.so", package_root=lambda: Path("editable"))

    configured = configure_extracted_native_root(native, extracted)

    assert configured == package_root
    assert native.package_root() == package_root


@pytest.mark.parametrize("script_name", ["tune_gemm.py", "tune_relu2.py", "tune_swiglu.py"])
def test_dense_tuners_select_mixed_specialization_from_lhs_dtype(script_name: str) -> None:
    source = (REPO_ROOT / "scripts" / script_name).read_text()

    assert "A_BF16=kernel.a_dtype is OperandDType.BF16" in source
    assert "make_mixed_kernel_id" in source


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


def test_training_projection_benchmark_matches_exact_dispatch() -> None:
    data = json.loads((REPO_ROOT / "benchmarks" / "gfx1151_projection_training.json").read_text())
    records = data["records"]
    assert data["arithmetic"] == {
        "lhs_storage": "packed signed INT4",
        "rhs_storage": "packed signed INT4",
        "scale_storage": "BF16",
        "scale_granularity": "independent lhs/rhs subchannel-256 along K",
        "dot_accumulator": "INT32 within each 256-element subchannel",
        "scaled_accumulator": "FP32 across subchannels",
        "output_storage": "BF16 (single final rounding)",
        "split_k": 1,
    }
    assert {record["operation"] for record in records} == {
        "combined_qkv_gate_forward",
        "combined_qkv_gate_dx",
        "combined_qkv_gate_dw",
        "output_forward",
        "output_dx",
        "output_dw",
        "fallback_packed_qkv_forward",
    }
    assert data["numerical_gate"] == {
        "atol": 1.0e-3,
        "rtol": 1.0e-3,
        "winner_max_abs_diff": 0.0,
        "winner_max_rel_diff": 0.0,
    }

    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 256)
    for record in records:
        m, n, k = record["shape"]
        selected = default_registry.select(
            dtype=OperandDType.INT4,
            layout=GemmLayout(record["layout"].lower()),
            scale=scale,
            epilogue=Epilogue.NONE,
            m=m,
            n=n,
            k=k,
            split_k=1,
        )
        assert selected.kernel_id == record["kernel_id"]
        assert record["runtime_ms"] > 0.0
        assert record["tops"] > 0.0


def test_attention_training_benchmark_records_dtypes_and_numerical_gates() -> None:
    data = json.loads((REPO_ROOT / "benchmarks" / "gfx1151_attention_training.json").read_text())

    assert data["summary"]["count"] == 36
    assert data["summary"]["failures"] == 0
    assert len(data["winners"]) == 2
    for record in data["records"]:
        assert record["arithmetic"] == {
            "query_key_storage": "bfloat16",
            "value_storage": "bfloat16",
            "scale_storage": "none",
            "softmax_accumulator": "float32",
            "timed_output": "bfloat16",
            "validation_output": "float32",
        }
        numerics = record["numerics"]
        assert (numerics["rtol"], numerics["atol"]) == (1.0e-3, 1.0e-3)
        assert numerics["float32_validation_output"]["max_tolerance_ratio"] <= 1.0
        assert (
            numerics["timed_bfloat16_output_vs_bfloat16_rounded_oracle"]["max_tolerance_ratio"]
            <= 1.0
        )


def test_int4_value_attention_training_benchmark_records_compute_contract() -> None:
    data = json.loads(
        (REPO_ROOT / "benchmarks" / "gfx1151_attention_int4_value_training.json").read_text()
    )

    assert data["summary"]["count"] == 24
    assert data["summary"]["failures"] == 0
    assert len(data["winners"]) == 4
    assert {record["mode"] for record in data["records"]} == {"bf16-int4", "int4-int4"}
    for record in data["records"]:
        arithmetic = record["arithmetic"]
        assert arithmetic["value_storage"] == "packed_signed_int4"
        assert arithmetic["scale_storage"] == "bfloat16"
        assert arithmetic["softmax_accumulator"] == "float32"
        assert arithmetic["timed_output"] == "bfloat16"
        numerics = record["numerics"]
        assert (numerics["rtol"], numerics["atol"]) == (1.0e-3, 1.0e-3)
        assert numerics["float32_validation_output"]["max_tolerance_ratio"] <= 1.0
        assert (
            numerics["timed_bfloat16_output_vs_bfloat16_rounded_oracle"]["max_tolerance_ratio"]
            <= 1.0
        )
    for winner in data["winners"]:
        assert winner["config"]["block_m"] == 64
        assert winner["config"]["block_n"] == 16
        assert winner["config"]["num_warps"] == 4


def test_int4_qk_attention_training_benchmark_records_compute_contract() -> None:
    data = json.loads(
        (REPO_ROOT / "benchmarks" / "gfx1151_attention_int4_qk_training.json").read_text()
    )

    assert data["summary"]["count"] == 2
    assert data["summary"]["failures"] == 0
    assert len(data["winners"]) == 2
    for record in data["records"]:
        assert record["mode"] == "int4-bf16"
        assert record["dispatch_preference"] == "precompiled"
        assert record["arithmetic"] == {
            "query_key_storage": "packed_signed_int4",
            "scale_storage": "bfloat16",
            "softmax_accumulator": "float32",
            "timed_output": "bfloat16",
            "validation_output": "float32",
            "value_storage": "bfloat16",
        }
        numerics = record["numerics"]
        assert (numerics["rtol"], numerics["atol"]) == (1.0e-3, 1.0e-3)
        assert numerics["float32_validation_output"]["max_tolerance_ratio"] <= 1.0
        assert (
            numerics["timed_bfloat16_output_vs_bfloat16_rounded_oracle"][
                "max_tolerance_ratio"
            ]
            <= 1.0
        )


def test_int4_qk_attention_backward_benchmark_records_all_gradients() -> None:
    data = json.loads(
        (REPO_ROOT / "benchmarks" / "gfx1151_attention_backward_training.json").read_text()
    )

    assert len(data["records"]) == 2
    observed_windows = {
        tuple(record["metadata"]["window_size"] or ()) for record in data["records"]
    }
    assert observed_windows == {
        (),
        (127, 0),
    }
    for record in data["records"]:
        assert record["success"] is True
        metadata = record["metadata"]
        assert metadata["phase"] == "backward"
        assert metadata["mode"] == "int4-bf16"
        assert metadata["dispatch_preference"] == "precompiled"
        assert metadata["gradient_dtype"] == "float32"
        assert metadata["numerical_gate"] == {
            "atol": 1.0e-3,
            "reference": "representation-matched float32 attention oracle",
            "rtol": 1.0e-3,
        }
        assert set(metadata["numerics"]) == {"grad_query", "grad_key", "grad_value"}
        for gradient_metrics in metadata["numerics"].values():
            assert gradient_metrics["max_tolerance_ratio"] <= 1.0

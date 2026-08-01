import json
from dataclasses import replace
from pathlib import Path

import pytest

from amd_strix_halo_kernels.attention import Int4AttentionConfig
from amd_strix_halo_kernels.autotune import (
    AttentionShape,
    RaggedAutotuneCandidate,
    RaggedDotMode,
    _normalize_ragged_k_capacity,
    artifact_supports_shape,
    autotune,
    autotune_attention,
    autotune_ragged_dot,
    default_attention_candidates,
    default_ragged_dot_candidates,
    find_autotune_candidates,
    generated_shape_for_kernel,
)
from amd_strix_halo_kernels.benchmarking import BenchmarkDatabase, BenchmarkRecord, BenchmarkShape
from amd_strix_halo_kernels.heuristics import choose_kernel
from amd_strix_halo_kernels.metadata import (
    ACC_DTYPE,
    ARCH,
    Epilogue,
    GemmLayout,
    KernelMetadata,
    OperandDType,
    OutputDType,
    SCALE_DTYPE_BF16,
    ScaleMode,
    ScaleSpec,
    TileConfig,
)
from amd_strix_halo_kernels.ragged import RaggedBwdDotConfig, RaggedDotConfig
from amd_strix_halo_kernels.registry import KernelRegistry


def make_kernel(kernel_id: str, tile: TileConfig) -> KernelMetadata:
    return KernelMetadata(
        kernel_id=kernel_id,
        arch=ARCH,
        a_dtype=OperandDType.INT4,
        b_dtype=OperandDType.INT4,
        acc_dtype=ACC_DTYPE,
        output_dtype="float32",
        scale_dtype=SCALE_DTYPE_BF16,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        tile=tile,
        triton_kernel_name=f"triton_{kernel_id}",
    )


def write_metadata(root: Path, kernel: KernelMetadata, shape: BenchmarkShape, *, runtime_shape: bool = False) -> None:
    metadata_dir = root / "kernels" / "amdgcn"
    metadata_dir.mkdir(parents=True, exist_ok=True)
    metadata = {"generation_shape": shape.to_dict(), "launch_metadata": {"num_warps": kernel.tile.num_warps}}
    if runtime_shape:
        metadata["shape_specialization"] = "runtime"
    (metadata_dir / f"{kernel.kernel_id}.json").write_text(json.dumps(metadata))


def test_generated_shape_for_kernel_reads_artifact_metadata(tmp_path) -> None:
    kernel = make_kernel("kernel", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    shape = BenchmarkShape(4096, 4096, 4096)
    write_metadata(tmp_path, kernel, shape)

    assert generated_shape_for_kernel(kernel, root=tmp_path) == shape


def test_find_autotune_candidates_requires_exact_generated_shape(tmp_path) -> None:
    shape = BenchmarkShape(4096, 4096, 4096)
    matching = make_kernel("matching", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    other_shape = make_kernel("other_shape", TileConfig(64, 256, 32, 4, 16, 3, 2, True))
    masked = make_kernel("masked", TileConfig(64, 512, 32, 4, 16, 3, 2, False))
    transposed = replace(make_kernel("transposed", TileConfig(64, 512, 32, 4, 16, 3, 2, True)), layout=GemmLayout.NT)
    registry = KernelRegistry([matching, other_shape, masked, transposed])
    write_metadata(tmp_path, matching, shape)
    write_metadata(tmp_path, other_shape, BenchmarkShape(2048, 4096, 4096))
    write_metadata(tmp_path, masked, BenchmarkShape(4096, 4096, 4097))
    write_metadata(tmp_path, transposed, shape)

    candidates = find_autotune_candidates(
        m=shape.m,
        n=shape.n,
        k=shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        registry=registry,
        root=tmp_path,
    )

    assert candidates == (matching,)
    assert (
        find_autotune_candidates(
            m=shape.m,
            n=shape.n,
            k=shape.k,
            dtype=OperandDType.INT4,
            layout=GemmLayout.NT,
            scale=ScaleSpec(ScaleMode.PER_CHANNEL),
            epilogue=Epilogue.NONE,
            registry=registry,
            root=tmp_path,
        )
        == (transposed,)
    )


def test_runtime_shape_artifacts_are_autotune_candidates_for_compatible_shapes(tmp_path) -> None:
    compile_shape = BenchmarkShape(64, 512, 32)
    runtime_shape = BenchmarkShape(128, 1024, 64)
    generic = make_kernel("generic", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    registry = KernelRegistry([generic])
    write_metadata(tmp_path, generic, compile_shape, runtime_shape=True)

    assert artifact_supports_shape(generic, runtime_shape, root=tmp_path) is True
    assert find_autotune_candidates(
        m=runtime_shape.m,
        n=runtime_shape.n,
        k=runtime_shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        registry=registry,
        root=tmp_path,
    ) == (generic,)


def test_runtime_shape_artifacts_reject_non_tile_multiple_shapes(tmp_path) -> None:
    compile_shape = BenchmarkShape(64, 512, 32)
    runtime_shape = BenchmarkShape(96, 640, 32)
    generic = make_kernel("generic", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    registry = KernelRegistry([generic])
    write_metadata(tmp_path, generic, compile_shape, runtime_shape=True)

    assert artifact_supports_shape(generic, runtime_shape, root=tmp_path) is False
    assert (
        find_autotune_candidates(
            m=runtime_shape.m,
            n=runtime_shape.n,
            k=runtime_shape.k,
            dtype=OperandDType.INT4,
            scale=ScaleSpec(ScaleMode.PER_CHANNEL),
            epilogue=Epilogue.NONE,
            registry=registry,
            root=tmp_path,
        )
        == ()
    )


def test_find_autotune_candidates_filters_output_contract(tmp_path) -> None:
    shape = BenchmarkShape(64, 256, 256)
    tile = TileConfig(64, 256, 64, 1, 8, 3, 1, True)
    bf16 = replace(make_kernel("bf16", tile), output_dtype="bfloat16")
    int4 = replace(
        make_kernel("int4", tile),
        output_dtype="int4",
        output_scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
    )
    registry = KernelRegistry([bf16, int4])
    write_metadata(tmp_path, bf16, shape, runtime_shape=True)
    write_metadata(tmp_path, int4, shape, runtime_shape=True)

    assert find_autotune_candidates(
        m=shape.m,
        n=shape.n,
        k=shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        output_dtype=OutputDType.INT4,
        registry=registry,
        root=tmp_path,
    ) == (int4,)
    assert find_autotune_candidates(
        m=shape.m,
        n=shape.n,
        k=shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        output_dtype=OutputDType.BF16,
        registry=registry,
        root=tmp_path,
    ) == (bf16,)


def test_dense_autotune_output_contract_rejects_invalid_scale() -> None:
    common = {
        "m": 64,
        "n": 256,
        "k": 256,
        "dtype": OperandDType.INT4,
        "scale": ScaleSpec(ScaleMode.PER_CHANNEL),
        "epilogue": Epilogue.NONE,
    }
    with pytest.raises(ValueError, match="explicit output_dtype"):
        find_autotune_candidates(
            **common,
            output_scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        )
    with pytest.raises(ValueError, match="subchannel-256"):
        find_autotune_candidates(
            **common,
            output_dtype=OutputDType.INT4,
            output_scale=ScaleSpec(ScaleMode.SUBCHANNEL, 128),
        )


def _cpu_attention_inputs(*, query_heads: int = 4, kv_heads: int = 2):
    torch = pytest.importorskip("torch")
    query = torch.zeros((1, query_heads, 5, 32), dtype=torch.bfloat16)
    key = torch.zeros((1, kv_heads, 7, 32), dtype=torch.bfloat16)
    value = torch.zeros((1, kv_heads, 7, 16), dtype=torch.bfloat16)
    return torch, query, key, value


@pytest.mark.parametrize(
    ("pv_int4", "decode", "expected_count"),
    [(False, False, 18), (True, False, 6), (False, True, 20), (True, True, 10)],
)
def test_default_attention_candidates_cover_value_modes_and_decode(
    pv_int4,
    decode,
    expected_count,
) -> None:
    candidates = default_attention_candidates(pv_int4=pv_int4, decode=decode)

    assert len(candidates) == expected_count
    assert len(set(candidates)) == expected_count
    if pv_int4:
        assert {candidate.block_n for candidate in candidates} == {16}
    if not decode:
        assert all(candidate.decode_splits == 1 for candidate in candidates)


def test_autotune_attention_selects_fastest_candidate_and_persists(tmp_path) -> None:
    _, query, key, value = _cpu_attention_inputs()
    slow = Int4AttentionConfig(block_m=16, block_n=32)
    fast = Int4AttentionConfig(block_m=32, block_n=64)
    database_path = tmp_path / "attention.json"
    old_record = BenchmarkRecord(
        "old",
        BenchmarkShape(1, 1, 1),
        runtime_ms=3.0,
        tops=1.0,
        iterations=1,
        warmup=1,
    )

    def runner(candidate: Int4AttentionConfig, shape: AttentionShape) -> BenchmarkRecord:
        runtime_ms = 2.0 if candidate == slow else 1.0
        return BenchmarkRecord(
            f"candidate-{candidate.block_m}",
            shape.benchmark_shape,
            runtime_ms=runtime_ms,
            tops=10.0 / runtime_ms,
            iterations=3,
            warmup=1,
        )

    result = autotune_attention(
        query,
        key,
        value,
        enable_gqa=True,
        window_size=(3, 1),
        candidates=(slow, fast, fast),
        benchmark_db=BenchmarkDatabase((old_record,)),
        benchmark_db_path=database_path,
        warmup_ms=1,
        rep_ms=2,
        benchmark_runner=runner,
    )

    assert result.shape == AttentionShape(1, 4, 2, 5, 7, 32, 16)
    assert result.mode == "bf16-bf16"
    assert result.output_dtype == "bfloat16"
    assert result.window_size == (3, 1)
    assert result.candidates == (slow, fast)
    assert result.best_config == fast
    assert result.best_record.runtime_ms == 1.0
    assert BenchmarkDatabase.load(database_path).records() == (old_record, *result.records)


def test_autotune_attention_infers_packed_int4_mode_with_custom_runner() -> None:
    torch = pytest.importorskip("torch")
    query = torch.zeros((1, 2, 5, 32), dtype=torch.uint8)
    key = torch.zeros((1, 1, 7, 32), dtype=torch.uint8)
    value = torch.zeros((1, 1, 8, 17), dtype=torch.uint8)
    query_scale = torch.ones((1, 2, 5), dtype=torch.bfloat16)
    key_scale = torch.ones((1, 1, 7), dtype=torch.bfloat16)
    value_scale = torch.ones((1, 1, 1, 17), dtype=torch.bfloat16)
    config = Int4AttentionConfig(block_m=16, block_n=16)

    result = autotune_attention(
        query,
        key,
        value,
        query_scale=query_scale,
        key_scale=key_scale,
        value_scale=value_scale,
        head_dim=63,
        enable_gqa=True,
        candidates=(config,),
        benchmark_runner=lambda candidate, shape: BenchmarkRecord(
            "packed",
            shape.benchmark_shape,
            runtime_ms=1.0,
            tops=1.0,
            iterations=1,
            warmup=1,
        ),
    )

    assert result.mode == "int4-int4"
    assert result.shape == AttentionShape(1, 2, 1, 5, 7, 63, 17)


def test_autotune_attention_records_candidate_failures() -> None:
    _, query, key, value = _cpu_attention_inputs(query_heads=2, kv_heads=2)
    failing = Int4AttentionConfig(block_m=16, block_n=32)
    passing = Int4AttentionConfig(block_m=32, block_n=64)

    def runner(candidate: Int4AttentionConfig, shape: AttentionShape) -> BenchmarkRecord:
        if candidate == failing:
            raise RuntimeError("candidate failed")
        return BenchmarkRecord(
            "passing",
            shape.benchmark_shape,
            runtime_ms=1.0,
            tops=2.0,
            iterations=1,
            warmup=1,
        )

    result = autotune_attention(
        query,
        key,
        value,
        candidates=(failing, passing),
        benchmark_runner=runner,
    )

    assert [record.success for record in result.records] == [False, True]
    assert result.best_config == passing
    assert "candidate failed" in result.records[0].metadata["error"]
    assert result.records[0].metadata["numerical_gate"] == {
        "reference": "representation-matched float32 attention oracle",
        "rtol": 1.0e-3,
        "atol": 1.0e-3,
    }


def test_autotune_attention_rejects_weak_tolerances_and_all_failures() -> None:
    _, query, key, value = _cpu_attention_inputs(query_heads=2, kv_heads=2)
    config = Int4AttentionConfig(block_m=16, block_n=32)
    runner = lambda candidate, shape: (_ for _ in ()).throw(RuntimeError("boom"))

    with pytest.raises(ValueError, match="rtol must be 1e-3 or stricter"):
        autotune_attention(
            query,
            key,
            value,
            rtol=2.0e-3,
            candidates=(config,),
            benchmark_runner=runner,
        )
    with pytest.raises(TypeError, match="warmup_ms must be a Python int"):
        autotune_attention(
            query,
            key,
            value,
            warmup_ms=True,
            candidates=(config,),
            benchmark_runner=runner,
        )
    with pytest.raises(TypeError, match="use_precompiled"):
        autotune_attention(
            query,
            key,
            value,
            candidates=(config,),
            use_precompiled=1,
            benchmark_runner=runner,
        )
    with pytest.raises(RuntimeError, match="no successful"):
        autotune_attention(
            query,
            key,
            value,
            candidates=(config,),
            benchmark_runner=runner,
        )


def test_autotune_records_best_kernel_and_can_feed_heuristics(tmp_path) -> None:
    shape = BenchmarkShape(4096, 4096, 4096)
    slow = make_kernel("slow", TileConfig(64, 512, 32, 4, 8, 3, 2, True))
    fast = make_kernel("fast", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    registry = KernelRegistry([slow, fast])
    write_metadata(tmp_path, slow, shape)
    write_metadata(tmp_path, fast, shape)
    db_path = tmp_path / "benchmarks.json"

    def runner(kernel: KernelMetadata, tuned_shape: BenchmarkShape) -> BenchmarkRecord:
        tops = 60.0 if kernel.kernel_id == "slow" else 65.0
        return BenchmarkRecord(
            kernel_id=kernel.kernel_id,
            shape=tuned_shape,
            runtime_ms=1.0,
            tops=tops,
            iterations=5,
            warmup=1,
            metadata={"source": "fake"},
        )

    result = autotune(
        m=shape.m,
        n=shape.n,
        k=shape.k,
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        registry=registry,
        root=tmp_path,
        benchmark_db_path=db_path,
        benchmark_runner=runner,
    )

    assert result.best_kernel == fast
    assert result.best_record.tops == 65.0
    assert BenchmarkDatabase.load(db_path).best_record(fast, shape) == result.best_record
    assert (
        choose_kernel(
            m=shape.m,
            n=shape.n,
            k=shape.k,
            dtype=OperandDType.INT4,
            scale=ScaleSpec(ScaleMode.PER_CHANNEL),
            epilogue=Epilogue.NONE,
            registry=registry,
            benchmark_db=result.benchmark_db,
        )
        == fast
    )


def test_autotune_reports_missing_shape_specific_artifacts(tmp_path) -> None:
    kernel = make_kernel("kernel", TileConfig(64, 512, 32, 4, 16, 3, 2, True))
    registry = KernelRegistry([kernel])

    with pytest.raises(LookupError, match="no pregenerated kernels"):
        autotune(
            m=4096,
            n=4096,
            k=4096,
            dtype=OperandDType.INT4,
            scale=ScaleSpec(ScaleMode.PER_CHANNEL),
            epilogue=Epilogue.NONE,
            registry=registry,
            root=tmp_path,
            benchmark_runner=lambda _kernel, shape: BenchmarkRecord("kernel", shape, 1.0, 1.0, 1, 1),
        )


def test_default_ragged_dot_candidates_include_forward_and_backward_modes() -> None:
    fwd = default_ragged_dot_candidates(RaggedDotMode.FWD, layout=GemmLayout.TT, scale=ScaleSpec(ScaleMode.PER_CHANNEL))
    bwd = default_ragged_dot_candidates(
        RaggedDotMode.BWD,
        layout=GemmLayout.NT,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        split_ks=(1, 4),
    )

    assert fwd
    assert bwd
    assert all(candidate.mode is RaggedDotMode.FWD for candidate in fwd)
    assert all(candidate.layout is GemmLayout.TT for candidate in fwd)
    assert {candidate.config.split_k for candidate in bwd if isinstance(candidate.config, RaggedBwdDotConfig)} == {1, 4}


def test_default_ragged_int4_output_candidates_encode_contract() -> None:
    candidates = default_ragged_dot_candidates(
        RaggedDotMode.FWD,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        epilogue=Epilogue.SWIGLU,
        output_dtype=OutputDType.INT4,
    )

    assert candidates
    assert all(candidate.config.block_n == 256 for candidate in candidates)
    assert all(candidate.output_dtype is OutputDType.INT4 for candidate in candidates)
    assert all(candidate.output_scale == ScaleSpec(ScaleMode.SUBCHANNEL, 256) for candidate in candidates)
    assert all("swiglu_outint4sc256" in candidate.kernel_id for candidate in candidates)


def test_ragged_autotune_rejects_quantized_backward_and_split_bf16() -> None:
    with pytest.raises(ValueError, match="split-K reductions"):
        default_ragged_dot_candidates(
            RaggedDotMode.BWD,
            output_dtype=OutputDType.INT4,
        )

    candidates = default_ragged_dot_candidates(
        RaggedDotMode.BWD,
        split_ks=(1, 2, 4),
        output_dtype=OutputDType.BF16,
    )
    assert candidates
    assert {candidate.config.split_k for candidate in candidates} == {1}

    with pytest.raises(ValueError, match="N to be divisible by 256"):
        autotune_ragged_dot(
            mode=RaggedDotMode.FWD,
            m=64,
            n=128,
            k=256,
            group_sizes=(64,),
            output_dtype=OutputDType.INT4,
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(
                candidate.kernel_id,
                shape,
                1.0,
                1.0,
                1,
                1,
            ),
        )

    with pytest.raises(ValueError, match="block_n=256"):
        autotune_ragged_dot(
            mode=RaggedDotMode.FWD,
            m=64,
            n=256,
            k=256,
            group_sizes=(64,),
            output_dtype=OutputDType.INT4,
            candidates=(RaggedDotConfig(block_n=128),),
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(
                candidate.kernel_id,
                shape,
                1.0,
                1.0,
                1,
                1,
            ),
        )


def test_autotune_ragged_dot_records_best_forward_candidate(tmp_path) -> None:
    shape = BenchmarkShape(64, 128, 256)
    slow = RaggedDotConfig(block_m=16, block_n=64, block_k=32, group_size_tasks=1)
    fast = RaggedDotConfig(block_m=32, block_n=128, block_k=64, group_size_tasks=2)
    db_path = tmp_path / "ragged.json"

    def runner(candidate: RaggedAutotuneCandidate, tuned_shape: BenchmarkShape) -> BenchmarkRecord:
        tops = 12.0 if candidate.config == slow else 18.0
        return BenchmarkRecord(
            kernel_id=candidate.kernel_id,
            shape=tuned_shape,
            runtime_ms=1.0,
            tops=tops,
            iterations=3,
            warmup=1,
            metadata={"fake": True},
        )

    result = autotune_ragged_dot(
        mode=RaggedDotMode.FWD,
        m=shape.m,
        n=shape.n,
        k=shape.k,
        group_sizes=(17, 0, 47),
        layout=GemmLayout.NN,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        candidates=(slow, fast),
        benchmark_db_path=db_path,
        benchmark_runner=runner,
    )

    assert result.shape == shape
    assert result.group_sizes == (17, 0, 47)
    assert result.best_candidate.config == fast
    assert result.best_record.tops == 18.0
    assert BenchmarkDatabase.load(db_path).records() == result.records


def test_autotune_ragged_dot_backward_uses_sum_group_sizes_for_tops_shape() -> None:
    config = RaggedBwdDotConfig(block_m=16, block_n=64, block_k=32, split_k=2)

    def runner(candidate: RaggedAutotuneCandidate, tuned_shape: BenchmarkShape) -> BenchmarkRecord:
        assert candidate.mode is RaggedDotMode.BWD
        assert isinstance(candidate.config, RaggedBwdDotConfig)
        assert tuned_shape == BenchmarkShape(32, 96, 39)
        return BenchmarkRecord(candidate.kernel_id, tuned_shape, runtime_ms=2.0, tops=9.0, iterations=4, warmup=1)

    result = autotune_ragged_dot(
        mode=RaggedDotMode.BWD,
        m=32,
        n=96,
        k=39,
        group_sizes=(7, 0, 32),
        layout=GemmLayout.TN,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        candidates=(config,),
        benchmark_runner=runner,
    )

    assert result.shape == BenchmarkShape(32, 96, 39)
    assert result.best_candidate.config == config


@pytest.mark.parametrize(
    ("k_capacity", "expected"),
    [(None, 426), (425, 426), (426, 426), (512, 512)],
)
def test_backward_ragged_autotune_rounds_capacity_for_packed_int4(
    k_capacity,
    expected,
) -> None:
    assert _normalize_ragged_k_capacity(
        mode=RaggedDotMode.BWD,
        k=1024,
        k_capacity=k_capacity,
        group_sizes=(9, 127, 0, 252, 62, 0, 425, 149),
    ) == expected


def test_autotune_ragged_dot_validates_group_sizes_and_candidate_modes() -> None:
    with pytest.raises(ValueError, match="sum to M"):
        autotune_ragged_dot(
            mode=RaggedDotMode.FWD,
            m=16,
            n=16,
            k=32,
            group_sizes=(4, 5),
            candidates=(RaggedDotConfig(),),
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(candidate.kernel_id, shape, 1.0, 1.0, 1, 1),
        )

    with pytest.raises(ValueError, match="sum to K"):
        autotune_ragged_dot(
            mode=RaggedDotMode.BWD,
            m=16,
            n=16,
            k=32,
            group_sizes=(33,),
            candidates=(RaggedBwdDotConfig(),),
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(candidate.kernel_id, shape, 1.0, 1.0, 1, 1),
        )

    with pytest.raises(ValueError, match="k_capacity"):
        autotune_ragged_dot(
            mode=RaggedDotMode.BWD,
            m=16,
            n=16,
            k=33,
            k_capacity=32,
            group_sizes=(33,),
            candidates=(RaggedBwdDotConfig(),),
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(candidate.kernel_id, shape, 1.0, 1.0, 1, 1),
        )

    with pytest.raises(ValueError, match="candidate mode"):
        autotune_ragged_dot(
            mode=RaggedDotMode.FWD,
            m=16,
            n=16,
            k=32,
            group_sizes=(16,),
            candidates=(
                RaggedAutotuneCandidate(
                    mode=RaggedDotMode.BWD,
                    layout=GemmLayout.NN,
                    scale=ScaleSpec(ScaleMode.PER_CHANNEL),
                    config=RaggedBwdDotConfig(),
                ),
            ),
            benchmark_runner=lambda candidate, shape: BenchmarkRecord(candidate.kernel_id, shape, 1.0, 1.0, 1, 1),
        )


def test_autotune_ragged_dot_keeps_failed_candidates_when_requested() -> None:
    slow = RaggedDotConfig(block_m=16, block_n=64, block_k=32)
    fast = RaggedDotConfig(block_m=32, block_n=64, block_k=32)

    def runner(candidate: RaggedAutotuneCandidate, tuned_shape: BenchmarkShape) -> BenchmarkRecord:
        if candidate.config == slow:
            raise RuntimeError("boom")
        return BenchmarkRecord(candidate.kernel_id, tuned_shape, runtime_ms=1.0, tops=11.0, iterations=2, warmup=1)

    result = autotune_ragged_dot(
        mode=RaggedDotMode.FWD,
        m=16,
        n=64,
        k=32,
        group_sizes=(16,),
        candidates=(slow, fast),
        benchmark_runner=runner,
        continue_on_error=True,
    )

    assert [record.success for record in result.records] == [False, True]
    assert result.best_record.tops == 11.0
    assert "boom" in result.records[0].metadata["error"]

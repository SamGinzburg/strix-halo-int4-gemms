from __future__ import annotations

from types import SimpleNamespace

import pytest

from amd_strix_halo_kernels.kda_artifacts import (
    KDA_ARGUMENT_NAMES,
    KDA_FORWARD,
    KdaArtifactJob,
)
from amd_strix_halo_kernels.kda_native import (
    _launch_values,
    _raw_arguments,
    is_precompiled_kda_workload,
    kda_precompiled_cache_tail,
)


class _Pointer:
    def __init__(self, value: int) -> None:
        self.value = value

    def data_ptr(self) -> int:
        return self.value


def test_precompiled_kda_workload_accepts_runtime_batch_heads_and_sequence() -> None:
    values = {
        "batch": 4,
        "sequence": 2048,
        "heads": 32,
        "head_dim": 128,
        "value_dim": 128,
        "value_block": 64,
        "checkpoint_interval": 4,
    }

    assert is_precompiled_kda_workload(**values)
    assert is_precompiled_kda_workload(
        **{**values, "batch": 1, "sequence": 1, "heads": 1}
    )
    assert is_precompiled_kda_workload(
        **{**values, "batch": 7, "sequence": 2047, "heads": 16}
    )
    assert not is_precompiled_kda_workload(**{**values, "sequence": 0})
    assert not is_precompiled_kda_workload(**{**values, "sequence": 2049})
    assert not is_precompiled_kda_workload(**{**values, "value_block": 32})


def test_precompiled_kda_workload_enforces_cache_descriptor_span() -> None:
    values = {
        "batch": 1,
        "sequence": 2048,
        "heads": 254,
        "head_dim": 128,
        "value_dim": 128,
        "value_block": 64,
        "checkpoint_interval": 4,
        "needs_state_cache": True,
    }

    assert is_precompiled_kda_workload(**values)
    assert not is_precompiled_kda_workload(**{**values, "heads": 255})
    # The same 256 batch-head grid is safe at T=1024 because each cache page
    # is half the size, but not at the T=2048 cache boundary.
    assert is_precompiled_kda_workload(
        **{**values, "batch": 8, "heads": 32, "sequence": 1024}
    )
    assert not is_precompiled_kda_workload(
        **{**values, "batch": 8, "heads": 32, "sequence": 2048}
    )
    assert is_precompiled_kda_workload(
        **{
            **values,
            "batch": 8,
            "heads": 32,
            "sequence": 2048,
            "needs_state_cache": False,
        }
    )


def test_qwen36_ci8_profile_covers_production_cache_span() -> None:
    values = {
        "batch": 7,
        "sequence": 2048,
        "heads": 48,
        "head_dim": 128,
        "value_dim": 128,
        "value_block": 64,
        "checkpoint_interval": 8,
        "needs_state_cache": True,
    }

    assert is_precompiled_kda_workload(**values)
    assert not is_precompiled_kda_workload(
        **{**values, "checkpoint_interval": 16}
    )


class _FlatCache:
    def __getitem__(self, index: slice) -> slice:
        return index


class _Cache:
    ndim = 5

    def __init__(self, shape: tuple[int, ...]) -> None:
        self.shape = shape

    def reshape(self, *_shape: int) -> _FlatCache:
        return _FlatCache()


def test_precompiled_kda_cache_tail_uses_runtime_checkpoint_stride() -> None:
    unsplit = _Cache((1, 127, 7, 128, 128))
    assert kda_precompiled_cache_tail(unsplit) is unsplit

    split = _Cache((2, 64, 7, 128, 128))
    tail = kda_precompiled_cache_tail(split)
    assert isinstance(tail, slice)
    assert tail.start == 127 * 7 * 128 * 128

    qwen_job = KdaArtifactJob(KDA_FORWARD, profile="qwen36")
    qwen_split = _Cache((7, 48, 257, 128, 128))
    qwen_tail = kda_precompiled_cache_tail(qwen_split, qwen_job)
    assert isinstance(qwen_tail, slice)
    assert qwen_tail.start == 255 * 257 * 128 * 128

    with pytest.raises(ValueError, match="state_cache must have shape"):
        kda_precompiled_cache_tail(SimpleNamespace(ndim=4))


def test_kda_launch_metadata_accepts_runtime_grid() -> None:
    metadata = {
        "amdgcn_symbol": "kernel_symbol",
        "launch_metadata": {
            "num_warps": 2,
            "shared_memory_bytes": 0,
            "grid_x": 128,
            "grid_y": 2,
            "grid_z": 1,
        },
    }

    symbol, grid, block, shared = _launch_values("kernel", metadata, (7, 2))
    assert symbol == "kernel_symbol"
    assert grid == (7, 2, 1)
    assert block == (64, 1, 1)
    assert shared == 0
    for invalid in ((0, 2), (True, 2), (1,), (2**32, 1)):
        with pytest.raises(ValueError, match="KDA runtime grid"):
            _launch_values("kernel", metadata, invalid)


def test_kda_raw_arguments_follow_metadata_abi() -> None:
    job = KdaArtifactJob(KDA_FORWARD)
    names = KDA_ARGUMENT_NAMES[KDA_FORWARD]
    pointer_count = 13
    arguments = [
        {
            "name": name,
            "kind": "pointer" if index < pointer_count else "scalar",
            "type": "*fp32" if index < pointer_count else ("fp32" if name == "output_scale" else "i32"),
        }
        for index, name in enumerate(names)
    ]
    values = {
        name: _Pointer(index + 1) if index < pointer_count else (0.125 if name == "output_scale" else 128)
        for index, name in enumerate(names)
    }

    raw = _raw_arguments(
        job=job,
        kernel_id="kernel",
        metadata={"kernel_arg_layout": {"arguments": arguments}},
        values=values,
    )

    assert len(raw) == len(names)
    assert raw[0] == ("pointer", 1)
    assert raw[-1] == ("fp32", 0.125)


def test_kda_raw_arguments_reject_metadata_drift_and_missing_tensor() -> None:
    job = KdaArtifactJob(KDA_FORWARD)
    with pytest.raises(RuntimeError, match="invalid KDA runtime ABI"):
        _raw_arguments(
            job=job,
            kernel_id="kernel",
            metadata={"kernel_arg_layout": {"arguments": [{"name": "wrong"}]}},
            values={},
        )

    arguments = [
        SimpleNamespace(name=name)
        for name in KDA_ARGUMENT_NAMES[KDA_FORWARD]
    ]
    # JSON metadata must contain dictionaries, not arbitrary objects.
    with pytest.raises(RuntimeError, match="missing the KDA runtime ABI"):
        _raw_arguments(
            job=job,
            kernel_id="kernel",
            metadata={"kernel_arg_layout": {"arguments": arguments}},
            values={},
        )

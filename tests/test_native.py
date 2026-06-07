from pathlib import Path
from types import SimpleNamespace

import pytest

from amd_strix_halo_kernels.native import (
    _block_size,
    _launch_grid,
    _require_bfloat16_scale,
    _validate_launch_shape,
    amdgcn_metadata_dir,
    amdgcn_metadata_path_for_kernel_id,
    dispatch_runtime_status,
    hsaco_dir,
    hsaco_path_for_kernel_id,
    launch_hsaco,
    native_library_path,
)
from amd_strix_halo_kernels.metadata import Epilogue, KernelSchedule, OperandDType, ScaleMode, ScaleSpec
from amd_strix_halo_kernels.registry import default_registry


def test_native_resource_paths_can_be_rooted_explicitly(tmp_path) -> None:
    assert native_library_path(root=tmp_path) == tmp_path / "libamd_strix_halo_kernels_dispatch.so"
    assert hsaco_dir(root=tmp_path) == tmp_path / "kernels" / "hsaco"
    assert amdgcn_metadata_dir(root=tmp_path) == tmp_path / "kernels" / "amdgcn"
    assert hsaco_path_for_kernel_id("kernel", root=tmp_path) == tmp_path / "kernels" / "hsaco" / "kernel.hsaco"
    assert (
        amdgcn_metadata_path_for_kernel_id("kernel", root=tmp_path)
        == tmp_path / "kernels" / "amdgcn" / "kernel.json"
    )


def test_block_size_uses_generated_num_warps_metadata() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )

    assert _block_size(kernel, {"launch_metadata": {"num_warps": 16}}) == 512


def test_persistent_launch_grid_uses_generated_grid_metadata() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
        schedule=KernelSchedule.PERSISTENT,
    )
    assert _launch_grid(kernel, {"launch_metadata": {"grid_x": 17, "grid_y": 4}}, object()) == (17, 4, 1)


def test_runtime_shape_metadata_accepts_non_generation_shape() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=128,
        n=1024,
        k=64,
    )
    artifact = {
        "shape_specialization": "runtime",
        "generation_shape": {"m": 64, "n": 512, "k": 32},
    }
    a = SimpleNamespace(shape=(128, 32))
    b = SimpleNamespace(shape=(32, 1024))
    c = SimpleNamespace(shape=(128, 1024))

    assert _validate_launch_shape(kernel, artifact, a, b, c) == (128, 1024, 64)


def test_exact_shape_metadata_remains_backwards_compatible() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )
    a = SimpleNamespace(shape=(128, 32))
    b = SimpleNamespace(shape=(32, 1024))
    c = SimpleNamespace(shape=(128, 1024))

    with pytest.raises(ValueError, match="was generated for shape=\\(64, 512, 32\\); got shape=\\(128, 1024, 64\\)"):
        _validate_launch_shape(kernel, {"generation_shape": {"m": 64, "n": 512, "k": 32}}, a, b, c)


def test_runtime_shape_validation_rejects_k_not_multiple_of_split_tile() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT8,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=256,
        k=64,
    )
    a = SimpleNamespace(shape=(64, 96))
    b = SimpleNamespace(shape=(96, 256))
    c = SimpleNamespace(shape=(64, 256))

    with pytest.raises(ValueError, match="BLOCK_K\\*SPLIT_K"):
        _validate_launch_shape(kernel, {"shape_specialization": "runtime"}, a, b, c)


def test_runtime_shape_validation_rejects_m_and_n_not_multiple_of_tile() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )
    a = SimpleNamespace(shape=(65, 16))
    b = SimpleNamespace(shape=(16, 513))
    c = SimpleNamespace(shape=(65, 513))

    with pytest.raises(ValueError, match="M=65 is not divisible"):
        _validate_launch_shape(kernel, {"shape_specialization": "runtime"}, a, b, c)


def test_native_scale_dtype_requires_bfloat16() -> None:
    torch = pytest.importorskip("torch")
    scale = torch.ones((4,), dtype=torch.float32)

    with pytest.raises(ValueError, match="a_scale must have dtype torch.bfloat16"):
        _require_bfloat16_scale(torch, "a_scale", scale)

    bf16_scale = torch.ones((4,), dtype=torch.bfloat16)
    assert _require_bfloat16_scale(torch, "a_scale", bf16_scale) is bf16_scale


def test_dispatch_runtime_status_reports_missing_library(tmp_path) -> None:
    with pytest.raises(RuntimeError, match="native dispatch library"):
        dispatch_runtime_status(tmp_path / "missing.so")


def test_dispatch_runtime_status_loads_built_library_when_available() -> None:
    library = native_library_path()
    if not library.exists():
        pytest.skip("native library is only present in built wheels")

    status = dispatch_runtime_status(library)

    assert status.library_path == Path(library)
    assert status.dispatch_version == 1
    assert status.has_hip_runtime in {False, True}
    assert status.has_linked_kernels == (status.has_compiled_code_objects and status.has_hip_runtime)


def test_launch_hsaco_reports_native_errors_when_library_available(tmp_path) -> None:
    library = native_library_path()
    if not library.exists():
        pytest.skip("native library is only present in built wheels")

    with pytest.raises(RuntimeError):
        launch_hsaco(
            hsaco_path=tmp_path / "missing.hsaco",
            symbol="missing",
            device_index=0,
            grid=(1, 1, 1),
            block=(1, 1, 1),
            shared_memory_bytes=0,
            stream_handle=0,
            a_ptr=1,
            b_ptr=1,
            a_scale_ptr=1,
            b_scale_ptr=1,
            c_ptr=1,
            library_path=library,
        )

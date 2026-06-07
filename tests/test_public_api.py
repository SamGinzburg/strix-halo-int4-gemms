"""Coverage for the public package surface: exports, constants, and the
enum-only contract for layout/mode parameters."""

import importlib

import pytest

import amd_strix_halo_kernels as pkg
from amd_strix_halo_kernels import (
    ACC_DTYPE,
    ARCH,
    RHS_SUBCHANNEL_SCALE_LAYOUT,
    SCALE_DTYPE_BF16,
    SUPPORTED_GEMM_LAYOUTS,
    SUPPORTED_SUBCHANNELS,
    TORCH_GEMM_OP,
    TORCH_OP_NAMESPACE,
    Epilogue,
    GemmLayout,
    KernelSchedule,
    KernelStatus,
    OperandDType,
    RaggedDotMode,
    ScaleMode,
    default_ragged_dot_candidates,
    ragged_dot_int4,
    ragged_dot_int4_bwd,
)


def test_all_exports_are_importable() -> None:
    assert pkg.__all__, "__all__ should not be empty"
    assert len(pkg.__all__) == len(set(pkg.__all__)), "__all__ has duplicate entries"
    for name in pkg.__all__:
        assert hasattr(pkg, name), f"{name} is listed in __all__ but missing from the package"


def test_module_constants() -> None:
    assert ARCH == "gfx1151"
    assert ACC_DTYPE == "int32"
    assert SCALE_DTYPE_BF16 == "bfloat16"
    assert SUPPORTED_SUBCHANNELS == (32, 64, 128, 256)
    assert RHS_SUBCHANNEL_SCALE_LAYOUT == "kgroup_output"
    assert SUPPORTED_GEMM_LAYOUTS == (GemmLayout.NN, GemmLayout.NT, GemmLayout.TN)


def test_torch_op_identifiers() -> None:
    assert TORCH_OP_NAMESPACE == "amd_strix_halo_kernels"
    assert TORCH_GEMM_OP == "amd_strix_halo_kernels::gemm"


def test_enum_members_and_values() -> None:
    assert [m.value for m in OperandDType] == ["int4", "int8"]
    assert [m.value for m in ScaleMode] == ["per_channel", "subchannel"]
    assert [m.value for m in Epilogue] == ["none", "relu2", "swiglu"]
    assert [m.value for m in GemmLayout] == ["nn", "nt", "tn", "tt"]
    assert [m.value for m in KernelSchedule] == ["standard", "persistent"]
    assert [m.value for m in KernelStatus] == ["planned", "generated", "compiled", "benchmarked"]
    assert [m.value for m in RaggedDotMode] == ["fwd", "bwd"]


def test_default_ragged_dot_candidates_rejects_string_mode() -> None:
    with pytest.raises(TypeError, match="mode must be a RaggedDotMode"):
        default_ragged_dot_candidates("fwd")


def test_default_ragged_dot_candidates_rejects_string_layout() -> None:
    with pytest.raises(TypeError, match="layout must be a GemmLayout"):
        default_ragged_dot_candidates(RaggedDotMode.FWD, layout="nn")


def test_ragged_dot_int4_rejects_string_layout() -> None:
    # The layout type check runs before any torch/triton/GPU work, so dummy
    # operands are fine here.
    with pytest.raises(TypeError, match="layout must be a GemmLayout"):
        ragged_dot_int4(None, None, None, layout="nn")


def test_ragged_dot_int4_bwd_rejects_string_layout() -> None:
    with pytest.raises(TypeError, match="layout must be a GemmLayout"):
        ragged_dot_int4_bwd(None, None, None, layout="nn")


def test_autotune_ragged_dot_rejects_string_mode() -> None:
    autotune = importlib.import_module("amd_strix_halo_kernels.autotune")
    with pytest.raises(TypeError, match="mode must be a RaggedDotMode"):
        autotune.autotune_ragged_dot(mode="fwd", m=64, n=64, k=64)

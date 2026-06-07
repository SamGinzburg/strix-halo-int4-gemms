import pytest

from amd_strix_halo_kernels.metadata import Epilogue, OperandDType, ScaleMode, ScaleSpec
from amd_strix_halo_kernels.registry import default_registry
from amd_strix_halo_kernels.template_config import LaunchShape, plan_template, representative_generation_shape


def test_template_plan_tracks_even_k_and_scale_mode() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT4,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        epilogue=Epilogue.SWIGLU,
        m=4096,
        n=4096,
        k=4096,
    )
    plan = plan_template(kernel, LaunchShape(4096, 4096, 4096))
    assert plan.needs_packed_int4 is True
    assert plan.needs_subchannel_loop is True
    assert plan.needs_per_channel_epilogue_scale is False
    assert plan.needs_relu2_activation is False
    assert plan.needs_fused_swiglu_up_gate is True
    assert plan.even_k is True
    assert plan.split_k == 1


def test_template_plan_rejects_k_not_multiple_of_split_tile() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT8,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=4096,
        n=4096,
        k=4096,
        split_k=4,
    )
    with pytest.raises(ValueError, match="BLOCK_K\\*SPLIT_K"):
        plan_template(kernel, LaunchShape(4096, 4096, 4128))


def test_template_plan_rejects_m_and_n_not_multiple_of_tile() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT8,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.NONE,
        m=64,
        n=256,
        k=4096,
    )

    with pytest.raises(ValueError, match="M=97 is not divisible"):
        plan_template(kernel, LaunchShape(97, 513, 4096))


def test_template_plan_tracks_relu2_activation() -> None:
    kernel = default_registry.select(
        dtype=OperandDType.INT8,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        epilogue=Epilogue.RELU2,
        m=4096,
        n=4096,
        k=4096,
    )
    plan = plan_template(kernel, LaunchShape(4096, 4096, 4096))

    assert plan.needs_relu2_activation is True
    assert plan.needs_fused_swiglu_up_gate is False
    assert plan.split_k == 1


def test_representative_generation_shape_covers_int8_subchannel_tile_multiple() -> None:
    scale = ScaleSpec(ScaleMode.SUBCHANNEL, 64)
    kernel = default_registry.select(
        dtype=OperandDType.INT8,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=64,
    )

    shape = representative_generation_shape(kernel)

    assert shape.k >= scale.subchannel_size
    assert shape.k % 2 == 0
    assert shape.k % (kernel.tile.block_k * kernel.tile.split_k) == 0
    assert shape.k % scale.subchannel_size == 0

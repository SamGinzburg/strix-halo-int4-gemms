import pytest

from amd_strix_halo_kernels.metadata import (
    Epilogue,
    GemmLayout,
    KernelSchedule,
    OperandDType,
    SUPPORTED_GEMM_LAYOUTS,
    SCALE_DTYPE_BF16,
    SUPPORTED_SPLIT_K,
    ScaleMode,
    ScaleSpec,
)
from amd_strix_halo_kernels.registry import SMALL_M_VARIANTS, SMALL_N_VARIANTS, default_registry, seed_tile_configs


def test_registry_covers_scale_dtype_epilogue_and_even_k_matrix() -> None:
    kernels = default_registry.all()
    standard_kernels = [kernel for kernel in kernels if kernel.schedule is KernelSchedule.STANDARD]
    expected_block_m_variants = 3
    expected_block_n_variants = 2
    expected_tile_variants = expected_block_m_variants * expected_block_n_variants
    expected_layouts = len(SUPPORTED_GEMM_LAYOUTS)
    assert len(standard_kernels) == expected_layouts * 120 * expected_tile_variants
    assert len(kernels) == expected_layouts * (120 + 40) * expected_tile_variants
    ids = {kernel.kernel_id for kernel in kernels}
    assert len(ids) == len(kernels)
    assert {kernel.layout for kernel in kernels} == set(SUPPORTED_GEMM_LAYOUTS)
    assert all(f"_{kernel.layout.value}_" in kernel.kernel_id for kernel in kernels)

    for dtype in OperandDType:
        for epilogue in Epilogue:
            for scale in [
                ScaleSpec(ScaleMode.SUBCHANNEL, 32),
                ScaleSpec(ScaleMode.SUBCHANNEL, 64),
                ScaleSpec(ScaleMode.SUBCHANNEL, 128),
                ScaleSpec(ScaleMode.SUBCHANNEL, 256),
                ScaleSpec(ScaleMode.PER_CHANNEL),
            ]:
                split_values = (1,) if epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} else SUPPORTED_SPLIT_K
                for split_k in split_values:
                    for layout in SUPPORTED_GEMM_LAYOUTS:
                        even = [
                            kernel
                            for kernel in standard_kernels
                            if kernel.a_dtype is dtype
                            and kernel.b_dtype is dtype
                            and kernel.epilogue is epilogue
                            and kernel.layout is layout
                            and kernel.scale == scale
                            and kernel.tile.split_k == split_k
                            and kernel.tile.even_k
                        ]
                        masked = [
                            kernel
                            for kernel in standard_kernels
                            if kernel.a_dtype is dtype
                            and kernel.b_dtype is dtype
                            and kernel.epilogue is epilogue
                            and kernel.layout is layout
                            and kernel.scale == scale
                            and kernel.tile.split_k == split_k
                            and not kernel.tile.even_k
                        ]
                        assert len(even) == expected_tile_variants
                        assert len(masked) == expected_tile_variants
                        assert {kernel.tile.block_m for kernel in even}.issuperset(SMALL_M_VARIANTS)
                        assert {kernel.tile.block_m for kernel in masked}.issuperset(SMALL_M_VARIANTS)
                        assert {kernel.tile.block_n for kernel in even}.issuperset(SMALL_N_VARIANTS)
                        assert {kernel.tile.block_n for kernel in masked}.issuperset(SMALL_N_VARIANTS)
                        expected_output_dtype = "float32" if split_k > 1 else "bfloat16"
                        assert {kernel.output_dtype for kernel in even} == {expected_output_dtype}
                        assert {kernel.output_dtype for kernel in masked} == {expected_output_dtype}
                        assert {kernel.scale_dtype for kernel in even} == {SCALE_DTYPE_BF16}
                        assert {kernel.scale_dtype for kernel in masked} == {SCALE_DTYPE_BF16}
                if epilogue in {Epilogue.RELU2, Epilogue.SWIGLU}:
                    assert not [
                        kernel
                        for kernel in standard_kernels
                        if kernel.a_dtype is dtype
                        and kernel.b_dtype is dtype
                        and kernel.epilogue is epilogue
                        and kernel.scale == scale
                        and kernel.tile.split_k != 1
                    ]


def test_registry_adds_persistent_int4_plain_gemm_matrix() -> None:
    kernels = default_registry.all()
    expected_tile_variants = 3 * 2
    expected_layouts = len(SUPPORTED_GEMM_LAYOUTS)
    persistent = [kernel for kernel in kernels if kernel.schedule is KernelSchedule.PERSISTENT]

    assert len(persistent) == expected_layouts * 40 * expected_tile_variants
    assert {kernel.a_dtype for kernel in persistent} == {OperandDType.INT4}
    assert {kernel.b_dtype for kernel in persistent} == {OperandDType.INT4}
    assert {kernel.epilogue for kernel in persistent} == {Epilogue.NONE}
    assert {kernel.layout for kernel in persistent} == set(SUPPORTED_GEMM_LAYOUTS)
    assert {kernel.scale_dtype for kernel in persistent} == {SCALE_DTYPE_BF16}
    assert all("_persistent_" in kernel.kernel_id for kernel in persistent)
    for scale in [
        ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        ScaleSpec(ScaleMode.SUBCHANNEL, 64),
        ScaleSpec(ScaleMode.SUBCHANNEL, 128),
        ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        ScaleSpec(ScaleMode.PER_CHANNEL),
    ]:
        for split_k in SUPPORTED_SPLIT_K:
            for layout in SUPPORTED_GEMM_LAYOUTS:
                matching = [
                    kernel
                    for kernel in persistent
                    if kernel.layout is layout and kernel.scale == scale and kernel.tile.split_k == split_k
                ]
                assert len([kernel for kernel in matching if kernel.tile.even_k]) == expected_tile_variants
                assert len([kernel for kernel in matching if not kernel.tile.even_k]) == expected_tile_variants


def test_select_uses_even_k_and_rejects_non_tile_multiple_k() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    even = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=4096,
        n=4096,
        k=4096,
        split_k=4,
    )
    with pytest.raises(LookupError):
        default_registry.select(
            dtype=OperandDType.INT4,
            scale=scale,
            epilogue=Epilogue.NONE,
            m=4096,
            n=4096,
            k=4128,
            split_k=4,
        )

    assert even.tile.even_k is True
    assert even.tile.split_k == 4


def test_select_filters_by_layout() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    for layout in SUPPORTED_GEMM_LAYOUTS:
        selected = default_registry.select(
            dtype=OperandDType.INT4,
            layout=layout,
            scale=scale,
            epilogue=Epilogue.NONE,
            m=4096,
            n=4096,
            k=4096,
            split_k=4,
        )
        assert selected.layout is layout

    with pytest.raises(LookupError, match="layout=tt"):
        default_registry.select(
            dtype=OperandDType.INT4,
            layout=GemmLayout.TT,
            scale=scale,
            epilogue=Epilogue.NONE,
            m=4096,
            n=4096,
            k=4096,
            split_k=4,
        )


def test_select_can_opt_into_persistent_schedule() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    standard = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
    )
    persistent = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
        schedule=KernelSchedule.PERSISTENT,
    )

    assert standard.schedule is KernelSchedule.STANDARD
    assert persistent.schedule is KernelSchedule.PERSISTENT
    assert persistent.tile.block_m == standard.tile.block_m
    assert persistent.tile.block_n == standard.tile.block_n
    assert persistent.tile.block_k == standard.tile.block_k
    assert persistent.tile.group_size_m == standard.tile.group_size_m
    assert persistent.tile.num_warps == standard.tile.num_warps
    assert persistent.tile.waves_per_eu == standard.tile.waves_per_eu
    assert persistent.tile.split_k == standard.tile.split_k
    assert persistent.tile.even_k == standard.tile.even_k
    assert persistent.tile.num_stages == 1


def test_select_prefers_exact_small_m_variant_when_available() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    for m in (16, 32, 64):
        selected = default_registry.select(
            dtype=OperandDType.INT4,
            scale=scale,
            epilogue=Epilogue.NONE,
            m=m,
            n=512,
            k=32,
        )
        assert selected.tile.block_m == m

    swiglu = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.SWIGLU,
        m=32,
        n=256,
        k=32,
    )
    assert swiglu.tile.block_m == 32


def test_select_supports_exact_small_n_variant_without_displacing_base_n() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    small = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=128,
        k=32,
        split_k=1,
    )
    base = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=512,
        k=32,
        split_k=1,
    )
    split_base = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.NONE,
        m=64,
        n=256,
        k=64,
        split_k=2,
    )
    swiglu = default_registry.select(
        dtype=OperandDType.INT4,
        scale=scale,
        epilogue=Epilogue.SWIGLU,
        m=128,
        n=128,
        k=32,
    )

    assert small.tile.block_n == 128
    assert base.tile.block_n == 512
    assert split_base.tile.block_n == 256
    assert swiglu.tile.block_n == 128


def test_select_rejects_m_and_n_not_multiple_of_tile() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    with pytest.raises(LookupError):
        default_registry.select(
            dtype=OperandDType.INT4,
            scale=scale,
            epilogue=Epilogue.NONE,
            m=17,
            n=129,
            k=32,
        )


def test_select_reference_ignores_launch_tile_constraints() -> None:
    scale = ScaleSpec(ScaleMode.PER_CHANNEL)
    reference = default_registry.select_reference(
        dtype=OperandDType.INT8,
        scale=scale,
        epilogue=Epilogue.RELU2,
        layout=GemmLayout.NT,
    )

    assert reference.layout is GemmLayout.NT
    assert reference.tile.even_k is True
    assert reference.tile.split_k == 1


def test_seed_tiles_are_dtype_specific() -> None:
    int4_even = seed_tile_configs(OperandDType.INT4)[0]
    int4_masked = next(tile for tile in seed_tile_configs(OperandDType.INT4) if not tile.even_k)
    int8_even = seed_tile_configs(OperandDType.INT8)[0]
    int8_masked = next(tile for tile in seed_tile_configs(OperandDType.INT8) if not tile.even_k)

    assert int4_even.block_k == int4_masked.block_k == 32
    assert int4_even.waves_per_eu == int4_masked.waves_per_eu == 2
    assert int4_even.num_warps == int4_masked.num_warps == 16
    assert int8_even.block_k == int8_masked.block_k == 64
    assert int8_even.waves_per_eu == int8_masked.waves_per_eu == 2


def test_seed_tiles_use_tuned_int4_swiglu_shapes() -> None:
    pc_tiles = seed_tile_configs(
        OperandDType.INT4,
        epilogue=Epilogue.SWIGLU,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    sc_tiles = seed_tile_configs(
        OperandDType.INT4,
        epilogue=Epilogue.SWIGLU,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
    )
    pc_even = pc_tiles[0]
    pc_masked = next(tile for tile in pc_tiles if not tile.even_k)
    sc_even = sc_tiles[0]
    sc_masked = next(tile for tile in sc_tiles if not tile.even_k)

    assert pc_even.num_stages == pc_masked.num_stages == 3
    assert pc_even.block_m == pc_masked.block_m == 128
    assert pc_even.block_n == pc_masked.block_n == 256
    assert sc_even.num_stages == sc_masked.num_stages == 2
    assert sc_even.block_n == sc_masked.block_n == 128
    assert sc_even.block_k == sc_masked.block_k == 128


def test_seed_tiles_use_tuned_relu2_shapes() -> None:
    int4_tiles = seed_tile_configs(
        OperandDType.INT4,
        epilogue=Epilogue.RELU2,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    int8_tiles = seed_tile_configs(
        OperandDType.INT8,
        epilogue=Epilogue.RELU2,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    int4_even = int4_tiles[0]
    int4_masked = next(tile for tile in int4_tiles if not tile.even_k)
    int8_even = int8_tiles[0]
    int8_masked = next(tile for tile in int8_tiles if not tile.even_k)

    assert int4_even.num_stages == int4_masked.num_stages == 2
    assert int4_even.block_n == int4_masked.block_n == 512
    assert int8_even.block_n == int8_masked.block_n == 256
    assert int8_even.block_k == int8_masked.block_k == 64

from __future__ import annotations

from dataclasses import replace
from pathlib import Path
from typing import Callable, Iterable

from .metadata import (
    ACC_DTYPE,
    ARCH,
    Epilogue,
    GemmLayout,
    KernelMetadata,
    KernelSchedule,
    KernelStatus,
    OperandDType,
    SCALE_DTYPE_BF16,
    SUPPORTED_GEMM_LAYOUTS,
    ScaleMode,
    ScaleSpec,
    SUPPORTED_SPLIT_K,
    TileConfig,
    make_kernel_id,
    output_dtype_for_split_k,
    supported_scale_specs,
)
from .template_config import LaunchShape, is_tile_multiple_shape


SMALL_M_VARIANTS = (32, 16)
SMALL_N_VARIANTS = (128,)


def _int4_split_tile(tile: TileConfig) -> TileConfig:
    return replace(
        tile,
        block_n=min(tile.block_n, 256),
        num_warps=min(tile.num_warps, 8),
        num_stages=min(tile.num_stages, 2),
    )


def _persistent_int4_tile(tile: TileConfig) -> TileConfig:
    if tile.num_stages > 1:
        return replace(tile, num_stages=1)
    return tile


def _block_m_variants(tile: TileConfig) -> tuple[TileConfig, ...]:
    block_ms = tuple(dict.fromkeys((tile.block_m, *SMALL_M_VARIANTS)))
    return tuple(replace(tile, block_m=block_m) for block_m in block_ms)


def _block_n_variants(tile: TileConfig) -> tuple[TileConfig, ...]:
    block_ns = tuple(dict.fromkeys((tile.block_n, *SMALL_N_VARIANTS)))
    return tuple(replace(tile, block_n=block_n) for block_n in block_ns)


def _tile_shape_variants(tile: TileConfig) -> tuple[TileConfig, ...]:
    return tuple(n_tile for m_tile in _block_m_variants(tile) for n_tile in _block_n_variants(m_tile))


def _paired_n_tile_variants(
    small_n_even: TileConfig,
    small_n_masked: TileConfig,
    base_n_even: TileConfig,
    base_n_masked: TileConfig,
    *,
    split_values: tuple[int, ...] = (1,),
) -> tuple[TileConfig, ...]:
    block_ms = tuple(dict.fromkeys((small_n_even.block_m, *SMALL_M_VARIANTS)))
    tile_pairs = ((small_n_even, small_n_masked), (base_n_even, base_n_masked))
    return tuple(
        replace(tile, block_m=block_m, split_k=split_k)
        for split_k in split_values
        for pair in tile_pairs
        for tile in pair
        for block_m in block_ms
    )


def _int4_subchannel_tile_variants(
    even: TileConfig,
    masked: TileConfig,
    *,
    split_values: tuple[int, ...] = (1,),
) -> tuple[TileConfig, ...]:
    return _paired_n_tile_variants(
        even,
        masked,
        replace(even, group_size_m=4),
        replace(masked, group_size_m=4),
        split_values=split_values,
    )


def _split_k_variants(
    even: TileConfig,
    masked: TileConfig,
    *,
    split_tile_transform: Callable[[TileConfig], TileConfig] | None = None,
    split_values: tuple[int, ...] = SUPPORTED_SPLIT_K,
) -> tuple[TileConfig, ...]:
    transform = split_tile_transform
    return tuple(
        replace(m_tile, split_k=split_k)
        for split_k in split_values
        for tile in (even, masked)
        for m_tile in _tile_shape_variants(transform(tile) if transform is not None and split_k > 1 else tile)
    )


def seed_tile_configs(
    dtype: OperandDType = OperandDType.INT4,
    *,
    epilogue: Epilogue | None = None,
    scale: ScaleSpec | None = None,
) -> tuple[TileConfig, ...]:
    if dtype is OperandDType.INT4:
        if epilogue is Epilogue.SWIGLU:
            if scale is not None and scale.mode is ScaleMode.SUBCHANNEL:
                return _int4_subchannel_tile_variants(
                    TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=True),
                    TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=False),
                )
            return _split_k_variants(
                TileConfig(128, 256, 32, 4, 16, 3, 2, even_k=True),
                TileConfig(128, 256, 32, 4, 16, 3, 2, even_k=False),
                split_tile_transform=_int4_split_tile,
                split_values=(1,),
            )
        if epilogue is Epilogue.RELU2:
            if scale is not None and scale.mode is ScaleMode.SUBCHANNEL:
                return _int4_subchannel_tile_variants(
                    TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=True),
                    TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=False),
                )
            return _split_k_variants(
                TileConfig(64, 512, 32, 4, 16, 2, 2, even_k=True),
                TileConfig(64, 512, 32, 4, 16, 2, 2, even_k=False),
                split_tile_transform=_int4_split_tile,
                split_values=(1,),
            )
        # Tuned int4 dot_scaled baseline for per-channel kernels.
        if scale is not None and scale.mode is ScaleMode.SUBCHANNEL:
            return _int4_subchannel_tile_variants(
                TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=True),
                TileConfig(64, 128, 128, 1, 16, 2, 2, even_k=False),
                split_values=SUPPORTED_SPLIT_K,
            )
        return _split_k_variants(
            TileConfig(64, 512, 32, 4, 16, 2, 2, even_k=True),
            # Companion metadata for regenerating the masked-K variant.
            TileConfig(64, 512, 32, 4, 16, 2, 2, even_k=False),
            split_tile_transform=_int4_split_tile,
        )
    if dtype is OperandDType.INT8:
        # Keep int8 under the Strix Halo LDS limit while preserving the same
        # 512-wide output tile and WMMA lowering strategy.
        if epilogue is Epilogue.SWIGLU:
            return _paired_n_tile_variants(
                TileConfig(64, 128, 64, 4, 8, 3, 2, even_k=True),
                TileConfig(64, 128, 64, 4, 8, 3, 2, even_k=False),
                TileConfig(64, 256, 32, 4, 8, 3, 2, even_k=True),
                TileConfig(64, 256, 32, 4, 8, 3, 2, even_k=False),
            )
        if epilogue is Epilogue.RELU2:
            return _split_k_variants(
                TileConfig(64, 256, 64, 4, 8, 3, 2, even_k=True),
                TileConfig(64, 256, 64, 4, 8, 3, 2, even_k=False),
                split_values=(1,),
            )
        return _split_k_variants(
            TileConfig(64, 256, 64, 4, 8, 3, 2, even_k=True),
            TileConfig(64, 256, 64, 4, 8, 3, 2, even_k=False),
        )
    raise ValueError(f"unsupported dtype: {dtype}")


def _kernel_metadata(
    *,
    dtype: OperandDType,
    scale: ScaleSpec,
    epilogue: Epilogue,
    tile: TileConfig,
    layout: GemmLayout = GemmLayout.NN,
    schedule: KernelSchedule,
    assembly_root: Path,
) -> KernelMetadata:
    kernel_id = make_kernel_id(dtype, scale, epilogue, tile, layout=layout, schedule=schedule)
    return KernelMetadata(
        kernel_id=kernel_id,
        arch=ARCH,
        a_dtype=dtype,
        b_dtype=dtype,
        acc_dtype=ACC_DTYPE,
        output_dtype=output_dtype_for_split_k(tile.split_k),
        scale_dtype=SCALE_DTYPE_BF16,
        scale=scale,
        epilogue=epilogue,
        tile=tile,
        triton_kernel_name=f"triton_{kernel_id}",
        layout=layout,
        schedule=schedule,
        assembly_path=assembly_root / f"{kernel_id}.s",
        status=KernelStatus.PLANNED,
    )


def iter_supported_kernel_metadata(
    *,
    tiles: Iterable[TileConfig] | None = None,
    assembly_root: Path = Path("kernels/amdgcn"),
) -> Iterable[KernelMetadata]:
    tile_override = None if tiles is None else tuple(tiles)
    for dtype in (OperandDType.INT4, OperandDType.INT8):
        for scale in supported_scale_specs():
            for epilogue in (Epilogue.NONE, Epilogue.RELU2, Epilogue.SWIGLU):
                tile_list = (
                    tile_override
                    if tile_override is not None
                    else seed_tile_configs(dtype, epilogue=epilogue, scale=scale)
                )
                for layout in SUPPORTED_GEMM_LAYOUTS:
                    for tile in tile_list:
                        yield _kernel_metadata(
                            dtype=dtype,
                            scale=scale,
                            epilogue=epilogue,
                            tile=tile,
                            layout=layout,
                            schedule=KernelSchedule.STANDARD,
                            assembly_root=assembly_root,
                        )
    for scale in supported_scale_specs():
        tile_list = (
            tile_override
            if tile_override is not None
            else seed_tile_configs(OperandDType.INT4, epilogue=Epilogue.NONE, scale=scale)
        )
        for layout in SUPPORTED_GEMM_LAYOUTS:
            for tile in tile_list:
                persistent_tile = _persistent_int4_tile(tile)
                yield _kernel_metadata(
                    dtype=OperandDType.INT4,
                    scale=scale,
                    epilogue=Epilogue.NONE,
                    tile=persistent_tile,
                    layout=layout,
                    schedule=KernelSchedule.PERSISTENT,
                    assembly_root=assembly_root,
                )


class KernelRegistry:
    def __init__(self, kernels: Iterable[KernelMetadata] = ()) -> None:
        self._kernels: dict[str, KernelMetadata] = {}
        for kernel in kernels:
            self.register(kernel)

    def register(self, kernel: KernelMetadata) -> None:
        if kernel.kernel_id in self._kernels:
            raise ValueError(f"duplicate kernel id: {kernel.kernel_id}")
        self._kernels[kernel.kernel_id] = kernel

    def get(self, kernel_id: str) -> KernelMetadata:
        return self._kernels[kernel_id]

    def all(self) -> tuple[KernelMetadata, ...]:
        return tuple(self._kernels.values())

    def select(
        self,
        *,
        dtype: OperandDType,
        scale: ScaleSpec,
        epilogue: Epilogue,
        m: int,
        n: int,
        k: int,
        layout: GemmLayout = GemmLayout.NN,
        split_k: int | None = None,
        schedule: KernelSchedule = KernelSchedule.STANDARD,
        require_compiled: bool = False,
    ) -> KernelMetadata:
        candidates = [
            kernel
            for kernel in self._kernels.values()
            if kernel.a_dtype is dtype
            and kernel.b_dtype is dtype
            and kernel.scale == scale
            and kernel.epilogue is epilogue
            and kernel.layout is layout
            and kernel.schedule is schedule
            and not (kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} and kernel.tile.split_k != 1)
            and (split_k is None or kernel.tile.split_k == split_k)
            and kernel.tile.even_k
            and is_tile_multiple_shape(kernel, LaunchShape(m, n, k))
        ]
        if require_compiled:
            candidates = [k for k in candidates if k.status in {KernelStatus.COMPILED, KernelStatus.BENCHMARKED}]
        if not candidates:
            raise LookupError(
                f"no kernel for dtype={dtype.value}, scale={scale.label}, epilogue={epilogue.value}, "
                f"layout={layout.value}, schedule={schedule.value}, "
                f"shape=({m}, {n}, {k})"
            )
        def selection_key(kernel: KernelMetadata) -> tuple[float, int]:
            return (kernel.measured_tops or 0.0, kernel.tile.block_m * kernel.tile.block_n)

        return max(candidates, key=selection_key)

    def select_reference(
        self,
        *,
        dtype: OperandDType,
        scale: ScaleSpec,
        epilogue: Epilogue,
        layout: GemmLayout = GemmLayout.NN,
        split_k: int | None = 1,
        schedule: KernelSchedule = KernelSchedule.STANDARD,
    ) -> KernelMetadata:
        candidates = [
            kernel
            for kernel in self._kernels.values()
            if kernel.a_dtype is dtype
            and kernel.b_dtype is dtype
            and kernel.scale == scale
            and kernel.epilogue is epilogue
            and kernel.layout is layout
            and kernel.schedule is schedule
            and not (kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} and kernel.tile.split_k != 1)
            and (split_k is None or kernel.tile.split_k == split_k)
            and kernel.tile.even_k
        ]
        if not candidates:
            raise LookupError(
                f"no reference kernel metadata for dtype={dtype.value}, scale={scale.label}, "
                f"epilogue={epilogue.value}, layout={layout.value}, schedule={schedule.value}"
            )

        def selection_key(kernel: KernelMetadata) -> tuple[float, int]:
            return (kernel.measured_tops or 0.0, kernel.tile.block_m * kernel.tile.block_n)

        return max(candidates, key=selection_key)

    def with_status(self, kernel_id: str, status: KernelStatus, **updates: object) -> "KernelRegistry":
        copied = KernelRegistry(self._kernels.values())
        copied._kernels[kernel_id] = replace(copied._kernels[kernel_id], status=status, **updates)
        return copied


default_registry = KernelRegistry(iter_supported_kernel_metadata())

from __future__ import annotations

from dataclasses import dataclass

from .metadata import Epilogue, KernelMetadata, OperandDType, ScaleMode


@dataclass(frozen=True, slots=True)
class LaunchShape:
    m: int
    n: int
    k: int

    def validate_for(self, kernel: KernelMetadata) -> None:
        reasons = tile_multiple_rejection_reasons(kernel, self)
        if reasons:
            raise ValueError(
                f"{kernel.kernel_id} requires tile-multiple shape: " + "; ".join(reasons)
            )


def tile_multiple_rejection_reasons(kernel: KernelMetadata, shape: LaunchShape) -> tuple[str, ...]:
    reasons: list[str] = []
    if shape.m <= 0 or shape.n <= 0 or shape.k <= 0:
        reasons.append(f"M, N, and K must be positive; got ({shape.m}, {shape.n}, {shape.k})")
        return tuple(reasons)
    if shape.m % kernel.tile.block_m != 0:
        reasons.append(f"M={shape.m} is not divisible by BLOCK_M={kernel.tile.block_m}")
    if shape.n % kernel.tile.block_n != 0:
        reasons.append(f"N={shape.n} is not divisible by BLOCK_N={kernel.tile.block_n}")
    k_period = kernel.tile.block_k * kernel.tile.split_k
    if shape.k % k_period != 0:
        reasons.append(f"K={shape.k} is not divisible by BLOCK_K*SPLIT_K={k_period}")
    if kernel.scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = kernel.scale.subchannel_size
        if subchannel is not None and shape.k % subchannel != 0:
            reasons.append(f"K={shape.k} is not divisible by SUBCHANNEL={subchannel}")
    return tuple(reasons)


def is_tile_multiple_shape(kernel: KernelMetadata, shape: LaunchShape) -> bool:
    return not tile_multiple_rejection_reasons(kernel, shape)


@dataclass(frozen=True, slots=True)
class TemplatePlan:
    kernel: KernelMetadata
    shape: LaunchShape
    needs_packed_int4: bool
    needs_subchannel_loop: bool
    needs_per_channel_epilogue_scale: bool
    needs_relu2_activation: bool
    needs_fused_swiglu_up_gate: bool
    even_k: bool
    split_k: int


def plan_template(kernel: KernelMetadata, shape: LaunchShape) -> TemplatePlan:
    shape.validate_for(kernel)
    return TemplatePlan(
        kernel=kernel,
        shape=shape,
        needs_packed_int4=kernel.a_dtype is OperandDType.INT4,
        needs_subchannel_loop=kernel.scale.mode is ScaleMode.SUBCHANNEL,
        needs_per_channel_epilogue_scale=kernel.scale.mode is ScaleMode.PER_CHANNEL,
        needs_relu2_activation=kernel.epilogue is Epilogue.RELU2,
        needs_fused_swiglu_up_gate=kernel.epilogue is Epilogue.SWIGLU,
        even_k=kernel.tile.even_k,
        split_k=kernel.tile.split_k,
    )


def representative_generation_shape(kernel: KernelMetadata) -> LaunchShape:
    split_k_period = kernel.tile.block_k * kernel.tile.split_k
    k = split_k_period
    if kernel.scale.mode is ScaleMode.SUBCHANNEL:
        sub = kernel.scale.subchannel_size or split_k_period
        while k < sub or k % sub != 0:
            k += split_k_period
    return LaunchShape(kernel.tile.block_m, kernel.tile.block_n, k)

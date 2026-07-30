from __future__ import annotations

from typing import Any

from .exceptions import KernelNotAvailableError
from .metadata import (
    SUPPORTED_GEMM_LAYOUTS,
    Epilogue,
    GemmLayout,
    KernelMetadata,
    KernelSchedule,
    KernelStatus,
    OperandDType,
    ScaleMode,
    ScaleSpec,
    resolve_operand_dtypes,
)
from .native import launch_generated_kernel
from .quant import dynamic_lhs_int4_scales, fake_quant_int4_with_scales, unpack_int4_k_major
from .registry import KernelRegistry, default_registry


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for GEMM APIs") from exc
    return torch


def _require_supported_layout(layout: GemmLayout) -> None:
    if layout not in SUPPORTED_GEMM_LAYOUTS:
        supported = ", ".join(layout.value for layout in SUPPORTED_GEMM_LAYOUTS)
        raise ValueError(f"unsupported GEMM layout {layout.value}; generated layouts are {supported}")


def _is_packed_int4_arg(dtype: OperandDType, tensor: Any) -> bool:
    return dtype is OperandDType.INT4 and str(getattr(tensor, "dtype", "")) in {"torch.uint8", "uint8"}


def _logical_k_dim(size: int, *, packed_int4: bool) -> int:
    return size * 2 if packed_int4 else size


def _logical_problem_shape(
    a: Any,
    b: Any,
    *,
    a_dtype: OperandDType,
    b_dtype: OperandDType,
    layout: GemmLayout,
    swiglu: bool,
) -> tuple[int, int, int]:
    _require_supported_layout(layout)
    a_packed = _is_packed_int4_arg(a_dtype, a)
    b_packed = _is_packed_int4_arg(b_dtype, b)
    if layout is GemmLayout.NN:
        m = int(a.shape[-2])
        k_a = _logical_k_dim(int(a.shape[-1]), packed_int4=a_packed)
        b_cols = int(b.shape[-1])
        k_b = _logical_k_dim(int(b.shape[-2]), packed_int4=b_packed)
    elif layout is GemmLayout.NT:
        m = int(a.shape[-2])
        k_a = _logical_k_dim(int(a.shape[-1]), packed_int4=a_packed)
        b_cols = int(b.shape[-2])
        k_b = _logical_k_dim(int(b.shape[-1]), packed_int4=b_packed)
    elif layout is GemmLayout.TN:
        m = int(a.shape[-1])
        k_a = _logical_k_dim(int(a.shape[-2]), packed_int4=a_packed)
        b_cols = int(b.shape[-1])
        k_b = _logical_k_dim(int(b.shape[-2]), packed_int4=b_packed)
    else:
        raise AssertionError(f"unhandled supported layout: {layout}")
    if k_a != k_b:
        raise ValueError(f"logical K mismatch for layout={layout.value}: A has {k_a}, B has {k_b}")
    if swiglu:
        if b_cols % 2 != 0:
            raise ValueError("fused_swiglu_up_gate requires the logical B output dimension to be even")
        b_cols //= 2
    return m, b_cols, k_a


def _scale_cols(k: int, scale: ScaleSpec) -> int:
    subchannel = scale.subchannel_size
    if subchannel is None:
        raise ValueError("subchannel scale mode requires subchannel_size")
    return (k + subchannel - 1) // subchannel


def _logical_a_tensor(a: Any, layout: GemmLayout) -> Any:
    if layout in {GemmLayout.TN, GemmLayout.TT}:
        return a.transpose(-2, -1)
    return a


def _prepare_a_scale(a: Any, *, kernel: KernelMetadata, a_scale: Any | None) -> Any | None:
    if kernel.a_dtype is OperandDType.BF16 and kernel.b_dtype is OperandDType.INT4:
        if a_scale is not None:
            raise ValueError("a_scale is computed by bf16xint4 GEMMs; caller-provided a_scale is not supported")
        return dynamic_lhs_int4_scales(_logical_a_tensor(a, kernel.layout), kernel.scale)
    return a_scale


def _validate_scale_shapes(
    *,
    kernel: KernelMetadata,
    m: int,
    n: int,
    k: int,
    a_scale: Any | None,
    b_scale: Any | None,
) -> None:
    b_cols = n * 2 if kernel.epilogue is Epilogue.SWIGLU else n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        if a_scale is not None and tuple(a_scale.shape) != (m,):
            raise ValueError(f"a_scale must have shape ({m},); got {tuple(a_scale.shape)}")
        if b_scale is not None and tuple(b_scale.shape) != (b_cols,):
            raise ValueError(f"b_scale must have shape ({b_cols},); got {tuple(b_scale.shape)}")
        return

    scale_cols = _scale_cols(k, kernel.scale)
    if a_scale is not None and tuple(a_scale.shape) != (m, scale_cols):
        raise ValueError(f"a_scale must have shape ({m}, {scale_cols}); got {tuple(a_scale.shape)}")
    expected_b = (scale_cols, b_cols)
    if b_scale is not None and tuple(b_scale.shape) != expected_b:
        old_b = (b_cols, scale_cols)
        raise ValueError(
            "subchannel b_scale must use weight-matched layout "
            f"{expected_b} == (scale_cols, output_cols); got {tuple(b_scale.shape)}. "
            f"If you have logical layout {old_b} == (output_cols, scale_cols), "
            "call pack_rhs_subchannel_scales(...) first."
        )


def mm(
    a: Any,
    b: Any,
    *,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    gate: Any | None = None,
    dtype: OperandDType | None = None,
    a_dtype: OperandDType | None = None,
    b_dtype: OperandDType | None = None,
    layout: GemmLayout = GemmLayout.NN,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    epilogue: Epilogue = Epilogue.NONE,
    schedule: KernelSchedule = KernelSchedule.STANDARD,
    registry: KernelRegistry = default_registry,
    use_reference: bool = False,
) -> Any:
    """Select and launch a generated dense Strix Halo GEMM kernel.

    Native dispatch is intentionally strict: incompatible shapes or unavailable
    generated artifacts raise instead of falling back to a slower path. Set
    ``use_reference=True`` only for numerical checks.
    """

    if epilogue is Epilogue.SWIGLU:
        raise ValueError("SwiGLU is exposed through fused_swiglu_up_gate(...), not mm(...)")
    _require_supported_layout(layout)
    selected_a_dtype, selected_b_dtype = resolve_operand_dtypes(dtype=dtype, a_dtype=a_dtype, b_dtype=b_dtype)
    m, n, k = _logical_problem_shape(
        a, b, a_dtype=selected_a_dtype, b_dtype=selected_b_dtype, layout=layout, swiglu=False
    )
    if use_reference:
        kernel = registry.select_reference(
            a_dtype=selected_a_dtype,
            b_dtype=selected_b_dtype,
            layout=layout,
            scale=scale,
            epilogue=epilogue,
            schedule=schedule,
        )
    else:
        kernel = registry.select(
            a_dtype=selected_a_dtype,
            b_dtype=selected_b_dtype,
            layout=layout,
            scale=scale,
            epilogue=epilogue,
            m=m,
            n=n,
            k=k,
            schedule=schedule,
        )
    return explicit_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, gate=gate, use_reference=use_reference)


def fused_swiglu_up_gate(
    a: Any,
    b_up_gate: Any,
    *,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    dtype: OperandDType | None = None,
    a_dtype: OperandDType | None = None,
    b_dtype: OperandDType | None = None,
    layout: GemmLayout = GemmLayout.NN,
    scale: ScaleSpec = ScaleSpec(ScaleMode.PER_CHANNEL),
    registry: KernelRegistry = default_registry,
    use_reference: bool = False,
) -> Any:
    """Launch the fused up/gate SwiGLU GEMM.

    ``b_up_gate`` is laid out as ``[up | gate]`` along the output dimension.
    The logical GEMM output has shape ``(M, 2D)``; this API returns
    ``up * silu(gate)`` with shape ``(M, D)``.
    """

    _require_supported_layout(layout)
    selected_a_dtype, selected_b_dtype = resolve_operand_dtypes(dtype=dtype, a_dtype=a_dtype, b_dtype=b_dtype)
    m, n, k = _logical_problem_shape(
        a, b_up_gate, a_dtype=selected_a_dtype, b_dtype=selected_b_dtype, layout=layout, swiglu=True
    )
    if use_reference:
        kernel = registry.select_reference(
            a_dtype=selected_a_dtype,
            b_dtype=selected_b_dtype,
            layout=layout,
            scale=scale,
            epilogue=Epilogue.SWIGLU,
            split_k=1,
        )
    else:
        kernel = registry.select(
            a_dtype=selected_a_dtype,
            b_dtype=selected_b_dtype,
            layout=layout,
            scale=scale,
            epilogue=Epilogue.SWIGLU,
            m=m,
            n=n,
            k=k,
            split_k=1,
        )
    return explicit_mm(
        a,
        b_up_gate,
        kernel=kernel,
        a_scale=a_scale,
        b_scale=b_scale,
        use_reference=use_reference,
    )


def explicit_mm(
    a: Any,
    b: Any,
    *,
    kernel: KernelMetadata,
    a_scale: Any | None = None,
    b_scale: Any | None = None,
    gate: Any | None = None,
    use_reference: bool = False,
) -> Any:
    """Launch a caller-selected dense GEMM kernel.

    ``kernel`` must match the logical operand layout, scale mode, epilogue, and
    tile-multiple shape contract. Set ``use_reference=True`` only to evaluate
    the torch numerical path for the same metadata.
    """

    _require_supported_layout(kernel.layout)
    if kernel.epilogue is Epilogue.SWIGLU and gate is not None:
        raise ValueError("SwiGLU kernels use fused up/gate columns; pass gate through b_up_gate")
    m, n, k = _logical_problem_shape(
        a,
        b,
        a_dtype=kernel.a_dtype,
        b_dtype=kernel.b_dtype,
        layout=kernel.layout,
        swiglu=kernel.epilogue is Epilogue.SWIGLU,
    )
    if use_reference:
        a_scale = _prepare_a_scale(a, kernel=kernel, a_scale=a_scale)
        _validate_scale_shapes(kernel=kernel, m=m, n=n, k=k, a_scale=a_scale, b_scale=b_scale)
        return reference_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, gate=gate)
    if kernel.a_dtype is OperandDType.BF16 and kernel.b_dtype is OperandDType.INT4:
        if a_scale is not None:
            raise ValueError("a_scale is computed by bf16xint4 GEMMs; caller-provided a_scale is not supported")
        validation_a_scale = None
    else:
        validation_a_scale = a_scale
    _validate_scale_shapes(kernel=kernel, m=m, n=n, k=k, a_scale=validation_a_scale, b_scale=b_scale)
    if kernel.status not in {KernelStatus.COMPILED, KernelStatus.BENCHMARKED}:
        try:
            return launch_generated_kernel(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, gate=gate)
        except Exception as exc:
            raise KernelNotAvailableError(
                f"{kernel.kernel_id} is {kernel.status.value}; native generated dispatch is unavailable: {exc}"
            ) from exc
    return launch_generated_kernel(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale, gate=gate)


def reference_mm(
    a: Any,
    b: Any,
    *,
    kernel: KernelMetadata,
    a_scale: Any | None,
    b_scale: Any | None,
    gate: Any | None = None,
) -> Any:
    torch = _torch()
    if kernel.a_dtype is OperandDType.INT4 and a.dtype is torch.uint8:
        if kernel.layout in {GemmLayout.TN, GemmLayout.TT}:
            a = unpack_int4_k_major(a.transpose(-2, -1)).transpose(-2, -1)
        else:
            a = unpack_int4_k_major(a)
    if kernel.b_dtype is OperandDType.INT4 and b.dtype is torch.uint8:
        if kernel.layout in {GemmLayout.NT, GemmLayout.TT}:
            b = unpack_int4_k_major(b)
        else:
            b = unpack_int4_k_major(b.transpose(-2, -1)).transpose(-2, -1)
    if kernel.layout in {GemmLayout.TN, GemmLayout.TT}:
        a = a.transpose(-2, -1)
    if kernel.layout in {GemmLayout.NT, GemmLayout.TT}:
        b = b.transpose(-2, -1)
    if kernel.a_dtype is OperandDType.BF16 and kernel.b_dtype is OperandDType.INT4:
        if a_scale is None:
            a_scale = dynamic_lhs_int4_scales(a, kernel.scale)
        a = fake_quant_int4_with_scales(a, a_scale, kernel.scale)
    out = _scaled_reference_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale)
    if kernel.epilogue is Epilogue.SWIGLU:
        if gate is not None:
            raise ValueError("SwiGLU reference uses fused up/gate columns; external gate is not supported")
        if out.shape[-1] % 2 != 0:
            raise ValueError("fused SwiGLU reference requires an even output dimension")
        up, gate_values = out.split(out.shape[-1] // 2, dim=-1)
        out = up * (gate_values / (1.0 + torch.exp(-gate_values)))
    elif kernel.epilogue is Epilogue.RELU2:
        out = torch.relu(out).square()
    if kernel.output_dtype == "bfloat16":
        return out.to(torch.bfloat16)
    if kernel.output_dtype == "float32":
        return out
    raise ValueError(f"unsupported kernel output dtype: {kernel.output_dtype}")


def _scaled_reference_mm(a: Any, b: Any, *, kernel: KernelMetadata, a_scale: Any | None, b_scale: Any | None) -> Any:
    torch = _torch()
    a_i32 = a.to(torch.int32)
    b_i32 = b.to(torch.int32)

    def integer_matmul(lhs: Any, rhs: Any) -> Any:
        if lhs.device.type == "cpu":
            return torch.matmul(lhs, rhs).to(torch.float32)
        return torch.matmul(lhs.to(torch.float32), rhs.to(torch.float32))

    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        out = integer_matmul(a_i32, b_i32)
        if a_scale is not None:
            out = out * a_scale.to(torch.float32)[..., :, None]
        if b_scale is not None:
            out = out * b_scale.to(torch.float32)[..., None, :]
        return out

    subchannel = kernel.scale.subchannel_size
    if subchannel is None:
        raise ValueError("subchannel scale mode requires subchannel_size")

    k = int(a_i32.shape[-1])
    out = torch.zeros((*a_i32.shape[:-1], b_i32.shape[-1]), device=a_i32.device, dtype=torch.float32)
    for group_index, k0 in enumerate(range(0, k, subchannel)):
        k1 = min(k0 + subchannel, k)
        partial = integer_matmul(a_i32[..., k0:k1], b_i32[..., k0:k1, :])
        if a_scale is not None:
            partial = partial * a_scale.to(torch.float32)[..., :, group_index, None]
        if b_scale is not None:
            partial = partial * b_scale.to(torch.float32)[..., group_index, :][..., None, :]
        out += partial
    return out

from __future__ import annotations

from typing import Any

from .metadata import KernelMetadata
from .native import launch_generated_kernel
from .registry import default_registry


TORCH_OP_NAMESPACE = "amd_strix_halo_kernels"
TORCH_GEMM_OP = f"{TORCH_OP_NAMESPACE}::gemm"

_REGISTERED = False


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required to register amd_strix_halo_kernels custom ops") from exc
    return torch


def register_torch_ops() -> None:
    global _REGISTERED
    if _REGISTERED:
        return

    torch = _torch()

    @torch.library.custom_op(
        TORCH_GEMM_OP,
        mutates_args=(),
        device_types="cuda",
        schema="(Tensor a, Tensor b, Tensor a_scale, Tensor b_scale, Tensor gate, str kernel_id, bool has_gate) -> Tensor",
    )
    def gemm(
        a: torch.Tensor,
        b: torch.Tensor,
        a_scale: torch.Tensor,
        b_scale: torch.Tensor,
        gate: torch.Tensor,
        kernel_id: str,
        has_gate: bool,
    ) -> torch.Tensor:
        kernel = default_registry.get(kernel_id)
        return launch_generated_kernel(
            a,
            b,
            kernel=kernel,
            a_scale=a_scale,
            b_scale=b_scale,
            gate=gate if has_gate else None,
        )

    @gemm.register_fake
    def _(
        a: torch.Tensor,
        b: torch.Tensor,
        a_scale: torch.Tensor,
        b_scale: torch.Tensor,
        gate: torch.Tensor,
        kernel_id: str,
        has_gate: bool,
    ) -> torch.Tensor:
        del a_scale, b_scale, gate, has_gate
        kernel = default_registry.get(kernel_id)
        n = b.shape[-1] // 2 if kernel.epilogue.value == "swiglu" else b.shape[-1]
        dtype = torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32
        return a.new_empty((a.shape[-2], n), dtype=dtype)

    _REGISTERED = True


def torch_gemm(
    a: Any,
    b: Any,
    *,
    kernel: KernelMetadata,
    a_scale: Any,
    b_scale: Any,
    gate: Any | None = None,
) -> Any:
    torch = _torch()
    register_torch_ops()
    gate_arg = gate if gate is not None else torch.empty((0,), device=a.device, dtype=torch.float32)
    return torch.ops.amd_strix_halo_kernels.gemm(a, b, a_scale, b_scale, gate_arg, kernel.kernel_id, gate is not None)

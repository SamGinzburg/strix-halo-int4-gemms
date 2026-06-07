from __future__ import annotations

import ctypes
import json
from dataclasses import dataclass
from importlib import resources
from pathlib import Path
from typing import Any

from .metadata import Epilogue, GemmLayout, KernelMetadata, KernelSchedule, OperandDType, ScaleMode
from .template_config import LaunchShape


NATIVE_LIBRARY_NAME = "libamd_strix_halo_kernels_dispatch.so"
THREADS_PER_WARP = 32


@dataclass(frozen=True, slots=True)
class NativeRuntimeStatus:
    library_path: Path
    dispatch_version: int
    has_compiled_code_objects: bool
    has_hip_runtime: bool
    has_linked_kernels: bool


def package_root() -> Path:
    return Path(str(resources.files("amd_strix_halo_kernels")))


def native_library_path(*, root: str | Path | None = None) -> Path:
    return Path(root) / NATIVE_LIBRARY_NAME if root is not None else package_root() / NATIVE_LIBRARY_NAME


def hsaco_dir(*, root: str | Path | None = None) -> Path:
    base = Path(root) if root is not None else package_root()
    return base / "kernels" / "hsaco"


def amdgcn_metadata_dir(*, root: str | Path | None = None) -> Path:
    base = Path(root) if root is not None else package_root()
    return base / "kernels" / "amdgcn"


def hsaco_path_for_kernel_id(kernel_id: str, *, root: str | Path | None = None) -> Path:
    return hsaco_dir(root=root) / f"{kernel_id}.hsaco"


def amdgcn_metadata_path_for_kernel_id(kernel_id: str, *, root: str | Path | None = None) -> Path:
    return amdgcn_metadata_dir(root=root) / f"{kernel_id}.json"


def load_dispatch_library(path: str | Path | None = None) -> ctypes.CDLL:
    library_path = Path(path) if path is not None else native_library_path()
    if not library_path.exists():
        raise RuntimeError(f"native dispatch library is not installed at {library_path}")
    library = ctypes.CDLL(str(library_path))
    library.amd_strix_halo_kernels_dispatch_version.restype = ctypes.c_int
    library.amd_strix_halo_kernels_has_compiled_code_objects.restype = ctypes.c_int
    library.amd_strix_halo_kernels_has_hip_runtime.restype = ctypes.c_int
    library.amd_strix_halo_kernels_has_linked_kernels.restype = ctypes.c_int
    library.amd_strix_halo_kernels_last_error.restype = ctypes.c_char_p
    library.amd_strix_halo_kernels_launch_hsaco.argtypes = [
        ctypes.c_char_p,
        ctypes.c_char_p,
        ctypes.c_int,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_uint32,
        ctypes.c_size_t,
        ctypes.c_void_p,
        ctypes.c_void_p,
        ctypes.c_void_p,
        ctypes.c_void_p,
        ctypes.c_void_p,
        ctypes.c_void_p,
        ctypes.c_int32,
        ctypes.c_int32,
        ctypes.c_int32,
        ctypes.c_void_p,
        ctypes.c_void_p,
    ]
    library.amd_strix_halo_kernels_launch_hsaco.restype = ctypes.c_int
    return library


def dispatch_runtime_status(path: str | Path | None = None) -> NativeRuntimeStatus:
    library_path = Path(path) if path is not None else native_library_path()
    library = load_dispatch_library(library_path)
    return NativeRuntimeStatus(
        library_path=library_path,
        dispatch_version=int(library.amd_strix_halo_kernels_dispatch_version()),
        has_compiled_code_objects=bool(library.amd_strix_halo_kernels_has_compiled_code_objects()),
        has_hip_runtime=bool(library.amd_strix_halo_kernels_has_hip_runtime()),
        has_linked_kernels=bool(library.amd_strix_halo_kernels_has_linked_kernels()),
    )


def _library_last_error(library: ctypes.CDLL) -> str:
    error = library.amd_strix_halo_kernels_last_error()
    if error is None:
        return "unknown native dispatcher error"
    return error.decode("utf-8", errors="replace")


def _artifact_metadata(kernel_id: str, *, root: str | Path | None = None) -> dict[str, Any]:
    path = amdgcn_metadata_path_for_kernel_id(kernel_id, root=root)
    if not path.exists():
        raise RuntimeError(f"generated AMDGCN metadata is not installed at {path}")
    return json.loads(path.read_text())


def _stream_handle(torch: Any, tensor: Any, stream: Any | None) -> int:
    selected = stream if stream is not None else torch.cuda.current_stream(tensor.device)
    return int(selected.cuda_stream)


def _device_index(tensor: Any) -> int:
    index = tensor.device.index
    return 0 if index is None else int(index)


def _require_contiguous(name: str, tensor: Any) -> Any:
    if not tensor.is_contiguous():
        raise ValueError(f"{name} must be contiguous for native dispatch")
    return tensor


def _require_bfloat16_scale(torch: Any, name: str, tensor: Any) -> Any:
    if tensor.dtype != torch.bfloat16:
        raise ValueError(f"{name} must have dtype torch.bfloat16 for native dispatch; got {tensor.dtype}")
    return tensor


def _k_dim(size: int, *, packed_int4: bool) -> int:
    return size * 2 if packed_int4 else size


def _logical_problem_shape(kernel: KernelMetadata, a: Any, b: Any) -> tuple[int, int, int]:
    packed = kernel.a_dtype is OperandDType.INT4
    if kernel.layout is GemmLayout.NN:
        m = int(a.shape[-2])
        k_a = _k_dim(int(a.shape[-1]), packed_int4=packed)
        n = int(b.shape[-1])
        k_b = _k_dim(int(b.shape[-2]), packed_int4=packed)
    elif kernel.layout is GemmLayout.NT:
        m = int(a.shape[-2])
        k_a = _k_dim(int(a.shape[-1]), packed_int4=packed)
        n = int(b.shape[-2])
        k_b = _k_dim(int(b.shape[-1]), packed_int4=packed)
    elif kernel.layout is GemmLayout.TN:
        m = int(a.shape[-1])
        k_a = _k_dim(int(a.shape[-2]), packed_int4=packed)
        n = int(b.shape[-1])
        k_b = _k_dim(int(b.shape[-2]), packed_int4=packed)
    else:
        raise ValueError(f"native dispatch does not support layout={kernel.layout.value}")
    if kernel.epilogue is Epilogue.SWIGLU:
        if n % 2 != 0:
            raise ValueError("fused SwiGLU native dispatch requires the logical B output dimension to be even")
        n //= 2
    if k_a != k_b:
        raise ValueError(f"logical K mismatch for layout={kernel.layout.value}: A has {k_a}, B has {k_b}")
    return m, n, k_a


def _output_torch_dtype(torch: Any, kernel: KernelMetadata) -> Any:
    if kernel.output_dtype == "bfloat16":
        return torch.bfloat16
    if kernel.output_dtype == "float32":
        return torch.float32
    raise ValueError(f"unsupported kernel output dtype: {kernel.output_dtype}")


def _validate_launch_shape(kernel: KernelMetadata, artifact: dict[str, Any], a: Any, b: Any, c: Any) -> tuple[int, int, int]:
    m, n, k = _logical_problem_shape(kernel, a, b)
    if tuple(c.shape[-2:]) != (m, n):
        raise ValueError(f"output shape must be {(m, n)}; got {tuple(c.shape[-2:])}")
    LaunchShape(m, n, k).validate_for(kernel)
    specialization = str(artifact.get("shape_specialization", "exact"))
    if specialization == "runtime":
        return m, n, k
    if specialization != "exact":
        raise RuntimeError(f"{kernel.kernel_id} metadata has invalid shape_specialization={specialization!r}")
    generation_shape = artifact.get("generation_shape")
    if not isinstance(generation_shape, dict):
        raise RuntimeError(f"{kernel.kernel_id} metadata is missing generation_shape")
    expected = (int(generation_shape["m"]), int(generation_shape["n"]), int(generation_shape["k"]))
    actual = (m, n, k)
    if actual != expected:
        raise ValueError(f"{kernel.kernel_id} was generated for shape={expected}; got shape={actual}")
    return m, n, k


def _scale_cols(kernel: KernelMetadata, k: int) -> int:
    subchannel = kernel.scale.subchannel_size
    if subchannel is None:
        raise ValueError("subchannel scale mode requires subchannel_size")
    return (k + subchannel - 1) // subchannel


def _validate_scale_shapes(kernel: KernelMetadata, *, m: int, n: int, k: int, a_scale: Any, b_scale: Any) -> None:
    b_cols = n * 2 if kernel.epilogue is Epilogue.SWIGLU else n
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        if tuple(a_scale.shape) != (m,):
            raise ValueError(f"a_scale must have shape ({m},) for native dispatch; got {tuple(a_scale.shape)}")
        if tuple(b_scale.shape) != (b_cols,):
            raise ValueError(f"b_scale must have shape ({b_cols},) for native dispatch; got {tuple(b_scale.shape)}")
        return

    scale_cols = _scale_cols(kernel, k)
    if tuple(a_scale.shape) != (m, scale_cols):
        raise ValueError(
            f"a_scale must have shape ({m}, {scale_cols}) for native dispatch; got {tuple(a_scale.shape)}"
        )
    expected_b = (scale_cols, b_cols)
    if tuple(b_scale.shape) != expected_b:
        old_b = (b_cols, scale_cols)
        raise ValueError(
            "subchannel b_scale must use weight-matched layout "
            f"{expected_b} == (scale_cols, output_cols) for native dispatch; got {tuple(b_scale.shape)}. "
            f"If you have logical layout {old_b} == (output_cols, scale_cols), "
            "call pack_rhs_subchannel_scales(...) first."
        )


def _shared_memory_bytes(kernel: KernelMetadata, artifact: dict[str, Any]) -> int:
    launch_metadata = artifact.get("launch_metadata")
    if not isinstance(launch_metadata, dict):
        raise RuntimeError(f"{kernel.kernel_id} metadata is missing launch_metadata")
    shared_memory_bytes = launch_metadata.get("shared_memory_bytes")
    if not isinstance(shared_memory_bytes, int) or shared_memory_bytes < 0:
        raise RuntimeError(f"{kernel.kernel_id} metadata has invalid shared_memory_bytes")
    return shared_memory_bytes


def _block_size(kernel: KernelMetadata, artifact: dict[str, Any]) -> int:
    launch_metadata = artifact.get("launch_metadata")
    if not isinstance(launch_metadata, dict):
        raise RuntimeError(f"{kernel.kernel_id} metadata is missing launch_metadata")
    num_warps = launch_metadata.get("num_warps")
    if not isinstance(num_warps, int) or num_warps <= 0:
        raise RuntimeError(f"{kernel.kernel_id} metadata has invalid num_warps")
    return num_warps * THREADS_PER_WARP


def _launch_grid(kernel: KernelMetadata, artifact: dict[str, Any], c: Any) -> tuple[int, int, int]:
    launch_metadata = artifact.get("launch_metadata")
    if not isinstance(launch_metadata, dict):
        raise RuntimeError(f"{kernel.kernel_id} metadata is missing launch_metadata")
    if kernel.schedule is KernelSchedule.PERSISTENT:
        if artifact.get("shape_specialization") == "runtime":
            num_sms = launch_metadata.get("num_sms")
            if not isinstance(num_sms, int) or num_sms <= 0:
                raise RuntimeError(f"{kernel.kernel_id} metadata has invalid persistent num_sms")
            tile_count = (
                int(c.shape[-2]) // kernel.tile.block_m
                * (int(c.shape[-1]) // kernel.tile.block_n)
            )
            return (min(num_sms, tile_count), kernel.tile.split_k, 1)
        grid_x = launch_metadata.get("grid_x")
        grid_y = launch_metadata.get("grid_y")
        if not isinstance(grid_x, int) or grid_x <= 0:
            raise RuntimeError(f"{kernel.kernel_id} metadata has invalid persistent grid_x")
        if not isinstance(grid_y, int) or grid_y <= 0:
            raise RuntimeError(f"{kernel.kernel_id} metadata has invalid persistent grid_y")
        return (grid_x, grid_y, 1)
    return (
        int(c.shape[-2]) // kernel.tile.block_m
        * (int(c.shape[-1]) // kernel.tile.block_n),
        kernel.tile.split_k,
        1,
    )


def launch_hsaco(
    *,
    hsaco_path: str | Path,
    symbol: str,
    device_index: int,
    grid: tuple[int, int, int],
    block: tuple[int, int, int],
    shared_memory_bytes: int,
    stream_handle: int,
    a_ptr: int,
    b_ptr: int,
    a_scale_ptr: int,
    b_scale_ptr: int,
    c_ptr: int,
    gate_ptr: int = 0,
    m: int = 0,
    n: int = 0,
    k: int = 0,
    library_path: str | Path | None = None,
) -> None:
    library = load_dispatch_library(library_path)
    rc = library.amd_strix_halo_kernels_launch_hsaco(
        str(hsaco_path).encode(),
        symbol.encode(),
        int(device_index),
        int(grid[0]),
        int(grid[1]),
        int(grid[2]),
        int(block[0]),
        int(block[1]),
        int(block[2]),
        int(shared_memory_bytes),
        int(stream_handle),
        ctypes.c_void_p(int(a_ptr)),
        ctypes.c_void_p(int(b_ptr)),
        ctypes.c_void_p(int(a_scale_ptr)),
        ctypes.c_void_p(int(b_scale_ptr)),
        ctypes.c_void_p(int(c_ptr)),
        ctypes.c_void_p(int(gate_ptr)),
        int(m),
        int(n),
        int(k),
        ctypes.c_void_p(0),
        ctypes.c_void_p(0),
    )
    if rc != 0:
        raise RuntimeError(_library_last_error(library))


def launch_generated_kernel(
    a: Any,
    b: Any,
    *,
    kernel: KernelMetadata,
    a_scale: Any,
    b_scale: Any,
    c: Any | None = None,
    gate: Any | None = None,
    root: str | Path | None = None,
    library_path: str | Path | None = None,
    stream: Any | None = None,
) -> Any:
    torch = _torch()
    if not torch.cuda.is_available():
        raise RuntimeError("native generated kernels require a CUDA/HIP torch device")
    if not getattr(a, "is_cuda", False):
        raise RuntimeError("native generated kernels require CUDA/HIP tensors")
    if a_scale is None or b_scale is None:
        raise ValueError("native generated kernels require a_scale and b_scale tensors")
    hsaco_path = hsaco_path_for_kernel_id(kernel.kernel_id, root=root)
    if not hsaco_path.exists():
        raise RuntimeError(f"compiled HSACO code object is not installed at {hsaco_path}")
    artifact = _artifact_metadata(kernel.kernel_id, root=root)
    symbol = artifact.get("amdgcn_symbol")
    if not isinstance(symbol, str) or not symbol:
        raise RuntimeError(f"{kernel.kernel_id} metadata is missing amdgcn_symbol")
    if kernel.epilogue is Epilogue.SWIGLU and gate is not None:
        raise ValueError("SwiGLU native dispatch uses fused up/gate columns; external gate is not supported")
    if kernel.epilogue in {Epilogue.RELU2, Epilogue.SWIGLU} and kernel.tile.split_k != 1:
        raise ValueError(f"{kernel.epilogue.value} native dispatch currently supports SPLIT_K=1 only")

    a = _require_contiguous("a", a)
    b = _require_contiguous("b", b)
    a_scale = _require_contiguous("a_scale", a_scale)
    b_scale = _require_contiguous("b_scale", b_scale)
    a_scale = _require_bfloat16_scale(torch, "a_scale", a_scale)
    b_scale = _require_bfloat16_scale(torch, "b_scale", b_scale)
    if c is None:
        m, n, _ = _logical_problem_shape(kernel, a, b)
        c = torch.empty(
            (m, n),
            device=a.device,
            dtype=_output_torch_dtype(torch, kernel),
        )
    c = _require_contiguous("c", c)
    expected_c_dtype = _output_torch_dtype(torch, kernel)
    if c.dtype != expected_c_dtype:
        raise ValueError(f"output dtype must be {expected_c_dtype}; got {c.dtype}")
    if kernel.tile.split_k > 1:
        c.zero_()
    if gate is not None:
        gate = _require_contiguous("gate", gate)
    m, n, k = _validate_launch_shape(kernel, artifact, a, b, c)
    _validate_scale_shapes(kernel, m=m, n=n, k=k, a_scale=a_scale, b_scale=b_scale)
    shared_memory_bytes = _shared_memory_bytes(kernel, artifact)
    block_size = _block_size(kernel, artifact)
    grid = _launch_grid(kernel, artifact, c)
    launch_hsaco(
        hsaco_path=hsaco_path,
        symbol=symbol,
        device_index=_device_index(a),
        grid=grid,
        block=(block_size, 1, 1),
        shared_memory_bytes=shared_memory_bytes,
        stream_handle=_stream_handle(torch, a, stream),
        a_ptr=a.data_ptr(),
        b_ptr=b.data_ptr(),
        a_scale_ptr=a_scale.data_ptr(),
        b_scale_ptr=b_scale.data_ptr(),
        c_ptr=c.data_ptr(),
        gate_ptr=0 if gate is None else gate.data_ptr(),
        m=m,
        n=n,
        k=k,
        library_path=library_path,
    )
    return c


def _torch() -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required for native kernel dispatch") from exc
    return torch


def load_torch_library(path: str | Path) -> None:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required to load native kernel libraries") from exc
    torch.ops.load_library(str(path))


def invoke_registered_op(op_name: str, *args: Any, **kwargs: Any) -> Any:
    try:
        import torch
    except ImportError as exc:
        raise RuntimeError("torch is required to invoke native kernel ops") from exc
    if "::" not in op_name:
        raise ValueError("op_name must use the namespace::name form")
    namespace, name = op_name.split("::", 1)
    return getattr(getattr(torch.ops, namespace), name)(*args, **kwargs)

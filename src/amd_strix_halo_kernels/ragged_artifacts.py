from __future__ import annotations

from dataclasses import asdict
from typing import Any

from .metadata import ARCH, OUTPUT_DTYPE_BF16, OUTPUT_DTYPE_FLOAT32, GemmLayout, ScaleMode, ScaleSpec


RAGGED_FAMILY = "ragged_dot_int4"
RAGGED_FWD = "fwd"
RAGGED_BWD = "bwd"
RAGGED_BWD_ACCUM = "bwd_accum"
RAGGED_EVEN_K = "evenk"
RAGGED_MASK_K = "maskk"
RAGGED_VARIANTS = (RAGGED_EVEN_K, RAGGED_MASK_K)
RAGGED_STORE_DEFAULT = "default"
RAGGED_STORE_PAIRED = "paired"
RAGGED_STORE_SCALAR = "scalar"
RAGGED_STORE_WIDE = "wide"
RAGGED_STORE_STRATEGIES = (
    RAGGED_STORE_DEFAULT,
    RAGGED_STORE_PAIRED,
    RAGGED_STORE_SCALAR,
    RAGGED_STORE_WIDE,
)
RAGGED_MATRIX_MODES = (RAGGED_FWD, RAGGED_BWD)
RAGGED_MODES = (*RAGGED_MATRIX_MODES, RAGGED_BWD_ACCUM)
RAGGED_BWD_PREBUILT_SPECIALIZED_SHAPES = ((4096, 4096, 4096),)
RAGGED_BWD_PREBUILT_SPECIALIZED_LAYOUTS = (GemmLayout.NN, GemmLayout.TN)


def ragged_config_label(config: Any) -> str:
    base = f"BM{config.block_m}_BN{config.block_n}_BK{config.block_k}"
    if hasattr(config, "group_size_tasks"):
        return f"{base}_GST{config.group_size_tasks}_W{config.num_warps}_S{config.num_stages}"
    return f"{base}_W{config.num_warps}_S{config.num_stages}_SK{config.split_k}"


def ragged_kernel_id(
    *,
    mode: str,
    layout: GemmLayout,
    scale: ScaleSpec,
    config: Any,
    variant: str,
    output_dtype: str | None = None,
    store_strategy: str = RAGGED_STORE_DEFAULT,
    shape_specialization: tuple[int, int, int] | None = None,
    arch: str = ARCH,
) -> str:
    if mode not in RAGGED_MODES:
        raise ValueError(f"ragged mode must be one of {RAGGED_MODES}; got {mode!r}")
    if variant not in RAGGED_VARIANTS:
        raise ValueError(f"ragged variant must be one of {RAGGED_VARIANTS}; got {variant!r}")
    if store_strategy not in RAGGED_STORE_STRATEGIES:
        raise ValueError(
            f"ragged store strategy must be one of {RAGGED_STORE_STRATEGIES}; got {store_strategy!r}"
        )
    dtype = output_dtype or (OUTPUT_DTYPE_BF16 if mode == RAGGED_FWD else OUTPUT_DTYPE_FLOAT32)
    store_suffix = "" if store_strategy == RAGGED_STORE_DEFAULT else f"_{store_strategy}"
    shape_suffix = ""
    if shape_specialization is not None:
        if mode != RAGGED_BWD:
            raise ValueError("shape-specialized ragged artifacts are supported for standard backward only")
        m, n, k = shape_specialization
        if min(m, n, k) <= 0 or k % 2 != 0:
            raise ValueError("shape specialization requires positive M/N and positive even K")
        shape_suffix = f"_m{m}_n{n}_k{k}"
    return (
        f"{arch}_ragged_int4_{mode}_{layout.value}_{scale.label.lower()}_"
        f"{variant}_{dtype}{store_suffix}{shape_suffix}_{ragged_config_label(config).lower()}"
    )


def ragged_config_dict(config: Any) -> dict[str, Any]:
    data = asdict(config)
    return {key: data[key] for key in sorted(data)}


def ragged_metadata_dict(
    *,
    kernel_id: str,
    mode: str,
    layout: GemmLayout,
    scale: ScaleSpec,
    config: Any,
    variant: str,
    output_dtype: str,
    store_strategy: str,
    amdgcn_symbol: str,
    launch_metadata: dict[str, int],
    asm_keys: list[str],
    triton_artifacts: dict[str, str],
    source_triton_commit: str | None,
    amdgcn: str,
    kernel_arg_layout: dict[str, Any] | None = None,
    shape_specialization: tuple[int, int, int] | None = None,
) -> dict[str, Any]:
    if shape_specialization is not None:
        if mode != RAGGED_BWD:
            raise ValueError("shape-specialized ragged metadata is supported for standard backward only")
        actual_runtime_args = (
            kernel_arg_layout.get("runtime_scalar_args")
            if isinstance(kernel_arg_layout, dict)
            else None
        )
        runtime_shape_args = (
            list(actual_runtime_args)
            if isinstance(actual_runtime_args, list)
            else ["M", "N", "K_PACKED", "SCALE_COLS"]
        )
    elif mode == RAGGED_FWD:
        runtime_shape_args = ["M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS"]
    elif mode in {RAGGED_BWD, RAGGED_BWD_ACCUM}:
        runtime_shape_args = ["M", "N", "K_PACKED", "SCALE_COLS"]
    else:
        raise ValueError(f"unsupported ragged mode {mode!r}")
    return {
        "kernel_id": kernel_id,
        "family": RAGGED_FAMILY,
        "arch": ARCH,
        "mode": mode,
        "layout": layout.value,
        "scale": {
            "mode": scale.mode.value,
            "subchannel_size": scale.subchannel_size,
        },
        "rhs_subchannel_scale_layout": "kgroup_output" if scale.mode is ScaleMode.SUBCHANNEL else None,
        "config": ragged_config_dict(config),
        "config_label": ragged_config_label(config),
        "variant": variant,
        "output_dtype": output_dtype,
        "store_strategy": store_strategy,
        "runtime_constraints": {
            "required_n_multiple": (
                8
                if store_strategy == RAGGED_STORE_WIDE
                else 2 if store_strategy == RAGGED_STORE_PAIRED else 1
            ),
            "out_alignment_bytes": (
                16
                if store_strategy == RAGGED_STORE_WIDE
                else 4 if store_strategy == RAGGED_STORE_PAIRED else 1
            ),
        },
        "shape_specialization": (
            {
                "m": shape_specialization[0],
                "n": shape_specialization[1],
                "k": shape_specialization[2],
            }
            if shape_specialization is not None
            else "runtime"
        ),
        "runtime_shape_args": runtime_shape_args,
        "asm_keys": asm_keys,
        "triton_artifacts": triton_artifacts,
        "status": "generated",
        "source_triton_commit": source_triton_commit,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "kernel_arg_layout": kernel_arg_layout,
        "amdgcn_stats": {
            "iu4_wmma": amdgcn.count("v_wmma_i32_16x16x16_iu4"),
            "waitcnt": amdgcn.count("s_waitcnt"),
            "lines": len(amdgcn.splitlines()),
        },
    }

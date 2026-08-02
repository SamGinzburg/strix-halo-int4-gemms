from __future__ import annotations

import argparse
import json
import sys
from dataclasses import replace
from pathlib import Path
from typing import Any, Iterable


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AMDGCN_DIR = REPO_ROOT / "kernels" / "amdgcn"
DEFAULT_TRITON_DIR = REPO_ROOT / "kernels" / "triton"
DEFAULT_SUMMARY = DEFAULT_AMDGCN_DIR / "ragged_generation_summary.json"


def add_local_package_to_path() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    sys.path.insert(0, str(REPO_ROOT / "scripts"))


add_local_package_to_path()

from amd_strix_halo_kernels.artifacts import (  # noqa: E402
    display_path,
    installed_triton_commit,
    scrub_local_debug_paths,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.metadata import (  # noqa: E402
    OUTPUT_DTYPE_BF16,
    OUTPUT_DTYPE_FLOAT32,
    OUTPUT_DTYPE_INT4,
    SUPPORTED_SUBCHANNELS,
    Epilogue,
    GemmLayout,
    ScaleMode,
    ScaleSpec,
)
from amd_strix_halo_kernels.ragged import (  # noqa: E402
    RAGGED_BWD_ACCUM_CONFIG,
    RaggedBwdDotConfig,
    RaggedDotConfig,
    default_ragged_bwd_config,
)
from amd_strix_halo_kernels.ragged_artifacts import (  # noqa: E402
    RAGGED_BWD,
    RAGGED_BWD_ACCUM,
    RAGGED_BWD_PREBUILT_SPECIALIZED_LAYOUTS,
    RAGGED_BWD_PREBUILT_SPECIALIZED_SHAPES,
    RAGGED_EVEN_K,
    RAGGED_FWD,
    RAGGED_MASK_K,
    RAGGED_MODES,
    RAGGED_STORE_DEFAULT,
    RAGGED_STORE_PAIRED,
    RAGGED_STORE_SCALAR,
    RAGGED_STORE_WIDE,
    RAGGED_VARIANTS,
    ragged_config_label,
    ragged_kernel_id,
    ragged_metadata_dict,
)


DEFAULT_FWD_CONFIG = RaggedDotConfig()
DEFAULT_BWD_CONFIG = RaggedBwdDotConfig()
DEFAULT_BWD_ACCUM_CONFIG = RAGGED_BWD_ACCUM_CONFIG


def _parse_scale(value: str) -> ScaleSpec:
    if value == "pc":
        return ScaleSpec(ScaleMode.PER_CHANNEL)
    if value.startswith("sc"):
        try:
            return ScaleSpec(ScaleMode.SUBCHANNEL, int(value[2:]))
        except ValueError as exc:
            raise argparse.ArgumentTypeError("subchannel scale must use sc<size>") from exc
    raise argparse.ArgumentTypeError("scale must be pc or sc<size>")


def _triton_checkout_root(triton: Any) -> Path | None:
    module_file = getattr(triton, "__file__", None)
    if module_file is None:
        return None
    module_path = Path(module_file).resolve()
    for parent in module_path.parents:
        if (parent / ".git").exists() and (parent / "python" / "triton").exists():
            return parent
    for parent in module_path.parents:
        if parent.name == "triton":
            return parent
    return module_path.parent


def _triton_commit(triton: Any) -> str | None:
    del triton
    return installed_triton_commit()


def _cdiv(x: int, y: int) -> int:
    return (x + y - 1) // y


def _compile_k(logical_k: int, scale: ScaleSpec, block_k: int) -> int:
    k = max(logical_k, block_k)
    if scale.mode is ScaleMode.SUBCHANNEL:
        subchannel = scale.subchannel_size or block_k
        # Compile subchannel kernels with more than one scale column so SCALE_COLS
        # remains a runtime scalar in the packaged HSACO ABI.
        k = max(k, subchannel * 2)
    if k % 2:
        k += 1
    return k


def _launch_metadata(program: Any) -> dict[str, int]:
    metadata = program.metadata
    return {
        "num_ctas": int(metadata.num_ctas),
        "num_warps": int(metadata.num_warps),
        "shared_memory_bytes": int(metadata.shared),
        "grid_x": 0,
        "grid_y": 0,
        "dynamic_grid": 1,
        "persistent": 0,
    }


def _kernel_arg_layout(amdgcn: str, runtime_scalar_args: list[str]) -> dict[str, object]:
    lines = amdgcn.splitlines()
    in_args = False
    by_value_offsets: list[int] = []
    global_buffer_offsets: list[int] = []
    for index, line in enumerate(lines):
        if line.strip() == "- .args:":
            in_args = True
            continue
        if in_args and line.startswith("    .group_segment_fixed_size"):
            break
        if not in_args or ".offset:" not in line:
            continue
        offset = int(line.rsplit(None, 1)[-1])
        size_line = lines[index + 1] if index + 1 < len(lines) else ""
        kind_line = lines[index + 2] if index + 2 < len(lines) else ""
        if ".size:" not in size_line or ".value_kind:" not in kind_line:
            continue
        size = int(size_line.rsplit(None, 1)[-1])
        kind = kind_line.rsplit(None, 1)[-1]
        if kind == "by_value" and size == 4:
            by_value_offsets.append(offset)
        elif kind == "global_buffer" and size == 8:
            global_buffer_offsets.append(offset)
    if len(global_buffer_offsets) < 2:
        raise ValueError("could not parse ragged AMDGCN kernel argument layout")
    if len(runtime_scalar_args) != len(by_value_offsets):
        raise ValueError(
            f"runtime scalar arg count {len(runtime_scalar_args)} does not match AMDGCN by-value args {len(by_value_offsets)}"
        )
    return {
        "by_value_arg_count": len(by_value_offsets),
        "by_value_offsets": by_value_offsets,
        "runtime_scalar_args": runtime_scalar_args,
        "hidden_global_buffer_offsets": global_buffer_offsets[-2:],
    }


def _fwd_args(
    torch: Any,
    *,
    config: RaggedDotConfig,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    output_dtype: str,
    epilogue: Epilogue,
) -> tuple[Any, ...]:
    groups = 2
    m = max(config.block_m * 2, 64)
    n = max(config.block_n, 64)
    k = _compile_k(config.block_k, scale, config.block_k)
    k_packed = k // 2
    scale_cols = _cdiv(k, scale.subchannel_size or k)
    lhs_shape = (k_packed, m) if layout in {GemmLayout.TN, GemmLayout.TT} else (m, k_packed)
    rhs_n = n * 2 if epilogue is Epilogue.SWIGLU else n
    rhs_shape = (
        (groups, rhs_n, k_packed)
        if layout in {GemmLayout.NT, GemmLayout.TT}
        else (groups, k_packed, rhs_n)
    )
    lhs = torch.empty(lhs_shape, device="cuda", dtype=torch.uint8)
    rhs = torch.empty(rhs_shape, device="cuda", dtype=torch.uint8)
    a_scale = (
        torch.empty((m, scale_cols), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((m,), device="cuda", dtype=torch.bfloat16)
    )
    b_scale = (
        torch.empty((groups, scale_cols, rhs_n), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, rhs_n), device="cuda", dtype=torch.bfloat16)
    )
    out = torch.empty(
        (m, n // 2) if output_dtype == OUTPUT_DTYPE_INT4 else (m, n),
        device="cuda",
        dtype=torch.uint8 if output_dtype == OUTPUT_DTYPE_INT4 else torch.bfloat16,
    )
    out_scale = torch.empty((m, n // 256), device="cuda", dtype=torch.bfloat16)
    group_sizes = torch.tensor([m // groups, m - (m // groups)], device="cuda", dtype=torch.int32)

    from amd_strix_halo_kernels.ragged import calculate_group_info

    group_info = calculate_group_info(group_sizes, config.block_m, align_tile=config.align_tile, allow_triton=False)
    return (
        lhs,
        rhs,
        a_scale,
        b_scale,
        group_info.group_id,
        group_info.block_start,
        group_info.actual_start,
        group_info.actual_end,
        out,
        out_scale,
        m,
        n,
        k_packed,
        scale_cols,
        group_info.num_tasks,
    )


def _bwd_args(
    torch: Any,
    *,
    config: RaggedBwdDotConfig,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    output_dtype: str,
    shape_specialization: tuple[int, int, int] | None = None,
) -> tuple[Any, ...]:
    groups = 2
    if shape_specialization is None:
        m = max(config.block_m, 64)
        n = max(config.block_n, 64)
        k = _compile_k(config.block_k, scale, config.block_k)
    else:
        m, n, k = shape_specialization
    k_packed = k // 2
    scale_cols = _cdiv(k, scale.subchannel_size or k)
    lhs_shape = (groups, k_packed, m) if layout in {GemmLayout.TN, GemmLayout.TT} else (groups, m, k_packed)
    rhs_shape = (groups, n, k_packed) if layout in {GemmLayout.NT, GemmLayout.TT} else (groups, k_packed, n)
    lhs = torch.empty(lhs_shape, device="cuda", dtype=torch.uint8)
    rhs = torch.empty(rhs_shape, device="cuda", dtype=torch.uint8)
    a_scale = (
        torch.empty((groups, m, scale_cols), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, m), device="cuda", dtype=torch.bfloat16)
    )
    b_scale = (
        torch.empty((groups, scale_cols, n), device="cuda", dtype=torch.bfloat16)
        if scale.mode is ScaleMode.SUBCHANNEL
        else torch.empty((groups, n), device="cuda", dtype=torch.bfloat16)
    )
    torch_output_dtype = torch.bfloat16 if output_dtype == OUTPUT_DTYPE_BF16 else torch.float32
    out = torch.empty((groups, m, n), device="cuda", dtype=torch_output_dtype)
    if variant == RAGGED_EVEN_K:
        group_sizes = torch.tensor([k, k], device="cuda", dtype=torch.int32)
    else:
        group_sizes = torch.tensor([max(1, k - 1), max(1, k - 3)], device="cuda", dtype=torch.int32)
    return lhs, rhs, a_scale, b_scale, group_sizes, out, m, n, k_packed, scale_cols


def _bwd_accum_args(
    torch: Any,
    *,
    config: RaggedBwdDotConfig,
    output_dtype: str,
) -> tuple[Any, ...]:
    tasks, experts = 4, 2
    m = max(config.block_m, 64)
    n = max(config.block_n, 64)
    k_packed = config.block_k // 2
    lhs = torch.empty((tasks, k_packed, m), device="cuda", dtype=torch.uint8)
    rhs = torch.empty((tasks, k_packed, n), device="cuda", dtype=torch.uint8)
    a_scale = torch.empty((tasks, m), device="cuda", dtype=torch.bfloat16)
    b_scale = torch.empty((tasks, n), device="cuda", dtype=torch.bfloat16)
    task_ranges = torch.tensor([[0, 2], [2, 4]], device="cuda", dtype=torch.int32)
    torch_output_dtype = torch.bfloat16 if output_dtype == OUTPUT_DTYPE_BF16 else torch.float32
    out = torch.empty((experts, m, n), device="cuda", dtype=torch_output_dtype)
    return lhs, rhs, a_scale, b_scale, task_ranges, out, m, n, k_packed, 1


def compile_ragged_program(
    *,
    mode: str,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    config: RaggedDotConfig | RaggedBwdDotConfig,
    output_dtype: str,
    epilogue: Epilogue = Epilogue.NONE,
    output_scale: ScaleSpec | None = None,
    store_strategy: str = RAGGED_STORE_DEFAULT,
    shape_specialization: tuple[int, int, int] | None = None,
) -> Any:
    import torch

    if shape_specialization is not None and not (
        mode == RAGGED_BWD
        and output_dtype == OUTPUT_DTYPE_BF16
        and store_strategy == RAGGED_STORE_WIDE
        and config.split_k == 1
    ):
        raise ValueError(
            "shape specialization requires standard split-K=1 BF16 backward with wide stores"
        )
    if mode == RAGGED_FWD:
        allowed_output_dtypes = {OUTPUT_DTYPE_BF16, OUTPUT_DTYPE_INT4}
    elif mode == RAGGED_BWD:
        allowed_output_dtypes = {OUTPUT_DTYPE_FLOAT32}
        if config.split_k == 1:
            allowed_output_dtypes.add(OUTPUT_DTYPE_BF16)
    else:
        allowed_output_dtypes = {OUTPUT_DTYPE_FLOAT32, OUTPUT_DTYPE_BF16}
    if output_dtype not in allowed_output_dtypes:
        raise ValueError(f"unsupported {mode} output dtype {output_dtype!r}")
    if output_dtype == OUTPUT_DTYPE_INT4:
        output_scale = output_scale or ScaleSpec(ScaleMode.SUBCHANNEL, 256)
        if mode != RAGGED_FWD or output_scale != ScaleSpec(ScaleMode.SUBCHANNEL, 256):
            raise ValueError("ragged INT4 output requires forward mode and subchannel-256 output scales")
        if config.block_n != 256:
            raise ValueError("ragged INT4 output requires BLOCK_N=256")
    elif output_scale is not None or epilogue is not Epilogue.NONE:
        raise ValueError("ragged output_scale and fused epilogues require INT4 output")
    valid_bf16_store = (
        mode == RAGGED_BWD
        and output_dtype == OUTPUT_DTYPE_BF16
        and config.split_k == 1
        and (
            store_strategy in {RAGGED_STORE_PAIRED, RAGGED_STORE_SCALAR}
            or (store_strategy == RAGGED_STORE_WIDE and shape_specialization is not None)
        )
    )
    if store_strategy != RAGGED_STORE_DEFAULT and not valid_bf16_store:
        raise ValueError(
            f"store strategy {store_strategy!r} is unsupported for {mode}/{output_dtype}"
        )

    if mode == RAGGED_FWD:
        from amd_strix_halo_kernels.ragged import (
            _ragged_dot_int4_even_k_kernel,
            _ragged_dot_int4_kernel,
            _ragged_dot_int4_quant_kernel,
        )

        assert isinstance(config, RaggedDotConfig)
        args = _fwd_args(
            torch,
            config=config,
            layout=layout,
            scale=scale,
            variant=variant,
            output_dtype=output_dtype,
            epilogue=epilogue,
        )
        (
            lhs,
            rhs,
            a_scale,
            b_scale,
            group_id,
            block_start,
            actual_start,
            actual_end,
            out,
            out_scale,
            m,
            n,
            k_packed,
            scale_cols,
            num_tasks,
        ) = args
        grid = (num_tasks * _cdiv(n, config.block_n),)
        if output_dtype == OUTPUT_DTYPE_INT4:
            return _ragged_dot_int4_quant_kernel(specialize_runtime_args=False)[grid](
                lhs,
                rhs,
                a_scale,
                b_scale,
                group_id,
                block_start,
                actual_start,
                actual_end,
                out,
                out_scale,
                m,
                n,
                k_packed,
                scale_cols,
                num_tasks,
                BLOCK_M=config.block_m,
                BLOCK_N=config.block_n,
                BLOCK_K=config.block_k,
                HAS_LHS_SCALE=True,
                HAS_RHS_SCALE=True,
                SUBCHANNEL=scale.subchannel_size or 0,
                GROUP_SIZE_TASKS=config.group_size_tasks,
                A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
                B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
                EVEN_K_FAST_PATH=variant == RAGGED_EVEN_K,
                SWIGLU=epilogue is Epilogue.SWIGLU,
                RELU2=epilogue is Epilogue.RELU2,
                num_warps=config.num_warps,
                num_stages=config.num_stages,
                matrix_instr_nonkdim=16,
                kpack=1,
            )
        kernel = (
            _ragged_dot_int4_even_k_kernel(specialize_runtime_args=False)
            if variant == RAGGED_EVEN_K
            else _ragged_dot_int4_kernel(specialize_runtime_args=False)
        )
        return kernel[grid](
            lhs,
            rhs,
            a_scale,
            b_scale,
            group_id,
            block_start,
            actual_start,
            actual_end,
            out,
            m,
            n,
            k_packed,
            scale_cols,
            num_tasks,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            HAS_LHS_SCALE=True,
            HAS_RHS_SCALE=True,
            SUBCHANNEL=scale.subchannel_size or 0,
            GROUP_SIZE_TASKS=config.group_size_tasks,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )

    if mode == RAGGED_BWD:
        from amd_strix_halo_kernels.ragged import _ragged_dot_int4_bwd_kernel
        import triton
        import triton.language as tl

        assert isinstance(config, RaggedBwdDotConfig)
        args = _bwd_args(
            torch,
            config=config,
            layout=layout,
            scale=scale,
            variant=variant,
            output_dtype=output_dtype,
            shape_specialization=shape_specialization,
        )
        lhs, rhs, a_scale, b_scale, group_sizes, out, m, n, k_packed, scale_cols = args
        paired_store = store_strategy == RAGGED_STORE_PAIRED
        out_arg = triton.reinterpret(out, tl.uint32) if paired_store else out
        groups = int(lhs.shape[0])
        grid = (groups * _cdiv(m, config.block_m) * _cdiv(n, config.block_n), config.split_k)
        kernel = _ragged_dot_int4_bwd_kernel(
            specialize_runtime_args=shape_specialization is not None
        )
        return kernel[grid](
            lhs,
            rhs,
            a_scale,
            b_scale,
            group_sizes,
            out_arg,
            m,
            n,
            k_packed,
            scale_cols,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            SPLIT_K=config.split_k,
            HAS_LHS_SCALE=True,
            HAS_RHS_SCALE=True,
            SUBCHANNEL=scale.subchannel_size or 0,
            A_TRANS=layout in {GemmLayout.TN, GemmLayout.TT},
            B_TRANS=layout in {GemmLayout.NT, GemmLayout.TT},
            EVEN_K_FAST_PATH=variant == RAGGED_EVEN_K,
            PAIRED_BF16_STORE=paired_store,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
    if mode == RAGGED_BWD_ACCUM:
        from amd_strix_halo_kernels.ragged import _ragged_dot_int4_bwd_accum_kernel

        assert isinstance(config, RaggedBwdDotConfig)
        if layout is not GemmLayout.TN or scale.mode is not ScaleMode.PER_CHANNEL or variant != RAGGED_EVEN_K:
            raise ValueError("bwd_accum generation requires TN layout, per-channel scales, and evenk variant")
        lhs, rhs, a_scale, b_scale, task_ranges, out, m, n, k_packed, scale_cols = _bwd_accum_args(
            torch,
            config=config,
            output_dtype=output_dtype,
        )
        experts = int(task_ranges.shape[0])
        grid = (experts * _cdiv(m, config.block_m) * _cdiv(n, config.block_n),)
        return _ragged_dot_int4_bwd_accum_kernel()[grid](
            lhs,
            rhs,
            a_scale,
            b_scale,
            task_ranges,
            out,
            m,
            n,
            k_packed,
            scale_cols,
            BLOCK_M=config.block_m,
            BLOCK_N=config.block_n,
            BLOCK_K=config.block_k,
            num_warps=config.num_warps,
            num_stages=config.num_stages,
            matrix_instr_nonkdim=16,
            kpack=1,
        )
    raise ValueError(f"unsupported ragged mode {mode!r}")


def _runtime_scalar_args(program: Any) -> list[str]:
    return [
        name
        for name, ty in program.src.signature.items()
        if ty != "constexpr" and not str(ty).startswith("*")
    ]


def compile_ragged_kernel(**kwargs: Any) -> tuple[dict[str, object], dict[str, int], list[str]]:
    program = compile_ragged_program(**kwargs)
    return dict(program.asm), _launch_metadata(program), _runtime_scalar_args(program)


def _write_artifacts(
    *,
    mode: str,
    layout: GemmLayout,
    scale: ScaleSpec,
    variant: str,
    config: RaggedDotConfig | RaggedBwdDotConfig,
    asm: dict[str, object],
    launch_metadata: dict[str, int],
    runtime_scalar_args: list[str],
    out_dir: Path,
    triton_out_dir: Path | None,
    triton: Any,
    output_dtype: str,
    epilogue: Epilogue,
    output_scale: ScaleSpec | None,
    store_strategy: str,
    shape_specialization: tuple[int, int, int] | None = None,
) -> dict[str, object]:
    kernel_id = ragged_kernel_id(
        mode=mode,
        layout=layout,
        scale=scale,
        config=config,
        variant=variant,
        output_dtype=output_dtype,
        epilogue=epilogue,
        output_scale=output_scale,
        store_strategy=store_strategy,
        shape_specialization=shape_specialization,
    )
    out_dir.mkdir(parents=True, exist_ok=True)
    asm_path = out_dir / f"{kernel_id}.s"
    metadata_path = out_dir / f"{kernel_id}.json"
    triton_root = _triton_checkout_root(triton)
    amdgcn, amdgcn_symbol = uniquify_amdgcn_symbols(str(asm["amdgcn"]), kernel_id=kernel_id)
    amdgcn = scrub_local_debug_paths(amdgcn, repo_root=REPO_ROOT, triton_root=triton_root)
    asm = {**asm, "amdgcn": amdgcn}
    asm_path.write_text(amdgcn)
    triton_artifacts: dict[str, str] = {}
    if triton_out_dir is not None:
        triton_artifacts = {
            key: display_path(path, root=REPO_ROOT)
            for key, path in write_triton_text_artifacts(
                kernel_id=kernel_id,
                asm=asm,
                out_dir=triton_out_dir,
                repo_root=REPO_ROOT,
                triton_root=triton_root,
            ).items()
        }
    metadata = ragged_metadata_dict(
        kernel_id=kernel_id,
        mode=mode,
        layout=layout,
        scale=scale,
        config=config,
        variant=variant,
        output_dtype=output_dtype,
        epilogue=epilogue,
        output_scale=output_scale,
        store_strategy=store_strategy,
        amdgcn_symbol=amdgcn_symbol,
        launch_metadata=launch_metadata,
        asm_keys=sorted(asm),
        triton_artifacts=triton_artifacts,
        source_triton_commit=_triton_commit(triton),
        amdgcn=amdgcn,
        kernel_arg_layout=_kernel_arg_layout(amdgcn, runtime_scalar_args),
        shape_specialization=shape_specialization,
    )
    metadata_path.write_text(json.dumps(metadata, indent=2, sort_keys=True) + "\n")
    return {
        "kernel_id": kernel_id,
        "asm": display_path(asm_path, root=REPO_ROOT),
        "metadata": display_path(metadata_path, root=REPO_ROOT),
        "mode": mode,
        "layout": layout.value,
        "scale": scale.label,
        "variant": variant,
        "epilogue": epilogue.value,
        "output_dtype": output_dtype,
        "store_strategy": store_strategy,
        "shape_specialization": shape_specialization or "runtime",
        "config_label": ragged_config_label(config),
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "amdgcn_stats": metadata["amdgcn_stats"],
    }


def _clean_ragged_outputs(out_dir: Path, triton_out_dir: Path | None) -> int:
    removed = 0
    for directory, patterns in (
        (out_dir, ("*ragged_int4*.s", "*ragged_int4*.json")),
        (triton_out_dir, ("*ragged_int4*.py", "*ragged_int4*.ttir", "*ragged_int4*.ttgir", "*ragged_int4*.llir")),
    ):
        if directory is None or not directory.exists():
            continue
        for pattern in patterns:
            for path in directory.glob(pattern):
                path.unlink()
                removed += 1
    return removed


def _selected(values: list[Any], default: Iterable[Any]) -> tuple[Any, ...]:
    return tuple(values) if values else tuple(default)


def _build_jobs(
    *,
    modes: Iterable[str],
    layouts: Iterable[GemmLayout],
    scales: Iterable[ScaleSpec],
    variants: Iterable[str],
    epilogues: Iterable[Epilogue],
) -> list[
    tuple[
        str,
        GemmLayout,
        ScaleSpec,
        str,
        RaggedDotConfig | RaggedBwdDotConfig,
        str,
        Epilogue,
        ScaleSpec | None,
        str,
        tuple[int, int, int] | None,
    ]
]:
    jobs: list[
        tuple[
            str,
            GemmLayout,
            ScaleSpec,
            str,
            RaggedDotConfig | RaggedBwdDotConfig,
            str,
            Epilogue,
            ScaleSpec | None,
            str,
            tuple[int, int, int] | None,
        ]
    ] = []
    for mode in modes:
        if mode == RAGGED_BWD_ACCUM:
            for output_dtype in (OUTPUT_DTYPE_FLOAT32, OUTPUT_DTYPE_BF16):
                jobs.append(
                    (
                        mode,
                        GemmLayout.TN,
                        ScaleSpec(ScaleMode.PER_CHANNEL),
                        RAGGED_EVEN_K,
                        DEFAULT_BWD_ACCUM_CONFIG,
                        output_dtype,
                        Epilogue.NONE,
                        None,
                        RAGGED_STORE_DEFAULT,
                        None,
                    )
                )
            continue
        for layout in layouts:
            for scale in scales:
                for variant in variants:
                    if mode == RAGGED_FWD:
                        config = replace(
                            DEFAULT_FWD_CONFIG,
                            enable_even_k_fast_path=(variant == RAGGED_EVEN_K),
                        )
                        jobs.append(
                            (
                                mode,
                                layout,
                                scale,
                                variant,
                                config,
                                OUTPUT_DTYPE_BF16,
                                Epilogue.NONE,
                                None,
                                RAGGED_STORE_DEFAULT,
                                None,
                            )
                        )
                        for epilogue in epilogues:
                            jobs.append(
                                (
                                    mode,
                                    layout,
                                    scale,
                                    variant,
                                    config,
                                    OUTPUT_DTYPE_INT4,
                                    epilogue,
                                    ScaleSpec(ScaleMode.SUBCHANNEL, 256),
                                    RAGGED_STORE_DEFAULT,
                                    None,
                                )
                            )
                        continue
                    for output_dtype in (OUTPUT_DTYPE_BF16, OUTPUT_DTYPE_FLOAT32):
                        config = default_ragged_bwd_config(
                            layout=layout,
                            scale=scale,
                            variant=variant,
                            output_dtype=output_dtype,
                        )
                        store_strategies = (
                            (
                                RAGGED_STORE_PAIRED,
                                RAGGED_STORE_SCALAR,
                                *(
                                    (RAGGED_STORE_WIDE,)
                                    if layout in RAGGED_BWD_PREBUILT_SPECIALIZED_LAYOUTS
                                    else ()
                                ),
                            )
                            if output_dtype == OUTPUT_DTYPE_BF16
                            else (RAGGED_STORE_DEFAULT,)
                        )
                        for store_strategy in store_strategies:
                            shape_specializations = (
                                RAGGED_BWD_PREBUILT_SPECIALIZED_SHAPES
                                if store_strategy == RAGGED_STORE_WIDE
                                else (None,)
                            )
                            for shape_specialization in shape_specializations:
                                jobs.append(
                                    (
                                        mode,
                                        layout,
                                        scale,
                                        variant,
                                        config,
                                        output_dtype,
                                        Epilogue.NONE,
                                        None,
                                        store_strategy,
                                        shape_specialization,
                                    )
                                )
    return jobs


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate prebuilt AMDGCN artifacts for ragged int4 dot kernels.")
    parser.add_argument("--mode", action="append", choices=[RAGGED_FWD, RAGGED_BWD, RAGGED_BWD_ACCUM], default=[])
    parser.add_argument("--layout", action="append", type=GemmLayout, choices=list(GemmLayout), default=[])
    parser.add_argument("--scale", action="append", type=_parse_scale, default=[])
    parser.add_argument("--variant", action="append", choices=list(RAGGED_VARIANTS), default=[])
    parser.add_argument("--epilogue", action="append", type=Epilogue, choices=list(Epilogue), default=[])
    parser.add_argument(
        "--output-dtype",
        action="append",
        choices=[OUTPUT_DTYPE_BF16, OUTPUT_DTYPE_FLOAT32, OUTPUT_DTYPE_INT4],
        default=[],
    )
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_AMDGCN_DIR)
    parser.add_argument("--triton-out-dir", type=Path, default=DEFAULT_TRITON_DIR)
    parser.add_argument("--summary", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--no-triton-artifacts", action="store_true")
    parser.add_argument("--clean", action="store_true", help="remove existing ragged generated artifacts before regenerating")
    parser.add_argument("--limit", type=int, default=0)
    return parser


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)

    import triton

    modes = _selected(args.mode, RAGGED_MODES)
    layouts = _selected(args.layout, tuple(GemmLayout))
    scales = _selected(args.scale, (*(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS), ScaleSpec(ScaleMode.PER_CHANNEL)))
    variants = _selected(args.variant, RAGGED_VARIANTS)
    epilogues = _selected(args.epilogue, tuple(Epilogue))
    triton_out_dir = None if args.no_triton_artifacts else args.triton_out_dir
    if args.clean:
        removed = _clean_ragged_outputs(args.out_dir, args.triton_out_dir)
        print(f"removed {removed} stale ragged artifact files", flush=True)

    jobs = _build_jobs(
        modes=modes,
        layouts=layouts,
        scales=scales,
        variants=variants,
        epilogues=epilogues,
    )
    if args.output_dtype:
        selected_output_dtypes = set(args.output_dtype)
        jobs = [job for job in jobs if job[5] in selected_output_dtypes]
    if args.limit:
        jobs = jobs[: args.limit]

    results = []
    failures = []
    for index, (
        mode,
        layout,
        scale,
        variant,
        config,
        output_dtype,
        epilogue,
        output_scale,
        store_strategy,
        shape_specialization,
    ) in enumerate(
        jobs,
        start=1,
    ):
        kernel_id = ragged_kernel_id(
            mode=mode,
            layout=layout,
            scale=scale,
            config=config,
            variant=variant,
            output_dtype=output_dtype,
            epilogue=epilogue,
            output_scale=output_scale,
            store_strategy=store_strategy,
            shape_specialization=shape_specialization,
        )
        print(f"[{index}/{len(jobs)}] {kernel_id}", flush=True)
        try:
            asm, launch_metadata, runtime_scalar_args = compile_ragged_kernel(
                mode=mode,
                layout=layout,
                scale=scale,
                variant=variant,
                config=config,
                output_dtype=output_dtype,
                epilogue=epilogue,
                output_scale=output_scale,
                store_strategy=store_strategy,
                shape_specialization=shape_specialization,
            )
            results.append(
                _write_artifacts(
                    mode=mode,
                    layout=layout,
                    scale=scale,
                    variant=variant,
                    config=config,
                    asm=asm,
                    launch_metadata=launch_metadata,
                    runtime_scalar_args=runtime_scalar_args,
                    out_dir=args.out_dir,
                    triton_out_dir=triton_out_dir,
                    triton=triton,
                    output_dtype=output_dtype,
                    epilogue=epilogue,
                    output_scale=output_scale,
                    store_strategy=store_strategy,
                    shape_specialization=shape_specialization,
                )
            )
        except Exception as exc:
            print(f"FAILED {kernel_id}: {exc!r}", flush=True)
            failures.append({"kernel_id": kernel_id, "error": repr(exc)})

    summary = {
        "repo_root": "<repo>",
        "source_triton_commit": _triton_commit(triton),
        "generated": results,
        "failures": failures,
    }
    args.summary.parent.mkdir(parents=True, exist_ok=True)
    args.summary.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(display_path(args.summary, root=REPO_ROOT))
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())

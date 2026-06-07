import importlib.util
import json
import subprocess
import sys
from dataclasses import replace
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]


def test_regenerate_amdgcn_dry_run_defaults_to_clean_full_matrix() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "regenerate_amdgcn.py"), "--dry-run"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "scripts/generate_matrix.py --clean" in result.stdout


def test_generate_matrix_help_does_not_compile_kernels() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "generate_matrix.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Regenerate the checked-in AMDGCN assembly matrix" in result.stdout


def test_generate_ragged_amdgcn_help_does_not_compile_kernels() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "generate_ragged_amdgcn.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Generate prebuilt AMDGCN artifacts for ragged int4 dot kernels" in result.stdout
    assert "--variant" in result.stdout
    assert "--no-triton-artifacts" in result.stdout


def test_ragged_generator_uses_dataclass_defaults_for_packaged_tiles() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.ragged import RaggedBwdDotConfig, RaggedDotConfig

    spec = importlib.util.spec_from_file_location(
        "generate_ragged_amdgcn", REPO_ROOT / "scripts" / "generate_ragged_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    assert module.DEFAULT_FWD_CONFIG == RaggedDotConfig()
    assert module.DEFAULT_BWD_CONFIG == RaggedBwdDotConfig()


def test_ragged_generator_keeps_subchannel_scale_cols_runtime() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.metadata import SUPPORTED_SUBCHANNELS, ScaleMode, ScaleSpec
    from amd_strix_halo_kernels.ragged import RaggedDotConfig

    spec = importlib.util.spec_from_file_location(
        "generate_ragged_amdgcn", REPO_ROOT / "scripts" / "generate_ragged_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    config = RaggedDotConfig()
    for subchannel in SUPPORTED_SUBCHANNELS:
        compile_k = module._compile_k(config.block_k, ScaleSpec(ScaleMode.SUBCHANNEL, subchannel), config.block_k)
        scale_cols = (compile_k + subchannel - 1) // subchannel
        assert scale_cols >= 2


def test_default_ragged_configs_cover_checked_in_prebuilt_artifact_matrix() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.metadata import (
        OUTPUT_DTYPE_BF16,
        OUTPUT_DTYPE_FLOAT32,
        SUPPORTED_SUBCHANNELS,
        GemmLayout,
        ScaleMode,
        ScaleSpec,
    )
    from amd_strix_halo_kernels.ragged import RaggedBwdDotConfig, RaggedDotConfig
    from amd_strix_halo_kernels.ragged_artifacts import (
        RAGGED_EVEN_K,
        RAGGED_FWD,
        RAGGED_MODES,
        RAGGED_VARIANTS,
        ragged_config_dict,
        ragged_kernel_id,
    )

    amdgcn_dir = REPO_ROOT / "kernels" / "amdgcn"
    scales = tuple(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS) + (
        ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    expected_ids = set()
    for mode in RAGGED_MODES:
        base_config = RaggedDotConfig() if mode == RAGGED_FWD else RaggedBwdDotConfig()
        output_dtype = OUTPUT_DTYPE_BF16 if mode == RAGGED_FWD else OUTPUT_DTYPE_FLOAT32
        for layout in GemmLayout:
            for scale in scales:
                for variant in RAGGED_VARIANTS:
                    effective_config = replace(base_config, enable_even_k_fast_path=(variant == RAGGED_EVEN_K))
                    kernel_id = ragged_kernel_id(
                        mode=mode,
                        layout=layout,
                        scale=scale,
                        config=effective_config,
                        variant=variant,
                        output_dtype=output_dtype,
                    )
                    expected_ids.add(kernel_id)
                    asm_path = amdgcn_dir / f"{kernel_id}.s"
                    metadata_path = amdgcn_dir / f"{kernel_id}.json"
                    assert asm_path.exists(), kernel_id
                    assert metadata_path.exists(), kernel_id

                    metadata = json.loads(metadata_path.read_text())
                    assert metadata["mode"] == mode
                    assert metadata["layout"] == layout.value
                    assert metadata["variant"] == variant
                    assert metadata["output_dtype"] == output_dtype
                    assert metadata["config"] == ragged_config_dict(effective_config)
                    arg_layout = metadata["kernel_arg_layout"]
                    if mode == RAGGED_FWD:
                        expected_scalar_args = (
                            ["M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS"]
                            if scale.mode is ScaleMode.SUBCHANNEL
                            else ["M", "N", "K_PACKED", "NUM_TASKS"]
                        )
                    else:
                        expected_scalar_args = (
                            ["M", "N", "K_PACKED", "SCALE_COLS"]
                            if scale.mode is ScaleMode.SUBCHANNEL
                            else ["M", "N", "K_PACKED"]
                        )
                    assert arg_layout["runtime_scalar_args"] == expected_scalar_args
                    assert arg_layout["by_value_arg_count"] == len(expected_scalar_args)
                    assert len(arg_layout["hidden_global_buffer_offsets"]) == 2

    checked_in_ids = {path.stem for path in amdgcn_dir.glob("gfx1151_ragged_int4_*.json")}
    assert checked_in_ids == expected_ids
    assert len(expected_ids) == 80


def test_ragged_artifact_metadata_names_runtime_shape_contract() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.metadata import GemmLayout, ScaleMode, ScaleSpec
    from amd_strix_halo_kernels.ragged import RaggedDotConfig
    from amd_strix_halo_kernels.ragged_artifacts import (
        RAGGED_EVEN_K,
        RAGGED_FWD,
        ragged_kernel_id,
        ragged_metadata_dict,
    )

    config = RaggedDotConfig(block_m=64, block_n=128, block_k=64, group_size_tasks=2, num_warps=8)
    kernel_id = ragged_kernel_id(
        mode=RAGGED_FWD,
        layout=GemmLayout.TT,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        config=config,
        variant=RAGGED_EVEN_K,
    )
    assert kernel_id == "gfx1151_ragged_int4_fwd_tt_sc256_evenk_bfloat16_bm64_bn128_bk64_gst2_w8_s3"

    metadata = ragged_metadata_dict(
        kernel_id=kernel_id,
        mode=RAGGED_FWD,
        layout=GemmLayout.TT,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
        config=config,
        variant=RAGGED_EVEN_K,
        output_dtype="bfloat16",
        amdgcn_symbol="symbol",
        launch_metadata={"num_warps": 8, "shared_memory_bytes": 0},
        asm_keys=["amdgcn"],
        triton_artifacts={},
        source_triton_commit=None,
        amdgcn="v_wmma_i32_16x16x16_iu4\ns_waitcnt",
        kernel_arg_layout={
            "by_value_arg_count": 4,
            "by_value_offsets": [72, 76, 80, 84],
            "runtime_scalar_args": ["M", "N", "K_PACKED", "NUM_TASKS"],
        },
    )
    assert metadata["shape_specialization"] == "runtime"
    assert metadata["runtime_shape_args"] == ["M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS"]
    assert metadata["rhs_subchannel_scale_layout"] == "kgroup_output"
    assert metadata["amdgcn_stats"]["iu4_wmma"] == 1


def test_int4_generator_accumulates_dot_scaled_in_i32_before_epilogue_cast() -> None:
    source = (REPO_ROOT / "scripts" / "generate_amdgcn.py").read_text()

    assert "acc_i32 = tl.zeros((BLOCK_M, BLOCK_N), tl.int32)" in source
    assert 'tl.dot_scaled(pa, None, "int4", pb, None, "int4", acc_i32, out_dtype=tl.int32)' in source
    assert "acc = acc_i32.to(tl.float32)" in source
    assert "acc += acc_i32.to(tl.float32) * sa * sb[None, :]" in source
    assert 'output_dtype = torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32' in source


def test_benchmark_generated_help_does_not_require_torch() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "benchmark_generated.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Benchmark and correctness-check packaged generated AMDGCN GEMM kernels" in result.stdout
    assert "--warmup-ms" in result.stdout
    assert "--rep-ms" in result.stdout


def test_benchmark_ragged_dot_help_does_not_require_torch() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "benchmark_ragged_dot.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Benchmark Triton-JIT int4 ragged dot" in result.stdout
    assert "--mode" in result.stdout
    assert "--split-k" in result.stdout


def test_tune_swiglu_help_does_not_require_torch() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "tune_swiglu.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Tune direct Triton generated SwiGLU kernels" in result.stdout
    assert "--save-best-artifacts" in result.stdout


def test_tune_gemm_help_does_not_require_torch() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "tune_gemm.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "Tune direct Triton generated scaled GEMM kernels" in result.stdout
    assert "--save-best-artifacts" in result.stdout


def test_tune_gemm_uses_random_fake_quant_validation() -> None:
    source = (REPO_ROOT / "scripts" / "tune_gemm.py").read_text()

    assert "torch.randn((shape.m, shape.k), device=\"cuda\", dtype=torch.bfloat16) * 0.1" in source
    assert "fake_quant_int(a_bf16, bits=bits, scale=0.1)" in source
    assert "a_scale = torch.linspace(0.75, 1.25, shape.m, device=\"cuda\", dtype=torch.bfloat16)" in source
    assert "expected = torch.zeros((shape.m, shape.n), device=\"cuda\", dtype=torch.float32)" in source
    assert "def validation_tolerances(kernel: KernelMetadata) -> tuple[float, float]" in source
    assert "torch.testing.assert_close(actual, args[6].to(actual.dtype), rtol=rtol, atol=atol)" in source


def test_tune_relu2_uses_random_fake_quant_validation() -> None:
    source = (REPO_ROOT / "scripts" / "tune_relu2.py").read_text()

    assert "torch.randn((shape.m, shape.k), device=\"cuda\", dtype=torch.bfloat16) * 0.1" in source
    assert "fake_quant_int(a_bf16, bits=bits, scale=0.1)" in source
    assert "a_scale = torch.linspace(0.75, 1.25, shape.m, device=\"cuda\", dtype=torch.bfloat16)" in source
    assert "gemm = torch.zeros((shape.m, shape.n), device=\"cuda\", dtype=torch.float32)" in source
    assert "def validation_tolerances(kernel: KernelMetadata) -> tuple[float, float]" in source
    assert "torch.testing.assert_close(actual, args[6].to(actual.dtype), rtol=rtol, atol=atol)" in source


def test_tune_swiglu_uses_random_fake_quant_validation() -> None:
    source = (REPO_ROOT / "scripts" / "tune_swiglu.py").read_text()

    assert "torch.randn((shape.m, shape.k), device=\"cuda\", dtype=torch.bfloat16) * 0.1" in source
    assert "fake_quant_int(a_bf16, bits=bits, scale=0.1)" in source
    assert "a_scale = torch.linspace(0.75, 1.25, shape.m, device=\"cuda\", dtype=torch.bfloat16)" in source
    assert "up, gate_values = gemm.split(shape.n, dim=1)" in source
    assert "def validation_tolerances(kernel: KernelMetadata) -> tuple[float, float]" in source
    assert "torch.testing.assert_close(actual, args[6].to(actual.dtype), rtol=rtol, atol=atol)" in source

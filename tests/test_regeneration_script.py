import importlib.util
import json
import subprocess
import sys
from dataclasses import replace
from pathlib import Path

import pytest


REPO_ROOT = Path(__file__).resolve().parents[1]
STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3


def _assert_reference_has_signal(expected) -> None:
    max_abs = float(expected.float().abs().max())
    assert max_abs >= 10 * STRICT_ATOL, f"reference signal is too small: max_abs={max_abs}"


def _fill_mixed_rhs_scales(b_scale) -> None:
    values = pytest.importorskip("torch").linspace(
        0.05,
        0.15,
        b_scale.numel(),
        device=b_scale.device,
        dtype=b_scale.dtype,
    )
    b_scale.copy_(values.reshape_as(b_scale))


def _unpack_int4_last_dim(torch, packed):
    low = (packed & 0x0F).to(torch.int8)
    high = ((packed >> 4) & 0x0F).to(torch.int8)
    low = torch.where(low >= 8, low - 16, low)
    high = torch.where(high >= 8, high - 16, high)
    unpacked = torch.empty(
        (*packed.shape[:-1], packed.shape[-1] * 2),
        device=packed.device,
        dtype=torch.int8,
    )
    unpacked[..., 0::2] = low
    unpacked[..., 1::2] = high
    return unpacked


def _independent_mixed_reference(torch, a_arg, b_arg, a_scale, b_scale, kernel):
    from amd_strix_halo_kernels.metadata import Epilogue, GemmLayout, ScaleMode

    a_logical = a_arg.transpose(0, 1) if kernel.layout is GemmLayout.TN else a_arg
    if kernel.layout is GemmLayout.NT:
        b_logical = _unpack_int4_last_dim(torch, b_arg).transpose(0, 1)
    else:
        b_logical = _unpack_int4_last_dim(torch, b_arg.transpose(0, 1)).transpose(0, 1)

    a_f32 = a_logical.float()
    if kernel.scale.mode is ScaleMode.PER_CHANNEL:
        expected_a_scale = (a_f32.abs().amax(dim=1).clamp_min(1.0e-12) / 7.0).to(torch.bfloat16)
        torch.testing.assert_close(a_scale, expected_a_scale, rtol=0.0, atol=0.0)
        a_q = torch.clamp(torch.round(a_f32 / expected_a_scale.float()[:, None]), -8, 7)
        out = torch.matmul(a_q.float(), b_logical.float())
        out *= expected_a_scale.float()[:, None]
        out *= b_scale.float()[None, :]
    else:
        subchannel = kernel.scale.subchannel_size
        assert subchannel is not None
        scale_cols = (a_logical.shape[1] + subchannel - 1) // subchannel
        expected_scale_columns = []
        for scale_index in range(scale_cols):
            k0 = scale_index * subchannel
            k1 = min(k0 + subchannel, a_logical.shape[1])
            expected_scale_columns.append(
                a_f32[:, k0:k1].abs().amax(dim=1).clamp_min(1.0e-12) / 7.0
            )
        expected_a_scale = torch.stack(expected_scale_columns, dim=1).to(torch.bfloat16)
        torch.testing.assert_close(a_scale, expected_a_scale, rtol=0.0, atol=0.0)
        out = torch.zeros(
            (a_logical.shape[0], b_logical.shape[1]),
            device=a_logical.device,
            dtype=torch.float32,
        )
        for scale_index in range(scale_cols):
            k0 = scale_index * subchannel
            k1 = min(k0 + subchannel, a_logical.shape[1])
            a_q = torch.clamp(
                torch.round(a_f32[:, k0:k1] / expected_a_scale[:, scale_index, None].float()),
                -8,
                7,
            )
            partial = torch.matmul(a_q.float(), b_logical[k0:k1].float())
            partial *= expected_a_scale[:, scale_index, None].float()
            partial *= b_scale[scale_index, None, :].float()
            out += partial

    if kernel.epilogue is Epilogue.RELU2:
        out = torch.relu(out).square()
    elif kernel.epilogue is Epilogue.SWIGLU:
        up, gate = out.chunk(2, dim=1)
        out = up * gate * torch.sigmoid(gate)
    output_dtype = torch.bfloat16 if kernel.output_dtype == "bfloat16" else torch.float32
    return out.to(output_dtype)


def _mixed_kernel_ids() -> tuple[str, ...]:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.metadata import OperandDType
    from amd_strix_halo_kernels.registry import mixed_dtype_registry

    kernel_ids = tuple(
        sorted(
            kernel.kernel_id
            for kernel in mixed_dtype_registry.all()
            if kernel.a_dtype is OperandDType.BF16 and kernel.b_dtype is OperandDType.INT4
        )
    )
    assert len(kernel_ids) == 1080
    return kernel_ids


MIXED_KERNEL_IDS = _mixed_kernel_ids()


@pytest.fixture(scope="module")
def generate_amdgcn_module():
    spec = importlib.util.spec_from_file_location(
        "generate_amdgcn_numeric", REPO_ROOT / "scripts" / "generate_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


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
    from amd_strix_halo_kernels.ragged import RAGGED_BWD_ACCUM_CONFIG, RaggedBwdDotConfig, RaggedDotConfig

    spec = importlib.util.spec_from_file_location(
        "generate_ragged_amdgcn", REPO_ROOT / "scripts" / "generate_ragged_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    assert module.DEFAULT_FWD_CONFIG == RaggedDotConfig()
    assert module.DEFAULT_BWD_CONFIG == RaggedBwdDotConfig()
    assert module.DEFAULT_BWD_ACCUM_CONFIG is RAGGED_BWD_ACCUM_CONFIG


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


def test_ragged_generator_default_jobs_include_specialized_bwd_accum() -> None:
    sys.path.insert(0, str(REPO_ROOT / "src"))
    from amd_strix_halo_kernels.metadata import SUPPORTED_SUBCHANNELS, GemmLayout, ScaleMode, ScaleSpec
    from amd_strix_halo_kernels.ragged_artifacts import RAGGED_BWD_ACCUM, RAGGED_MODES, RAGGED_VARIANTS

    spec = importlib.util.spec_from_file_location(
        "generate_ragged_amdgcn", REPO_ROOT / "scripts" / "generate_ragged_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    scales = tuple(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS) + (
        ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    jobs = module._build_jobs(
        modes=RAGGED_MODES,
        layouts=tuple(GemmLayout),
        scales=scales,
        variants=RAGGED_VARIANTS,
    )
    accum_jobs = [job for job in jobs if job[0] == RAGGED_BWD_ACCUM]
    assert len(jobs) == 81
    assert len(accum_jobs) == 1
    assert accum_jobs[0][1:] == (
        GemmLayout.TN,
        ScaleSpec(ScaleMode.PER_CHANNEL),
        module.RAGGED_EVEN_K,
        module.DEFAULT_BWD_ACCUM_CONFIG,
    )


def test_dense_generator_compiles_representative_dtype_pairs() -> None:
    torch = pytest.importorskip("torch")
    if not torch.cuda.is_available():
        pytest.skip("representative Triton generation requires CUDA/HIP")

    from amd_strix_halo_kernels.metadata import (
        Epilogue,
        GemmLayout,
        KernelSchedule,
        OperandDType,
        ScaleMode,
    )
    from amd_strix_halo_kernels.quant import fake_quant_int4_with_scales, unpack_int4_k_major
    from amd_strix_halo_kernels.registry import default_registry, mixed_dtype_registry
    from amd_strix_halo_kernels.template_config import representative_generation_shape

    spec = importlib.util.spec_from_file_location(
        "generate_amdgcn", REPO_ROOT / "scripts" / "generate_amdgcn.py"
    )
    assert spec is not None
    assert spec.loader is not None
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    kernels = (
        next(
            kernel
            for kernel in default_registry.all()
            if kernel.a_dtype is OperandDType.INT4 and kernel.schedule is KernelSchedule.STANDARD
        ),
        next(kernel for kernel in default_registry.all() if kernel.a_dtype is OperandDType.INT8),
        next(
            kernel
            for kernel in default_registry.all()
            if kernel.a_dtype is OperandDType.INT4 and kernel.schedule is KernelSchedule.PERSISTENT
        ),
        next(
            kernel
            for kernel in mixed_dtype_registry.all()
            if kernel.a_dtype is OperandDType.BF16
            and kernel.layout is GemmLayout.NN
            and kernel.scale.mode is ScaleMode.PER_CHANNEL
            and kernel.epilogue is Epilogue.NONE
            and kernel.schedule is KernelSchedule.STANDARD
            and kernel.tile.split_k == 1
        ),
    )
    for kernel in kernels:
        program = module.compile_program(kernel, representative_generation_shape(kernel))
        assert program is not None

    mixed = kernels[-1]
    mixed_shape = representative_generation_shape(mixed)
    mixed_inputs = module._make_inputs(mixed, mixed_shape)
    a_arg, b_arg, a_scale, b_scale, out, _ = mixed_inputs
    assert a_arg.dtype == torch.bfloat16
    assert b_arg.dtype == torch.uint8
    assert a_scale.dtype == torch.bfloat16
    _fill_mixed_rhs_scales(b_scale)
    out.zero_()
    module.compile_program(mixed, mixed_shape, inputs=mixed_inputs)
    torch.cuda.synchronize()
    a_q = fake_quant_int4_with_scales(a_arg, a_scale, mixed.scale)
    b_q = unpack_int4_k_major(b_arg.transpose(0, 1)).transpose(0, 1)
    expected = torch.matmul(a_q.to(torch.float32), b_q.to(torch.float32))
    expected *= a_scale.to(torch.float32)[:, None]
    expected *= b_scale.to(torch.float32)[None, :]
    _assert_reference_has_signal(expected)
    torch.testing.assert_close(out, expected.to(out.dtype), rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize("kernel_id", MIXED_KERNEL_IDS, ids=MIXED_KERNEL_IDS)
def test_all_mixed_generated_kernels_match_reference(kernel_id, generate_amdgcn_module) -> None:
    torch = pytest.importorskip("torch")
    if not torch.cuda.is_available():
        pytest.skip("mixed generated-kernel correctness requires CUDA/HIP")

    from amd_strix_halo_kernels.registry import mixed_dtype_registry
    from amd_strix_halo_kernels.template_config import representative_generation_shape

    kernel = mixed_dtype_registry.get(kernel_id)
    shape = representative_generation_shape(kernel)
    inputs = generate_amdgcn_module._make_inputs(kernel, shape)
    a_arg, b_arg, a_scale, b_scale, out, _ = inputs
    _fill_mixed_rhs_scales(b_scale)
    out.zero_()
    generate_amdgcn_module.compile_program(kernel, shape, inputs=inputs)
    torch.cuda.synchronize()
    expected = _independent_mixed_reference(
        torch,
        a_arg,
        b_arg,
        a_scale,
        b_scale,
        kernel,
    )
    _assert_reference_has_signal(expected)
    torch.testing.assert_close(out, expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


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
        RAGGED_BWD_ACCUM,
        RAGGED_EVEN_K,
        RAGGED_FWD,
        RAGGED_MATRIX_MODES,
        RAGGED_VARIANTS,
        ragged_config_dict,
        ragged_kernel_id,
    )

    amdgcn_dir = REPO_ROOT / "kernels" / "amdgcn"
    scales = tuple(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS) + (
        ScaleSpec(ScaleMode.PER_CHANNEL),
    )
    expected_ids = set()
    for mode in RAGGED_MATRIX_MODES:
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
                        expected_scalar_args = ["M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS"]
                    else:
                        expected_scalar_args = ["M", "N", "K_PACKED", "SCALE_COLS"]
                    assert arg_layout["runtime_scalar_args"] == expected_scalar_args
                    assert arg_layout["by_value_arg_count"] == len(expected_scalar_args)
                    assert len(arg_layout["hidden_global_buffer_offsets"]) == 2

    from amd_strix_halo_kernels.ragged import RAGGED_BWD_ACCUM_CONFIG

    accum_config = RAGGED_BWD_ACCUM_CONFIG
    accum_kernel_id = ragged_kernel_id(
        mode=RAGGED_BWD_ACCUM,
        layout=GemmLayout.TN,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=accum_config,
        variant=RAGGED_EVEN_K,
        output_dtype=OUTPUT_DTYPE_FLOAT32,
    )
    expected_ids.add(accum_kernel_id)
    accum_asm_path = amdgcn_dir / f"{accum_kernel_id}.s"
    accum_metadata_path = amdgcn_dir / f"{accum_kernel_id}.json"
    assert accum_asm_path.exists(), accum_kernel_id
    assert accum_metadata_path.exists(), accum_kernel_id
    accum_metadata = json.loads(accum_metadata_path.read_text())
    assert accum_metadata["mode"] == RAGGED_BWD_ACCUM
    assert accum_metadata["layout"] == GemmLayout.TN.value
    assert accum_metadata["scale"] == {"mode": ScaleMode.PER_CHANNEL.value, "subchannel_size": None}
    assert accum_metadata["variant"] == RAGGED_EVEN_K
    assert accum_metadata["config"] == ragged_config_dict(accum_config)
    assert accum_metadata["kernel_arg_layout"]["runtime_scalar_args"] == [
        "M",
        "N",
        "K_PACKED",
        "SCALE_COLS",
    ]
    for artifact_path in accum_metadata["triton_artifacts"].values():
        assert not Path(artifact_path).is_absolute()
        assert (REPO_ROOT / artifact_path).exists()

    checked_in_ids = {path.stem for path in amdgcn_dir.glob("gfx1151_ragged_int4_*.json")}
    assert checked_in_ids == expected_ids
    assert len(expected_ids) == 81
    summary = json.loads((amdgcn_dir / "ragged_generation_summary.json").read_text())
    assert summary["failures"] == []
    assert {entry["kernel_id"] for entry in summary["generated"]} == expected_ids


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

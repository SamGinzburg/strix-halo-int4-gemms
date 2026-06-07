import subprocess
import sys
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

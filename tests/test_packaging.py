import importlib.util
import subprocess
import sys
import zipfile
from pathlib import Path

import pytest

try:
    import tomllib
except ModuleNotFoundError:  # pragma: no cover
    import tomli as tomllib


REPO_ROOT = Path(__file__).resolve().parents[1]


def _load_script(name: str):
    path = REPO_ROOT / "scripts" / name
    spec = importlib.util.spec_from_file_location(path.stem, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def test_pyproject_requests_python_abi_neutral_wheel_tag() -> None:
    data = tomllib.loads((REPO_ROOT / "pyproject.toml").read_text())

    assert data["tool"]["scikit-build"]["wheel"]["py-api"] == "py3"
    assert "Programming Language :: Python :: Implementation :: PyPy" in data["project"]["classifiers"]


def test_pyproject_publish_extra_includes_patchelf() -> None:
    data = tomllib.loads((REPO_ROOT / "pyproject.toml").read_text())

    publish = data["project"]["optional-dependencies"]["publish"]
    # auditwheel repair shells out to patchelf, so it must ship in the extra.
    assert any(req.startswith("patchelf") for req in publish)
    assert any(req.startswith("auditwheel") for req in publish)
    assert any(req.startswith("twine") for req in publish)


def test_cmake_packages_runtime_metadata_not_generation_provenance() -> None:
    cmake = (REPO_ROOT / "native" / "CMakeLists.txt").read_text()

    # Runtime needs the per-kernel JSON launch metadata and the HSACO objects.
    assert 'FILES_MATCHING PATTERN "*.json"' in cmake
    assert "amd_strix_halo_kernels/kernels/hsaco" in cmake
    # The .s assembly and Triton IR are repo-only provenance, kept out of the wheel.
    assert 'PATTERN "*.s"' not in cmake
    assert "amd_strix_halo_kernels/kernels/triton" not in cmake


def test_build_release_help_describes_repair_flow() -> None:
    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "build_release.py"), "--help"],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "auditwheel" in result.stdout
    assert "manylinux" in result.stdout


def test_build_release_counts_hsaco_objects(tmp_path) -> None:
    build_release = _load_script("build_release.py")
    wheel_path = tmp_path / "example-0.1.0-py3-none-linux_x86_64.whl"
    with zipfile.ZipFile(wheel_path, "w") as wheel:
        wheel.writestr("amd_strix_halo_kernels/kernels/hsaco/a.hsaco", b"\x00")
        wheel.writestr("amd_strix_halo_kernels/kernels/hsaco/b.hsaco", b"\x00")
        wheel.writestr("amd_strix_halo_kernels/kernels/amdgcn/a.json", "{}")

    assert build_release.count_hsaco(wheel_path) == 2


def test_native_dispatcher_loads_hip_runtime_dynamically() -> None:
    cmake = (REPO_ROOT / "native" / "CMakeLists.txt").read_text()
    dispatch = (REPO_ROOT / "native" / "src" / "dispatch.cpp").read_text()

    assert "find_library(AMD_STRIX_HALO_HIP_LIBRARY" not in cmake
    assert "target_link_libraries(amd_strix_halo_kernels_dispatch PRIVATE ${CMAKE_DL_LIBS})" in cmake
    assert 'dlopen(library_name, RTLD_LAZY | RTLD_LOCAL)' in dispatch
    assert "libamdhip64.so" in dispatch


def test_native_dispatcher_exports_ragged_hsaco_entrypoints() -> None:
    native_py = (REPO_ROOT / "src" / "amd_strix_halo_kernels" / "native.py").read_text()
    dispatch = (REPO_ROOT / "native" / "src" / "dispatch.cpp").read_text()

    assert "amd_strix_halo_kernels_launch_ragged_fwd_hsaco" in dispatch
    assert "amd_strix_halo_kernels_launch_ragged_bwd_hsaco" in dispatch
    assert "library.amd_strix_halo_kernels_launch_ragged_fwd_hsaco.argtypes" in native_py
    assert "library.amd_strix_halo_kernels_launch_ragged_bwd_hsaco.argtypes" in native_py
    assert "runtime_scalar_args" in native_py
    assert "has_scale_cols_arg" in native_py
    assert "params_without_scale_cols" in dispatch
    assert "params_with_scale_cols" in dispatch
    assert "&num_tasks" in dispatch


def test_check_wheel_portability_accepts_python_abi_neutral_tag(tmp_path) -> None:
    wheel_path = tmp_path / "example-0.1.0-py3-none-linux_x86_64.whl"
    with zipfile.ZipFile(wheel_path, "w") as wheel:
        wheel.writestr(
            "example-0.1.0.dist-info/WHEEL",
            "Wheel-Version: 1.0\nRoot-Is-Purelib: false\nTag: py3-none-linux_x86_64\n",
        )

    result = subprocess.run(
        [sys.executable, str(REPO_ROOT / "scripts" / "check_wheel_portability.py"), str(wheel_path)],
        check=True,
        capture_output=True,
        text=True,
    )

    assert "py3-none-linux_x86_64" in result.stdout


def test_check_wheel_portability_rejects_raw_linux_tag_for_pypi(tmp_path) -> None:
    wheel_path = tmp_path / "example-0.1.0-py3-none-linux_x86_64.whl"
    with zipfile.ZipFile(wheel_path, "w") as wheel:
        wheel.writestr(
            "example-0.1.0.dist-info/WHEEL",
            "Wheel-Version: 1.0\nRoot-Is-Purelib: false\nTag: py3-none-linux_x86_64\n",
        )

    result = subprocess.run(
        [
            sys.executable,
            str(REPO_ROOT / "scripts" / "check_wheel_portability.py"),
            str(wheel_path),
            "--require-pypi-platform",
        ],
        capture_output=True,
        text=True,
    )

    assert result.returncode == 1
    assert "repair with auditwheel" in result.stderr


@pytest.mark.parametrize("tag", ["cp312-cp312-linux_x86_64", "py3-none-manylinux_2_39_x86_64"])
def test_check_wheel_portability_interpreter_and_platform_cases(tmp_path, tag: str) -> None:
    wheel_path = tmp_path / f"example-0.1.0-{tag}.whl"
    with zipfile.ZipFile(wheel_path, "w") as wheel:
        wheel.writestr("example-0.1.0.dist-info/WHEEL", f"Wheel-Version: 1.0\nTag: {tag}\n")

    result = subprocess.run(
        [
            sys.executable,
            str(REPO_ROOT / "scripts" / "check_wheel_portability.py"),
            str(wheel_path),
            "--require-pypi-platform",
        ],
        capture_output=True,
        text=True,
    )

    assert result.returncode == (1 if tag.startswith("cp") else 0)

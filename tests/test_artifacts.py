import json
from pathlib import Path

import pytest

from amd_strix_halo_kernels.artifacts import (
    amdgcn_symbol_for_kernel_id,
    clean_generated_outputs,
    display_path,
    uniquify_amdgcn_symbols,
    write_triton_text_artifacts,
)
from amd_strix_halo_kernels.registry import default_registry


REPO_ROOT = Path(__file__).resolve().parents[1]


def test_write_triton_text_artifacts_persists_text_keys_only(tmp_path) -> None:
    paths = write_triton_text_artifacts(
        kernel_id="gfx1151_example",
        asm={
            "amdgcn": "device asm",
            "source": "def kernel(): pass",
            "ttir": "ttir module",
            "ttgir": "ttgir module",
            "llir": "llvm module",
            "hsaco": b"\x00\x01",
        },
        out_dir=tmp_path,
    )

    assert set(paths) == {"source", "ttir", "ttgir", "llir"}
    assert paths["source"].name == "gfx1151_example.py"
    assert paths["ttir"].read_text() == "ttir module"
    assert not (tmp_path / "gfx1151_example.hsaco").exists()


def test_display_path_prefers_paths_relative_to_root(tmp_path) -> None:
    path = tmp_path / "kernels" / "triton" / "example.ttir"
    path.parent.mkdir(parents=True)
    path.write_text("module")

    assert display_path(path, root=tmp_path) == "kernels/triton/example.ttir"


def test_clean_generated_outputs_removes_managed_artifacts_only(tmp_path) -> None:
    amdgcn_dir = tmp_path / "amdgcn"
    triton_dir = tmp_path / "triton"
    amdgcn_dir.mkdir()
    triton_dir.mkdir()
    for path in [
        amdgcn_dir / "kernel.s",
        amdgcn_dir / "kernel.json",
        triton_dir / "kernel.py",
        triton_dir / "kernel.ttir",
        triton_dir / "kernel.ttgir",
        triton_dir / "kernel.llir",
    ]:
        path.write_text("generated")
    keep = triton_dir / "notes.txt"
    keep.write_text("manual")

    removed = clean_generated_outputs(amdgcn_dir, triton_dir)

    assert removed == 6
    assert keep.exists()
    assert not any(amdgcn_dir.iterdir())


def test_uniquify_amdgcn_symbols_rewrites_kernel_metadata_symbol() -> None:
    amdgcn = """
        .globl  _int4_scaled_gemm
_int4_scaled_gemm:
        .size   _int4_scaled_gemm, .Lfunc_end0-_int4_scaled_gemm
        .set _int4_scaled_gemm.num_vgpr, 256
    .name:           _int4_scaled_gemm
    .symbol:         _int4_scaled_gemm.kd
"""
    rewritten, symbol = uniquify_amdgcn_symbols(amdgcn, kernel_id="gfx1151_example")

    assert symbol == amdgcn_symbol_for_kernel_id("gfx1151_example")
    assert "_int4_scaled_gemm" not in rewritten
    assert "amd_strix_halo_gfx1151_example.kd" in rewritten


def test_uniquify_amdgcn_symbols_handles_persistent_int4_symbol() -> None:
    amdgcn = """
        .globl  _int4_scaled_gemm_persistent
_int4_scaled_gemm_persistent:
        .size   _int4_scaled_gemm_persistent, .Lfunc_end0-_int4_scaled_gemm_persistent
        .set _int4_scaled_gemm_persistent.num_vgpr, 256
    .name:           _int4_scaled_gemm_persistent
    .symbol:         _int4_scaled_gemm_persistent.kd
"""
    rewritten, symbol = uniquify_amdgcn_symbols(amdgcn, kernel_id="gfx1151_persistent")

    assert symbol == amdgcn_symbol_for_kernel_id("gfx1151_persistent")
    assert "_int4_scaled_gemm_persistent" not in rewritten
    assert "amd_strix_halo_gfx1151_persistent.kd" in rewritten


def test_uniquify_amdgcn_symbols_rejects_missing_or_ambiguous_symbols() -> None:
    with pytest.raises(ValueError, match="exactly one"):
        uniquify_amdgcn_symbols("no kernel here", kernel_id="gfx1151_missing")
    with pytest.raises(ValueError, match="exactly one"):
        uniquify_amdgcn_symbols("_int4_scaled_gemm\n_int8_scaled_gemm", kernel_id="gfx1151_ambiguous")


def test_checked_in_amdgcn_artifacts_have_unique_symbols() -> None:
    summary = json.loads((REPO_ROOT / "kernels" / "amdgcn" / "generation_summary.json").read_text())
    generated = summary["generated"]

    symbols = [entry["amdgcn_symbol"] for entry in generated]
    assert len(generated) == len(default_registry.all())
    assert len(set(symbols)) == len(symbols)
    assert summary["failures"] == []

    for entry in generated:
        asm = (REPO_ROOT / entry["asm"]).read_text()
        metadata = json.loads((REPO_ROOT / entry["metadata"]).read_text())
        symbol = entry["amdgcn_symbol"]
        launch_metadata = entry["launch_metadata"]
        assert "_int4_scaled_gemm" not in asm
        assert "_int8_scaled_gemm" not in asm
        assert f".globl\t{symbol}" in asm
        assert f".symbol:         {symbol}.kd" in asm
        assert metadata["launch_metadata"] == launch_metadata
        assert launch_metadata["num_ctas"] == 1
        assert launch_metadata["num_warps"] == metadata["tile"]["num_warps"]
        assert launch_metadata["grid_x"] >= 1
        assert launch_metadata["grid_y"] == metadata["tile"]["split_k"]
        assert launch_metadata["shared_memory_bytes"] > 0
        assert "_int4_scaled_gemm_persistent" not in asm

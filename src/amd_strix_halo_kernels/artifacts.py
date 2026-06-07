from __future__ import annotations

import re
from pathlib import Path
from typing import Mapping


TRITON_TEXT_ARTIFACT_EXTENSIONS = {
    "source": ".py",
    "ttir": ".ttir",
    "ttgir": ".ttgir",
    "llir": ".llir",
}
TRITON_TEXT_ARTIFACT_PATTERNS = tuple(f"*{extension}" for extension in TRITON_TEXT_ARTIFACT_EXTENSIONS.values())
GENERIC_AMDGCN_SYMBOLS = (
    "_int4_scaled_gemm_persistent",
    "_int4_scaled_gemm",
    "_int8_scaled_gemm",
    "kernel",
)


def display_path(path: Path, *, root: Path | None = None) -> str:
    base = (root or Path.cwd()).resolve()
    resolved = path.resolve()
    try:
        return str(resolved.relative_to(base))
    except ValueError:
        return str(resolved)


def scrub_local_debug_paths(
    text: str,
    *,
    repo_root: Path | None = None,
    triton_root: Path | None = None,
) -> str:
    replacements: list[tuple[str, str]] = []
    if repo_root is not None:
        replacements.append((str(repo_root.resolve()), "<repo>"))
    if triton_root is not None:
        replacements.append((str(triton_root.resolve()), "<triton>"))

    scrubbed = text
    for local_path, placeholder in replacements:
        scrubbed = scrubbed.replace(local_path, placeholder)
    return scrubbed


def write_triton_text_artifacts(
    *,
    kernel_id: str,
    asm: Mapping[str, object],
    out_dir: Path,
    repo_root: Path | None = None,
    triton_root: Path | None = None,
) -> dict[str, Path]:
    out_dir.mkdir(parents=True, exist_ok=True)
    written: dict[str, Path] = {}
    for key, extension in TRITON_TEXT_ARTIFACT_EXTENSIONS.items():
        value = asm.get(key)
        if value is None or isinstance(value, bytes):
            continue
        path = out_dir / f"{kernel_id}{extension}"
        path.write_text(scrub_local_debug_paths(str(value), repo_root=repo_root, triton_root=triton_root))
        written[key] = path
    return written


def amdgcn_symbol_for_kernel_id(kernel_id: str) -> str:
    return f"amd_strix_halo_{kernel_id}"


def uniquify_amdgcn_symbols(amdgcn: str, *, kernel_id: str) -> tuple[str, str]:
    replacement = amdgcn_symbol_for_kernel_id(kernel_id)
    declared_symbols = set(re.findall(r"(?m)^\s*\.globl\s+([A-Za-z0-9_.$]+)", amdgcn))
    declared_symbols.update(re.findall(r"(?m)^\s*\.name:\s+([A-Za-z0-9_.$]+)", amdgcn))
    declared_symbols.update(re.findall(r"(?m)^\s*\.amdhsa_kernel\s+([A-Za-z0-9_.$]+)", amdgcn))
    declared_symbols.update(symbol.removesuffix(".kd") for symbol in re.findall(r"(?m)^\s*\.symbol:\s+([A-Za-z0-9_.$]+)", amdgcn))
    declared_symbols.update(re.findall(r"(?m)^\s*([A-Za-z_][A-Za-z0-9_.$]*):", amdgcn))
    matches = [symbol for symbol in GENERIC_AMDGCN_SYMBOLS if symbol in declared_symbols]
    if not matches:
        legacy_symbols = tuple(symbol for symbol in GENERIC_AMDGCN_SYMBOLS if symbol != "kernel")
        matches = [
            symbol
            for symbol in legacy_symbols
            if re.search(rf"(?<![A-Za-z0-9_.$]){re.escape(symbol)}(?![A-Za-z0-9_.$])", amdgcn)
        ]
    if len(matches) != 1:
        raise ValueError(f"expected exactly one generic AMDGCN symbol in {kernel_id}; found {matches}")
    generic_symbol = matches[0]
    pattern = rf"(?<![A-Za-z0-9_.$]){re.escape(generic_symbol)}(?![A-Za-z0-9_$])"
    return re.sub(pattern, replacement, amdgcn), replacement


def clean_generated_outputs(out_dir: Path, triton_out_dir: Path | None) -> int:
    removed = 0
    if out_dir.exists():
        for pattern in ("*.s", "*.json"):
            for path in out_dir.glob(pattern):
                path.unlink()
                removed += 1
    if triton_out_dir is not None and triton_out_dir.exists():
        for pattern in TRITON_TEXT_ARTIFACT_PATTERNS:
            for path in triton_out_dir.glob(pattern):
                path.unlink()
                removed += 1
    return removed

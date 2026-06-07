from __future__ import annotations

import argparse
import subprocess
import sys
import zipfile
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DIST_DIR = REPO_ROOT / "dist"
DEFAULT_PLATFORM = "manylinux_2_39_x86_64"
PORTABILITY_SCRIPT = REPO_ROOT / "scripts" / "check_wheel_portability.py"


def run(cmd: list[str]) -> None:
    print("+", " ".join(cmd), flush=True)
    subprocess.run(cmd, check=True)


def newest_raw_wheel() -> Path:
    """Return the most recently built non-repaired ``linux_*`` wheel in dist/."""
    candidates = sorted(
        DIST_DIR.glob("amd_strix_halo_kernels-*-linux_*.whl"),
        key=lambda path: path.stat().st_mtime,
    )
    if not candidates:
        raise SystemExit(
            "no dist/amd_strix_halo_kernels-*-linux_*.whl found; "
            "run without --skip-build, or build the wheel first with `uv build --wheel`"
        )
    return candidates[-1]


def count_hsaco(wheel: Path) -> int:
    with zipfile.ZipFile(wheel) as archive:
        return sum(1 for name in archive.namelist() if name.endswith(".hsaco"))


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Build the runtime wheel, repair it to a PyPI-uploadable manylinux "
            "tag with auditwheel, and validate the tag and metadata. Run inside "
            "the publish extra: `uv run --extra publish python scripts/build_release.py`."
        )
    )
    parser.add_argument(
        "--plat",
        default=DEFAULT_PLATFORM,
        help=f"manylinux platform tag passed to auditwheel repair (default: {DEFAULT_PLATFORM})",
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=REPO_ROOT / "wheelhouse",
        help="directory for the repaired manylinux wheel (default: wheelhouse/)",
    )
    parser.add_argument(
        "--skip-build",
        action="store_true",
        help="reuse the newest existing dist/*-linux_*.whl instead of running `uv build --wheel`",
    )
    parser.add_argument(
        "--allow-empty-hsaco",
        action="store_true",
        help="do not fail when the built wheel contains zero HSACO code objects",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)

    if not args.skip_build:
        run(["uv", "build", "--wheel"])

    raw_wheel = newest_raw_wheel()
    print(f"raw wheel: {raw_wheel.relative_to(REPO_ROOT)}")

    hsaco = count_hsaco(raw_wheel)
    print(f"HSACO code objects packaged: {hsaco}")
    if hsaco == 0 and not args.allow_empty_hsaco:
        raise SystemExit(
            "built wheel contains no HSACO code objects. Build on a gfx1151 ROCm "
            "host with llvm-mc and ld.lld on PATH (or under /opt/rocm/lib/llvm/bin), "
            "or pass --allow-empty-hsaco to proceed anyway."
        )

    args.output_dir.mkdir(parents=True, exist_ok=True)
    run([
        sys.executable, "-m", "auditwheel", "repair",
        "--plat", args.plat,
        "-w", str(args.output_dir),
        str(raw_wheel),
    ])

    repaired = sorted(
        args.output_dir.glob("amd_strix_halo_kernels-*-manylinux*.whl"),
        key=lambda path: path.stat().st_mtime,
    )
    if not repaired:
        raise SystemExit(f"auditwheel produced no manylinux wheel in {args.output_dir}")
    final_wheel = repaired[-1]

    run([sys.executable, str(PORTABILITY_SCRIPT), "--require-pypi-platform", str(final_wheel)])
    run([sys.executable, "-m", "twine", "check", str(final_wheel)])

    size_mb = final_wheel.stat().st_size / 1048576
    print()
    print(f"release wheel ready: {final_wheel.relative_to(REPO_ROOT)} ({size_mb:.1f} MB)")
    print("upload with:")
    print(f"  uv run --extra publish python -m twine upload {final_wheel.relative_to(REPO_ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

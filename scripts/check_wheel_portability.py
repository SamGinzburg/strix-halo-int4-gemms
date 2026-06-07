from __future__ import annotations

import argparse
import sys
import zipfile
from pathlib import Path


def wheel_tags(path: Path) -> tuple[str, ...]:
    with zipfile.ZipFile(path) as wheel:
        wheel_metadata = next(name for name in wheel.namelist() if name.endswith(".dist-info/WHEEL"))
        lines = wheel.read(wheel_metadata).decode().splitlines()
    return tuple(line.split(": ", 1)[1] for line in lines if line.startswith("Tag: "))


def validate_tag(tag: str, *, require_pypi_platform: bool) -> list[str]:
    errors = []
    parts = tag.split("-")
    if len(parts) != 3:
        return [f"{tag}: expected interpreter-abi-platform wheel tag"]
    interpreter, abi, platform = parts
    if interpreter != "py3":
        errors.append(f"{tag}: expected Python-ABI-neutral interpreter tag py3")
    if abi != "none":
        errors.append(f"{tag}: expected ABI tag none")
    if require_pypi_platform and platform.startswith("linux_"):
        errors.append(f"{tag}: raw linux_* platform tags are not PyPI uploadable; repair with auditwheel")
    if require_pypi_platform and not (platform.startswith("manylinux") or platform.startswith("musllinux")):
        errors.append(f"{tag}: expected manylinux_* or musllinux_* platform tag for PyPI upload")
    return errors


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Check wheel tags for Python-ABI-neutral portable imports.")
    parser.add_argument("wheel", type=Path)
    parser.add_argument(
        "--require-pypi-platform",
        action="store_true",
        help="also require a manylinux/musllinux platform tag instead of a local linux_* tag",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    tags = wheel_tags(args.wheel)
    if not tags:
        raise RuntimeError(f"{args.wheel} has no wheel tags")
    errors = [error for tag in tags for error in validate_tag(tag, require_pypi_platform=args.require_pypi_platform)]
    for tag in tags:
        print(tag)
    if errors:
        for error in errors:
            print(error, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

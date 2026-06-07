from __future__ import annotations

import argparse
import shlex
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
GENERATE_MATRIX_SCRIPT = REPO_ROOT / "scripts" / "generate_matrix.py"


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Regenerate the checked-in AMDGCN assembly, per-kernel metadata, "
            "generation summary, and Triton text artifacts."
        )
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="print the underlying generate_matrix.py command without compiling kernels",
    )
    parser.add_argument(
        "--no-clean",
        action="store_true",
        help="do not delete managed generated artifacts before regenerating",
    )
    return parser


def matrix_args(*, no_clean: bool, forwarded: list[str]) -> list[str]:
    args = list(forwarded)
    if not no_clean:
        args.insert(0, "--clean")
    return args


def main(argv: list[str] | None = None) -> int:
    parser = build_parser()
    known, forwarded = parser.parse_known_args(argv)
    generated_args = matrix_args(no_clean=known.no_clean, forwarded=forwarded)

    if known.dry_run:
        print(shlex.join([sys.executable, str(GENERATE_MATRIX_SCRIPT), *generated_args]))
        return 0

    sys.path.insert(0, str(REPO_ROOT / "scripts"))
    from generate_matrix import main as generate_matrix_main

    return generate_matrix_main(generated_args)


if __name__ == "__main__":
    raise SystemExit(main())

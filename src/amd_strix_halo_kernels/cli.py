from __future__ import annotations

import argparse
import json

from .registry import default_registry


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", action="store_true", help="emit kernel metadata as JSON")
    args = parser.parse_args(argv)
    kernels = default_registry.all()
    if args.json:
        print(json.dumps([kernel.to_dict() for kernel in kernels], indent=2, sort_keys=True))
    else:
        for kernel in kernels:
            print(f"{kernel.kernel_id}\t{kernel.status.value}\t{kernel.assembly_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

from __future__ import annotations

import json
from pathlib import Path

from amd_strix_halo_kernels.registry import default_registry


def main() -> int:
    out = Path("kernels/amdgcn/registry.json")
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps([kernel.to_dict() for kernel in default_registry.all()], indent=2, sort_keys=True) + "\n")
    print(out)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

from __future__ import annotations

import json
import subprocess
from dataclasses import dataclass
from pathlib import Path

from .metadata import KernelMetadata


@dataclass(frozen=True, slots=True)
class TritonGenerationRequest:
    kernel: KernelMetadata
    triton_repo: Path = Path.home() / "triton"
    output_dir: Path = Path("kernels/amdgcn")

    @property
    def metadata_path(self) -> Path:
        return self.output_dir / f"{self.kernel.kernel_id}.json"


def write_kernel_metadata(request: TritonGenerationRequest) -> Path:
    request.output_dir.mkdir(parents=True, exist_ok=True)
    request.metadata_path.write_text(json.dumps(request.kernel.to_dict(), indent=2, sort_keys=True) + "\n")
    return request.metadata_path


def run_generation_command(command: list[str], *, cwd: Path) -> subprocess.CompletedProcess[str]:
    return subprocess.run(command, cwd=cwd, check=True, text=True, capture_output=True)

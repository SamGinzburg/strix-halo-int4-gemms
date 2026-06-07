from __future__ import annotations

import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "src"))

project = "AMD Strix Halo Kernels"
copyright = "2026"
author = "AMD Strix Halo Kernels contributors"
release = "0.1.0"

extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.napoleon",
    "sphinx.ext.viewcode",
]

autodoc_typehints = "description"
autodoc_member_order = "bysource"
html_theme = "alabaster"
html_static_path: list[str] = []
exclude_patterns = ["_build"]

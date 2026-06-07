# Contributing

Thanks for your interest in `amd-strix-halo-kernels`. This document covers the
development workflow, how the generated kernel artifacts are produced, and the
conventions to follow when sending changes.

## Development environment

The project uses [`uv`](https://docs.astral.sh/uv/) for environment and
dependency management and targets Python 3.12+.

```bash
uv sync --extra torch --group docs
```

This installs the runtime package, the optional ROCm PyTorch integration, and
the documentation toolchain. Native dispatch additionally requires an AMD Strix
Halo (`gfx1151`) GPU with a working ROCm stack; the package imports and the
reference paths work without a GPU.

## Running the tests

```bash
uv run python -m pytest
```

Tests live under `tests/`. New features and bug fixes should ship with tests.
Prefer the smallest reproducer that exercises the behavior: shape/contract
checks, reference-mode correctness, and registry/metadata assertions rather than
full end-to-end kernel sweeps.

## Generated artifacts

The files under `kernels/amdgcn/` (`.s` assembly plus per-kernel JSON metadata)
and `kernels/triton/` (Triton source and text IR) are **generated**. Do not
hand-edit them. To change a kernel, update the registry and generator scripts,
regenerate, and commit the matching metadata JSON alongside the assembly.

Regeneration requires the Strix Halo Triton fork, which carries the int4
`tl.dot_scaled` lowering, int32 accumulation for int4 MMA, packed int4 operand
support, and the RDNA 3.5 codegen/launch changes these artifacts depend on:

<https://github.com/SamGinzburg/triton/tree/amd-strix-halo>

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
```

## Building and verifying a wheel

```bash
uv build --wheel
uv run python scripts/check_wheel_portability.py dist/amd_strix_halo_kernels-*.whl
```

The wheel is runtime-only: it bundles the dispatch library, the HSACO code
objects, and the per-kernel `kernels/amdgcn/*.json` launch metadata, but not the
`*.s` assembly or `kernels/triton/` IR (those stay in the repository for
regeneration). The portability check confirms the wheel tag is Python-ABI
neutral and, with `--require-pypi-platform`, that it carries a `manylinux` tag.

For a PyPI-uploadable wheel, build and repair in one step on a ROCm host:

```bash
uv run --extra publish python scripts/build_release.py
```

This runs `uv build --wheel`, repairs to `manylinux_2_39_x86_64` with
`auditwheel`, and runs the portability and `twine check` gates, leaving the
uploadable wheel in `wheelhouse/`. See `RELEASING.md` for the full publishing
flow, including PyPI Trusted Publishing.

## Documentation

Documentation is built with Sphinx and should be updated in the same change as
any public API, CLI, or behavior modification.

```bash
uv run --group docs sphinx-build -b html docs docs/_build/html
```

The build should complete without warnings.

## Pull requests

Keep changes focused; unrelated refactors belong in separate pull requests.
Before opening a PR, make sure the test suite passes, the docs build cleanly,
and any regenerated artifacts are committed with their metadata. By
contributing you agree that your contributions are licensed under the project's
[MIT License](LICENSE).

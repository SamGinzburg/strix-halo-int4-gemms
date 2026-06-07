# Releasing

This project ships a binary wheel that embeds precompiled `gfx1151` HSACO code
objects. Those objects can only be assembled on a ROCm host (`llvm-mc` +
`ld.lld`), so the wheel is **built locally on a Strix Halo machine** and then
published. PyPI uploads go through Trusted Publishing (OIDC) from GitHub
Actions, so no API token is stored anywhere.

## What ships in the wheel

The wheel is runtime-only. It contains the dispatch shared library, the
`kernels/hsaco/*.hsaco` code objects, and the `kernels/amdgcn/*.json` launch
metadata that the dispatcher reads at run time — about 28 MB, well under PyPI's
100 MB per-file limit. The generation provenance (`*.s` assembly and the
`kernels/triton/` IR) stays in the git repository and is intentionally excluded
from the wheel; it is never read at run time.

## One-time setup

Register this repository as a trusted publisher on both indexes and create the
matching GitHub deployment environments:

- PyPI: https://pypi.org/manage/account/publishing/ — add a pending publisher
  for project `amd-strix-halo-kernels`, owner `SamGinzburg`, repository
  `strix-halo-int4-gemms`, workflow `publish.yml`, environment `pypi`.
- TestPyPI: https://test.pypi.org/manage/account/publishing/ — same, with
  environment `testpypi`.
- In GitHub repo settings, create environments named `pypi` and `testpypi`
  (optionally with required reviewers on `pypi`).

## Cutting a release

1. Bump `version` in `pyproject.toml` and update `LOG.md`. Make sure the working
   tree is clean and on `main`.
2. Build and verify the release wheel on the Strix Halo host:

   ```bash
   uv run --extra publish python scripts/build_release.py
   ```

   This runs `uv build --wheel`, repairs the raw `linux_*` wheel to
   `manylinux_2_39_x86_64` with `auditwheel`, confirms HSACO objects are
   packaged, and runs the portability and `twine check` gates. The uploadable
   wheel lands in `wheelhouse/`.
3. (Recommended) Smoke-test the repaired wheel against the GPU in a clean env,
   then dry-run to TestPyPI:

   ```bash
   uv run --extra publish python -m twine upload --repository testpypi wheelhouse/*.whl
   ```

   (or trigger the workflow with target `testpypi` after step 4.)
4. Tag and create the GitHub Release, attaching the repaired wheel:

   ```bash
   git tag v0.1.0 && git push origin v0.1.0
   gh release create v0.1.0 wheelhouse/amd_strix_halo_kernels-*.whl \
     --title v0.1.0 --notes "See LOG.md"
   ```

   Publishing the GitHub Release does **not** push to PyPI — the two steps are
   decoupled. The release only makes the compiled wheel downloadable on GitHub.
5. Publish to PyPI as a separate, deliberate step by running the workflow
   against the release tag (uploads the attached manylinux wheel via Trusted
   Publishing):

   ```bash
   gh workflow run publish.yml -f target=pypi -f tag=v0.1.0
   ```

   The workflow fails if a raw `linux_*` wheel is attached or if no `manylinux`
   wheel is found. For a dry run first, use `-f target=testpypi`.
6. Confirm the release on https://pypi.org/project/amd-strix-halo-kernels/ and
   install it into a fresh ROCm-PyTorch environment as a final check.

## Manual upload (fallback)

If you are not using the workflow, upload the repaired wheel directly:

```bash
uv run --extra publish python -m twine upload wheelhouse/amd_strix_halo_kernels-*.whl
```

Never upload the raw `dist/*-linux_*.whl`; PyPI rejects non-`manylinux` linux
platform tags. Also do not upload the sdist (`dist/*.tar.gz`): it carries the
full generation provenance and cannot build a usable wheel without the ROCm
toolchain.

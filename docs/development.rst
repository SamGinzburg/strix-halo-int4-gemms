Development
===========

Environment
-----------

Use ``uv`` for dependency management and execution:

.. code-block:: bash

   uv sync --extra torch --group docs
   uv run python -m pytest
   uv run --group docs sphinx-build -b html docs docs/_build/html
   uv build --wheel

Regeneration
------------

Generated assembly and Triton IR are checked in for reproducibility. Do not
hand-edit generated ``.s``, ``.ttir``, ``.ttgir``, or ``.llir`` files. Change
the registry or generator scripts, regenerate, and commit matching metadata.

Regenerate the full matrix from a local Triton checkout:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py

The wrapper invokes ``scripts/generate_matrix.py --clean`` by default. Use
``--dry-run`` to inspect the underlying command without compiling kernels.

Wheel Contents
--------------

The wheel is runtime-only. It bundles the dispatch shared library, the
``kernels/hsaco/*.hsaco`` code objects, and the ``kernels/amdgcn/*.json`` launch
metadata that the dispatcher reads at run time (about 28 MB total). The
generation provenance — ``*.s`` assembly and the ``kernels/triton/`` IR — stays
in the git repository and is excluded from the wheel by the CMake install rules;
it is never read at run time, and keeping it out of the wheel is what keeps the
artifact under PyPI's 100 MB per-file limit.

Wheel Portability
-----------------

Inspect a local wheel before publishing or distributing:

.. code-block:: bash

   uv build --wheel
   uv run python scripts/check_wheel_portability.py dist/amd_strix_halo_kernels-*.whl

Raw ``linux_*`` wheel tags are useful for private installs but are not PyPI
portable. The one-command release build wraps build, ``auditwheel`` repair to a
``manylinux`` tag, and the portability/``twine check`` gates, emitting the
uploadable wheel into ``wheelhouse/``:

.. code-block:: bash

   uv run --extra publish python scripts/build_release.py

To run the steps individually instead:

.. code-block:: bash

   uv run --extra publish python -m auditwheel show dist/amd_strix_halo_kernels-*.whl
   uv run --extra publish python -m auditwheel repair --plat manylinux_2_39_x86_64 -w wheelhouse dist/amd_strix_halo_kernels-*.whl
   uv run python scripts/check_wheel_portability.py --require-pypi-platform wheelhouse/amd_strix_halo_kernels-*.whl
   uv run --extra publish python -m twine check wheelhouse/amd_strix_halo_kernels-*.whl

The ``publish`` extra carries ``auditwheel``, ``patchelf`` (required by
``auditwheel repair``), and ``twine``.

Publishing
----------

Releases are built on a ROCm host and attached to a GitHub Release. Publishing
that release does not push to PyPI; the PyPI upload is a separate, manual run of
``.github/workflows/publish.yml`` (``workflow_dispatch``) that uploads the
attached wheel via Trusted Publishing (OIDC), so no API token is stored. See
``RELEASING.md`` at the repository root for the full checklist, including the
one-time PyPI trusted-publisher and GitHub environment setup.

Artifact Directories
--------------------

``kernels/amdgcn/``
   AMDGCN assembly and per-kernel JSON metadata.

``kernels/triton/``
   Triton source and text IR used to produce AMDGCN.

``kernels/triton/tuned/``
   Large-shape tuning backups emitted by tuner scripts.

``benchmarks/``
   JSON benchmark databases used for documentation and heuristic selection.

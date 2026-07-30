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

Regenerate the dense matrix from a local Triton checkout:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py

The wrapper invokes ``scripts/generate_matrix.py --clean`` by default. Use
``--dry-run`` to inspect the underlying command without compiling kernels.
Dense cleanup is family-scoped: it removes only
``gfx1151_int4xint4_*`` and ``gfx1151_int8xint8_*`` AMDGCN/Triton artifacts,
leaving ragged and mixed families intact in the same output directories.
The full dense wrapper reads ``default_registry`` and therefore excludes
development-only BF16-by-int4 entries. Generate one exact standard-schedule
mixed kernel explicitly from ``mixed_dtype_registry``:

.. code-block:: bash

   KERNEL_ID=gfx1151_bf16xint4_nn_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
   uv run --project "$TRITON_CHECKOUT" python scripts/generate_amdgcn.py \
     --kernel-id "$KERNEL_ID" --shape 4096,4096,4096

Unsupported persistent BF16-by-int4 combinations are not registered.

Regenerate the packaged ragged artifact set separately:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/generate_ragged_amdgcn.py --clean --no-triton-artifacts

The ragged generator emits ``kernels/amdgcn/gfx1151_ragged_int4_*.s`` plus
matching ``.json`` metadata. CMake automatically assembles those ``.s`` files
into wheel-packaged ``.hsaco`` objects alongside the dense matrix. Its default
job set and ``--clean`` lifecycle cover an 80-artifact forward/backward matrix
plus one specialized TN/per-channel/even-K ``bwd_accum`` artifact using
``BM64_BN128_BK64_W4_S2_SK1``. Use ``--mode bwd_accum`` to regenerate only
that specialized job. Dense and ragged cleanup/regeneration are independent.

Direct Tuning
-------------

The plain-GEMM, ReLU^2, and SwiGLU tuners accept ``--dtype bf16`` for the
development-only BF16×INT4 path:

.. code-block:: bash

   uv run --project "$TRITON_CHECKOUT" python scripts/tune_gemm.py --shape 4096,4096,4096 --dtype bf16
   uv run --project "$TRITON_CHECKOUT" python scripts/tune_relu2.py --shape 4096,4096,4096 --dtype bf16
   uv run --project "$TRITON_CHECKOUT" python scripts/tune_swiglu.py --shape 4096,4096,4096 --dtype bf16

All three validate candidates with ``rtol=atol=1e-3``. This mode dynamically
quantizes BF16 activation tiles inside the kernel and repeats that work for
each N tile. It does not imply that mixed artifacts are packaged; the 1080
mixed registry entries remain development-only. Prefer prequantizing A once
and reusing the standard INT4 path when throughput or projection reuse matters.

Wheel Contents
--------------

The wheel is runtime-only. During wheel build, CMake globs every
``kernels/amdgcn/*.s`` file, assembles it with ROCm ``llvm-mc``, links it with
``lld``, and installs the resulting ``kernels/hsaco/*.hsaco`` code objects.
The wheel bundles those code objects, the dispatch shared library, and the
``kernels/amdgcn/*.json`` launch metadata that the dispatcher reads at run
time (about 28 MB total). The generation provenance — ``*.s`` assembly and the ``kernels/triton/`` IR — stays
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

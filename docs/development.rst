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
   uv run --project "$TRITON_CHECKOUT" python scripts/generate_ragged_amdgcn.py --clean

The ragged generator emits ``kernels/amdgcn/gfx1151_ragged_int4_*.s`` plus
matching ``.json`` metadata. CMake automatically assembles those ``.s`` files
into wheel-packaged ``.hsaco`` objects alongside the dense matrix. Its default
job set and ``--clean`` lifecycle cover 40 forward BF16, 120 forward packed
INT4 plain/ReLU2/SwiGLU, 40 generic backward
FP32, 80 generic backward BF16 paired/scalar-store, and 20 exact
4096-capacity backward BF16 wide-store artifacts, plus two specialized
TN/per-channel/even-K ``bwd_accum`` artifacts using
``BM32_BN128_BK64_W4_S2_SK1`` and FP32/BF16 output. Use ``--mode bwd_accum``
to regenerate only those specialized jobs. Dense and ragged
cleanup/regeneration are independent.
Do not pass ``--no-triton-artifacts`` for checked-in regeneration: the tracked
Triton source and IR are part of the provenance update.

``uv.lock`` pins the custom Triton dependency to
``ec4a2c64315f3d4485e963a8391a7444a232801f``, and both dense and ragged
generation summaries record that source commit. The 2,880-entry combinatorial
dense base, two exact subchannel-256 TN projection-gradient artifacts, and 180
packed-INT4 output artifacts bring the checked-in dense total to 3,062. The
ragged matrix contains 302 artifacts after adding its 120 packed-output
variants.

Attention Generation and Tuning
-------------------------------

Regenerate the 488-artifact fused-attention family separately. This produces
104 generic forward objects, 380 measured-profile forward objects, and four
split-decode reducers at ``D=Dv=64``; cleanup is restricted to
``gfx1151_attention_*`` and does not touch dense or ragged families:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/generate_attention_amdgcn.py --clean

The generator writes AMDGCN ``.s`` and matching runtime metadata ``.json`` to
``kernels/amdgcn``. CMake assembles every object to packaged HSACO. Text Triton
IR is optional via ``--triton-out-dir`` and is not required for the vendored
attention source/assembly contract. The generation summary records the exact
custom-Triton commit and the parser verifies pointer/scalar offsets, including
the two hidden Triton ABI pointers, before accepting an artifact.

The current totals are 3,062 dense, 302 ragged, and 488 attention artifacts
(3,852 packaged HSACOs).

Regenerate the complete attention timing database on gfx1151 with prepacked
inputs and the experimental ROCm PyTorch SDPA baseline enabled:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1 \
     uv run --project "$TRITON_CHECKOUT" python scripts/benchmark_attention.py \
       --warmup-ms 25 \
       --rep-ms 100 \
       --output benchmarks/gfx1151_attention.json

The default sweep covers BF16/BF16, INT4/BF16, BF16/INT4, and INT4/INT4 over
prefill, split decode, and local-window cases. Use repeated ``--mode`` or
``--case`` arguments for a smaller diagnostic sweep, and repeated
``--config BLOCK_M,BLOCK_N,WARPS,STAGES[,DECODE_SPLITS]`` arguments for
explicit candidates. Quantization and packing are setup work and intentionally
excluded from the timed region. The CLI delegates candidate execution,
FP32/timed-output validation, and timing to the public
``autotune_attention(...)`` API, then adds multi-case selection, PyTorch SDPA
baselines, and the reporting JSON schema. Keep that API as the single source of
truth when changing candidate execution or numerical gates.
Use ``--backend precompiled`` to require packaged candidates, ``--backend jit``
to reproduce compiler-tuning runs, or the default ``auto`` for native coverage
with JIT fallback.

Three additional checked-in databases capture exact training workloads:
``benchmarks/gfx1151_attention_training.json`` contains 36 numerically gated
BF16 GQA candidates with zero failures, and
``benchmarks/gfx1151_attention_int4_value_training.json`` contains 24
BF16-QK/INT4-V and INT4-QK/INT4-V candidates using BF16 P@V with zero
failures. Regenerate the packed-V file with:

.. code-block:: bash

   TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1 \
     uv run python scripts/benchmark_attention.py \
       --mode bf16-int4 --mode int4-int4 \
       --case train-gqa-2048 --case train-gqa-local-128 \
       --warmup-ms 25 --rep-ms 100 \
       --output benchmarks/gfx1151_attention_int4_value_training.json

Finally,
``benchmarks/gfx1151_projection_training.json`` contains the seven separately
validated subchannel-256 projection winners at ``M=14336``. The latter's two
TN dW kernel IDs are packaged native artifacts. Preserve the exact shapes,
packed layouts, scale orientation, BF16 output, and FP32 gradient-accumulation
semantics when refreshing these records; four accumulation microbatches remain
four ``M=14336`` launches rather than one ``M=57344`` launch.

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
each N tile. It does not imply that mixed artifacts are packaged; the 1,170
mixed registry entries remain development-only. Prefer prequantizing A once
and reusing the standard INT4 path when throughput or projection reuse matters.

Wheel Contents
--------------

The wheel is runtime-only. During wheel build, CMake globs every
``kernels/amdgcn/*.s`` file, assembles it with ROCm ``llvm-mc``, links it with
``lld``, and installs the resulting ``kernels/hsaco/*.hsaco`` code objects.
The wheel bundles those code objects, the dispatch shared library, and the
``kernels/amdgcn/*.json`` launch metadata that the dispatcher reads at run
time (about 34.4 MiB total). The generation provenance — ``*.s`` assembly and the
``kernels/triton/`` IR — stays in the git repository and is excluded from the
wheel by the CMake install rules;
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

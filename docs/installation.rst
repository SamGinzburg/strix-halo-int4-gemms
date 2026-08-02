Installation
============

Build a local wheel from the repository root:

.. code-block:: bash

   uv build --wheel

Install the wheel into an environment that has ROCm PyTorch:

.. code-block:: bash

   uv pip install dist/amd_strix_halo_kernels-0.2.0-py3-none-linux_x86_64.whl

Runtime imports and precompiled native dispatch do not require Triton. Native
GEMM dispatch requires:

* a compatible ROCm HIP runtime,
* ROCm PyTorch,
* the packaged HSACO artifacts included in the wheel.

The packaged attention matrix and exact
``B=4,T=2048,H=32,D=Dv=128,value_block=64,checkpoint_interval=4`` Gluon KDA
profile run without Triton. Uncovered JIT fallbacks, artifact regeneration,
and Gluon development require the custom Strix Halo Triton fork. Install the
exact revision recorded in ``uv.lock`` with:

.. code-block:: bash

   uv sync --extra rocm-triton-fork

This extra builds Triton from source. The mutually exclusive ``rocm`` extra
uses the prebuilt ROCm Triton wheel and does not provide the fork's INT4 or
Gluon extensions.

Check the installed native runtime:

.. code-block:: python

   from amd_strix_halo_kernels import dispatch_runtime_status

   print(dispatch_runtime_status())

Build Documentation
-------------------

The documentation is a Sphinx project under ``docs/``:

.. code-block:: bash

   uv run --group docs sphinx-build -b html docs docs/_build/html

The generated HTML entry point is ``docs/_build/html/index.html``.

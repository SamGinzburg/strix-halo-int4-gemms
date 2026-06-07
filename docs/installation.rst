Installation
============

Build a local wheel from the repository root:

.. code-block:: bash

   uv build --wheel

Install the wheel into an environment that has ROCm PyTorch:

.. code-block:: bash

   uv pip install dist/amd_strix_halo_kernels-0.1.0-py3-none-linux_x86_64.whl

Runtime imports do not require Triton. Native GEMM dispatch requires:

* a compatible ROCm HIP runtime,
* ROCm PyTorch,
* the packaged HSACO artifacts included in the wheel.

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

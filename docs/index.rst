AMD Strix Halo Kernels
======================

``amd-strix-halo-kernels`` packages generated AMDGCN/HSACO GEMM kernels for
AMD Strix Halo (``gfx1151``). It provides PyTorch-tensor APIs for quantized
``int4 x int4`` and ``int8 x int8`` GEMM workloads, plus regeneration and
benchmarking tools for the checked-in kernel matrix.

The package is intentionally explicit: callers pass quantized tensors, packed
int4 operands, BF16 scale tensors, and a shape that satisfies the selected
kernel tile contract. This keeps the native fast path free of dynamic
quantization and Python fallback overhead.

The package can be used for forward paths and training-oriented GEMM shapes.
Autograd is not registered; training integrations must explicitly select these
kernels for the relevant forward or backward GEMM calls.

.. toctree::
   :maxdepth: 2
   :caption: User Guide

   installation
   pytorch
   api
   kernels
   benchmarks
   development

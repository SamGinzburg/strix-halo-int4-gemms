API Reference
=============

Calling Guide
-------------

Dense generated kernels and ragged grouped kernels are separate API
families:

* ``mm(...)`` selects a native dense kernel for plain GEMM or
  ``Epilogue.RELU2``.
* ``fused_swiglu_up_gate(...)`` selects a native dense fused SwiGLU kernel.
  The RHS logical output columns must be ``[up | gate]`` and the returned
  tensor has half as many columns.
* ``explicit_mm(..., kernel=...)`` launches the exact dense
  ``KernelMetadata`` entry supplied by the caller.
* ``torch_gemm(...)`` is the same explicit dense dispatch exposed as a
  lazy ``torch.library.custom_op``. It does not register autograd.
* ``ragged_dot_int4(...)`` uses packaged ragged HSACO for generated configs and
  falls back to Triton JIT. ``ragged_dot_int4_bwd(...)`` automatically uses
  shape-specialized JIT for generic BF16 shapes and eligible exact wide-store
  native artifacts at 4096 capacity; ``use_native`` can pin the backend.
* ``ragged_dot_int4_bwd_accum(...)`` sums 64-row task-packed products into one
  weight-gradient tensor per expert. It accumulates tiles in FP32, stores FP32
  by default, and can store BF16 once at the final output. It uses the matching
  specialized packaged TN/per-channel/even-K artifact when available.

Dense native kernels support ``GemmLayout.NN``, ``GemmLayout.NT``, and
``GemmLayout.TN``. Ragged native/JIT kernels support ``NN``, ``NT``,
``TN``, and ``TT``. Dense native ``TT`` dispatch is not generated.

Generic packaged ragged artifacts keep M, N, packed K, and scale-column
dimensions as runtime scalars without value- or alignment-based
specialization. Forward artifacts also keep task count runtime. Those HSACOs
handle dimensions around block boundaries with edge masking, subject to the
selected even-K/masked-K and per-mode contracts. Exact 4096-capacity backward
wide-store artifacts are the documented exception.
The public forward Triton-JIT/fallback path intentionally restores normal
value/alignment specialization for aligned-shape performance, so new shapes
can produce additional JIT variants without changing the packaged contract.

The dense native launch contract is checked against the selected kernel:

.. code-block:: python

   assert M % kernel.tile.block_m == 0
   assert N % kernel.tile.block_n == 0
   assert K % (kernel.tile.block_k * kernel.tile.split_k) == 0
   if kernel.scale.mode is ScaleMode.SUBCHANNEL:
       assert K % kernel.scale.subchannel_size == 0

If the contract is violated, native dispatch raises a ``ValueError`` beginning
with ``"<kernel_id> requires tile-multiple shape:"`` and listing the failed
divisibility checks. ``use_reference=True`` bypasses native dispatch for
numerical checks, but should not be used for benchmark or training-performance
measurements.

Dense autotuning uses the same contract:

.. code-block:: python

   from amd_strix_halo_kernels import (
       Epilogue,
       GemmLayout,
       OperandDType,
       ScaleMode,
       ScaleSpec,
       autotune,
       explicit_mm,
   )

   result = autotune(
       m=M,
       n=N,
       k=K,
       dtype=OperandDType.INT4,
       layout=GemmLayout.NN,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       epilogue=Epilogue.NONE,
       warmup_ms=25,
       rep_ms=100,
       validate=True,
   )
   out = explicit_mm(a, b, kernel=result.best_kernel, a_scale=a_scale, b_scale=b_scale)

Ragged autotuning uses Triton-JIT candidate configs rather than packaged dense
artifacts. The packaged ragged matrix is regenerated from the same configs
for the default native path. Candidate timing explicitly passes
``use_native=False`` and therefore measures JIT rather than packaged HSACO
dispatch; forward timing includes runtime-shape specialization:

.. code-block:: python

   from amd_strix_halo_kernels import (
       GemmLayout,
       RaggedDotMode,
       ScaleMode,
       ScaleSpec,
       autotune_ragged_dot,
   )

   result = autotune_ragged_dot(
       mode=RaggedDotMode.FWD,
       m=M,
       n=N,
       k=K,
       group_sizes=[M],
       layout=GemmLayout.NN,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
   )

For backward autotuning, ``k`` is total reduction work across groups, while
``k_capacity`` is the physical per-group packed storage capacity. Capacity
defaults to ``max(group_sizes)`` rounded up to even; odd explicit capacities
are also rounded up because packed int4 storage represents two values per byte.

For graph capture, call ``prepare_ragged_group_info(...)`` inside the captured
function and pass its fixed-capacity ``RaggedGroupInfo`` to one or more
``ragged_dot_int4(...)`` projections. Its static capacity depends on row,
group, and tile shapes; callers must guarantee that device ``group_sizes`` are
non-negative and sum to the static row count because preparation deliberately
does not synchronize to validate values on the host.

Standard Backward Contract
~~~~~~~~~~~~~~~~~~~~~~~~~~

``ragged_dot_int4_bwd(...)`` returns ``out[G, M, N]`` where each plane is
``op(lhs[g]) @ op(rhs[g])`` over ``group_sizes[g]`` values. Packed shapes are
``lhs[G,M,K/2]``/``rhs[G,K/2,N]`` for NN,
``lhs[G,M,K/2]``/``rhs[G,N,K/2]`` for NT,
``lhs[G,K/2,M]``/``rhs[G,K/2,N]`` for TN, and
``lhs[G,K/2,M]``/``rhs[G,N,K/2]`` for TT.

Omitting ``output_dtype`` and ``out`` selects BF16 at ``split_k=1`` and FP32
at ``split_k>1``. A supplied ``out`` infers its dtype when ``output_dtype`` is
omitted; an explicit dtype must match it. BF16 rounds the FP32 register
accumulation once at final store. Consumers maintaining FP32 master gradients
should request ``output_dtype=torch.float32``. BF16 is rejected for
``split_k>1`` because partial tiles use FP32 atomics.

With ``config=None``, a measured layout/scale/K-variant/output tile is chosen.
The even-K variant removes K masks at compile time; masked-K executes full
blocks unmasked and masks only the final partial block and odd nibble.
Automatic BF16 dispatch uses shape-specialized JIT for generic shapes. It uses
packaged wide-store native code only for eligible 16-byte-aligned
``M=N=k_capacity=4096`` NN/TN outputs. ``use_native=True`` also permits generic
paired/scalar artifacts; even, 4-byte-aligned N uses paired stores and odd or
misaligned output uses scalar stores. Explicit ``use_native=False`` pins JIT.
FP32 automatic/native dispatch remains available.

Raw ``group_sizes`` is host-validated and is not graph-capture-safe. Prepare
standard backward metadata outside capture, warm the exact launch, pass
``group_sizes=None`` and a preallocated ``out``, and explicitly pin
``use_native`` so replay cannot change backend:

.. code-block:: python

   import torch
   from amd_strix_halo_kernels import (
       prepare_ragged_bwd_group_info,
       ragged_dot_int4_bwd,
   )

   group_info = prepare_ragged_bwd_group_info(
       group_sizes,                 # contiguous int32 CUDA/HIP tensor
       k_capacity=K_CAPACITY,       # must be even
       scale=scale,
       dynamic_group_sizes=True,
   )
   out = torch.empty((G, M, N), device=lhs.device, dtype=torch.bfloat16)

   def run():
       return ragged_dot_int4_bwd(
           lhs,
           rhs,
           None,
           group_info=group_info,
           a_scale=a_scale,
           b_scale=b_scale,
           scale=scale,
           config=None,
           out=out,
           use_native=False,
       )

   run()                              # warm exact launch before capture
   torch.cuda.synchronize()
   graph = torch.cuda.CUDAGraph()
   with torch.cuda.graph(graph):
       captured = run()

   group_info.group_sizes.copy_(next_sizes)  # int32 values in [0, K_CAPACITY]
   graph.replay()

``dynamic_group_sizes=True`` fixes masked-K and permits those in-place updates
between replays. The default immutable preparation may select even-K but its
sizes must not change. Prepared metadata is bound to device, group count,
capacity, scale, and ``config.block_k``; use the same explicit config for
preparation and launch. Preparation rejects odd ``k_capacity``. Tests cover
all layouts, per-channel/subchannel scales, even/masked K, paired/scalar BF16
stores, and dynamic graph replay against grouped Torch references at
``rtol=atol=1e-3``.

``ragged_dot_int4_bwd_accum(...)`` requires every input tensor to be contiguous
and on one CUDA/HIP device. ``expert_task_ranges[E, 2]`` accepts int32 or int64
half-open ranges and validates ``0 <= start <= end <= T``. The function
canonicalizes int64 ranges to int32 for the native ABI. This validation reads
range values on the host, so it must run outside graph capture. ``output_dtype``
accepts only ``torch.float32`` and ``torch.bfloat16``; an explicit ``out``
tensor must match the selected dtype.

Surface APIs
------------

.. autofunction:: amd_strix_halo_kernels.mm

.. autofunction:: amd_strix_halo_kernels.fused_swiglu_up_gate

.. autofunction:: amd_strix_halo_kernels.explicit_mm

.. autofunction:: amd_strix_halo_kernels.ragged_dot_int4

.. autofunction:: amd_strix_halo_kernels.ragged_dot_int4_bwd

.. autofunction:: amd_strix_halo_kernels.prepare_ragged_bwd_group_info

.. autofunction:: amd_strix_halo_kernels.default_ragged_bwd_config

.. autofunction:: amd_strix_halo_kernels.ragged_dot_int4_bwd_accum

.. autofunction:: amd_strix_halo_kernels.calculate_group_info

.. autofunction:: amd_strix_halo_kernels.prepare_ragged_group_info

.. autofunction:: amd_strix_halo_kernels.ragged_group_info_capacity

.. autoclass:: amd_strix_halo_kernels.RaggedBwdDotConfig
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedDotConfig
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedGroupInfo
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedBwdGroupInfo
   :members:

Autotuning and Benchmarks
-------------------------

.. autofunction:: amd_strix_halo_kernels.autotune

.. autofunction:: amd_strix_halo_kernels.autotune_ragged_dot

.. autofunction:: amd_strix_halo_kernels.default_ragged_dot_candidates

.. autofunction:: amd_strix_halo_kernels.find_autotune_candidates

.. autoclass:: amd_strix_halo_kernels.AutotuneResult
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedAutotuneResult
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedAutotuneCandidate
   :members:

.. autoclass:: amd_strix_halo_kernels.RaggedDotMode
   :members:

.. autoclass:: amd_strix_halo_kernels.BenchmarkDatabase
   :members:

.. autoclass:: amd_strix_halo_kernels.BenchmarkRecord
   :members:

Metadata
--------

.. autoclass:: amd_strix_halo_kernels.OperandDType
   :members:

.. autoclass:: amd_strix_halo_kernels.ScaleMode
   :members:

.. autoclass:: amd_strix_halo_kernels.ScaleSpec
   :members:

.. autoclass:: amd_strix_halo_kernels.Epilogue
   :members:

.. autoclass:: amd_strix_halo_kernels.GemmLayout
   :members:

.. autoclass:: amd_strix_halo_kernels.KernelSchedule
   :members:

.. autoclass:: amd_strix_halo_kernels.TileConfig
   :members:

.. autoclass:: amd_strix_halo_kernels.KernelMetadata
   :members:

Native Runtime
--------------

.. autofunction:: amd_strix_halo_kernels.dispatch_runtime_status

.. autofunction:: amd_strix_halo_kernels.launch_generated_kernel

.. autofunction:: amd_strix_halo_kernels.register_torch_ops

.. autofunction:: amd_strix_halo_kernels.torch_gemm

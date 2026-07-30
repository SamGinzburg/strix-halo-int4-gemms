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
* ``ragged_dot_int4(...)`` and ``ragged_dot_int4_bwd(...)`` prefer packaged
  ragged HSACO artifacts for generated configs and fall back to Triton JIT
  unless ``use_native=True`` is passed.
* ``ragged_dot_int4_bwd_accum(...)`` sums 64-row task-packed products into one
  FP32 weight-gradient tensor per expert. It uses the specialized packaged
  TN/per-channel/even-K artifact when available.

Dense native kernels support ``GemmLayout.NN``, ``GemmLayout.NT``, and
``GemmLayout.TN``. Ragged native/JIT kernels support ``NN``, ``NT``,
``TN``, and ``TT``. Dense native ``TT`` dispatch is not generated.

Packaged ragged artifacts keep M, N, packed K, and scale-column dimensions as
runtime scalars without value- or alignment-based specialization. Forward
artifacts also keep the task count runtime. A generated ragged HSACO therefore
handles dimensions immediately below, at, and above its block sizes with edge
masking, subject to the selected even-K/masked-K and per-mode input contracts.
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

For graph capture, call ``prepare_ragged_group_info(...)`` inside the captured
function and pass its fixed-capacity ``RaggedGroupInfo`` to one or more
``ragged_dot_int4(...)`` projections. Its static capacity depends on row,
group, and tile shapes; callers must guarantee that device ``group_sizes`` are
non-negative and sum to the static row count because preparation deliberately
does not synchronize to validate values on the host.

Graph capture applies to the forward API with device-prepared group metadata.
Both backward APIs validate routing or task-range values on the host and must
be invoked outside capture.

``ragged_dot_int4_bwd_accum(...)`` requires every input tensor to be contiguous
and on one CUDA/HIP device. ``expert_task_ranges[E, 2]`` accepts int32 or int64
half-open ranges and validates ``0 <= start <= end <= T``. The function
canonicalizes int64 ranges to int32 for the native ABI. This validation reads
range values on the host, so it must run outside graph capture.

Surface APIs
------------

.. autofunction:: amd_strix_halo_kernels.mm

.. autofunction:: amd_strix_halo_kernels.fused_swiglu_up_gate

.. autofunction:: amd_strix_halo_kernels.explicit_mm

.. autofunction:: amd_strix_halo_kernels.ragged_dot_int4

.. autofunction:: amd_strix_halo_kernels.ragged_dot_int4_bwd

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

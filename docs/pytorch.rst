PyTorch Usage
=============

The APIs accept and return ``torch.Tensor`` objects, but they are not drop-in
``torch.mm`` replacements. The native path expects quantized integer operands,
BF16 scales, and shapes compatible with the selected generated kernel.
They are usable in training systems when the caller explicitly wires these
kernels into the desired forward or backward GEMM path. Autograd is not
registered.

Which API to Call
-----------------

.. list-table::
   :header-rows: 1

   * - API
     - Use it for
     - Shape family
   * - ``mm(...)``
     - Dense single-output GEMM, optionally with ``Epilogue.RELU2``
     - Native HSACO, ``NN``/``NT``/``TN``
   * - ``fused_swiglu_up_gate(...)``
     - Dense GEMM where the RHS output columns are concatenated ``[up | gate]``
     - Native HSACO, ``NN``/``NT``/``TN``
   * - ``explicit_mm(..., kernel=...)``
     - Dense native launch after selecting a specific ``KernelMetadata``
     - Native HSACO, ``NN``/``NT``/``TN``
   * - ``torch_gemm(...)``
     - PyTorch custom-op integration around an explicit dense kernel
     - Native HSACO, no autograd registration
   * - ``ragged_dot_int4(...)``
     - Forward M-ragged grouped int4 dot
     - Triton-JIT, ``NN``/``NT``/``TN``/``TT``
   * - ``ragged_dot_int4_bwd(...)``
     - Backward-style K-ragged grouped int4 dot
     - Triton-JIT, ``NN``/``NT``/``TN``/``TT``
   * - ``autotune(...)``
     - Time dense packaged kernels for one logical shape
     - Native HSACO candidates only
   * - ``autotune_ragged_dot(...)``
     - Time ragged Triton-JIT candidate configs
     - Forward and backward ragged modes

All native dense paths expect quantized/packed inputs and BF16 scales. They do
not quantize weights dynamically, silently transpose scale tensors, or fall back
to a reference implementation in performance paths.

Quick Start
-----------

.. code-block:: python

   import torch

   from amd_strix_halo_kernels import Epilogue, OperandDType, ScaleMode, ScaleSpec, mm
   from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major

   M, N, K = 128, 1024, 64
   device = "cuda"

   a_bf16 = torch.randn((M, K), device=device, dtype=torch.bfloat16) * 0.1
   b_bf16 = torch.randn((K, N), device=device, dtype=torch.bfloat16) * 0.1

   a_q = fake_quant_int(a_bf16, bits=4, scale=0.1)
   b_q = fake_quant_int(b_bf16, bits=4, scale=0.1)

   a = pack_int4_k_major(a_q)
   b = pack_int4_k_major(b_q.T).T.contiguous()
   a_scale = torch.ones((M,), device=device, dtype=torch.bfloat16)
   b_scale = torch.ones((N,), device=device, dtype=torch.bfloat16)

   out = mm(
       a,
       b,
       a_scale=a_scale,
       b_scale=b_scale,
       dtype=OperandDType.INT4,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       epilogue=Epilogue.NONE,
   )

Dense Shape Contract
--------------------

Native dense kernels are runtime-shape launchable, but the selected kernel tile
is fixed. Before launching a native kernel, the logical shape must satisfy:

* ``M % kernel.tile.block_m == 0``;
* ``N % kernel.tile.block_n == 0``;
* ``K % (kernel.tile.block_k * kernel.tile.split_k) == 0``;
* for ``ScaleMode.SUBCHANNEL``, ``K % scale.subchannel_size == 0``.

The selected kernel defines ``BLOCK_M``, ``BLOCK_N``, ``BLOCK_K``, and
``SPLIT_K``. For example, ``BM64_BN512_BK32_SK1`` accepts
``M=128, N=1024, K=64`` but rejects ``M=96`` or ``N=768``. ``BK32_SK4``
requires ``K`` to be a multiple of ``128``.

The native selector and dense autotuner currently choose only ``even_k``
artifacts that satisfy this contract. ``Epilogue.RELU2`` and fused SwiGLU are
available only with ``SPLIT_K=1``. Plain GEMM supports
``SPLIT_K=1,2,4,8``. Non-split kernels store BF16 outputs; split-K kernels
store FP32 outputs because partial tiles are combined with FP32 atomics.

Use this check when selecting kernels explicitly:

.. code-block:: python

   assert M % kernel.tile.block_m == 0
   assert N % kernel.tile.block_n == 0
   assert K % (kernel.tile.block_k * kernel.tile.split_k) == 0
   if kernel.scale.mode is ScaleMode.SUBCHANNEL:
       assert K % kernel.scale.subchannel_size == 0

``use_reference=True`` is the arbitrary-shape numerical path. It is useful for
tests and debugging, but it is not a performance path.

Fused SwiGLU
------------

Use ``fused_swiglu_up_gate(...)`` when the RHS contains concatenated
``[up | gate]`` columns. The logical RHS shape is ``(K, 2 * D)`` and the output
shape is ``(M, D)``.

.. code-block:: python

   from amd_strix_halo_kernels import fused_swiglu_up_gate

   D = 512
   b_up_gate_q = fake_quant_int(
       torch.randn((K, 2 * D), device=device, dtype=torch.bfloat16) * 0.1,
       bits=4,
       scale=0.1,
   )
   b_up_gate = pack_int4_k_major(b_up_gate_q.T).T.contiguous()
   b_up_gate_scale = torch.ones((2 * D,), device=device, dtype=torch.bfloat16)

   out = fused_swiglu_up_gate(
       a,
       b_up_gate,
       a_scale=a_scale,
       b_scale=b_up_gate_scale,
       dtype=OperandDType.INT4,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
   )

Dense Autotuning
----------------

``autotune(...)`` benchmarks every packaged dense kernel that matches the
requested dtype, layout, scale mode, epilogue, schedule, and tile-multiple
shape. It uses ``triton.testing.do_bench`` device timing with prepacked
operands and preallocated outputs.

.. code-block:: python

   from amd_strix_halo_kernels import (
       Epilogue,
       GemmLayout,
       OperandDType,
       ScaleMode,
       ScaleSpec,
       autotune,
       explicit_mm,
       find_autotune_candidates,
   )

   candidates = find_autotune_candidates(
       m=M,
       n=N,
       k=K,
       dtype=OperandDType.INT4,
       layout=GemmLayout.NN,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       epilogue=Epilogue.NONE,
   )
   print(f"{len(candidates)} launchable candidates")

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
       benchmark_db_path="benchmarks/local_autotune.json",
   )

   out = explicit_mm(
       a,
       b,
       kernel=result.best_kernel,
       a_scale=a_scale,
       b_scale=b_scale,
   )

Subchannel Scale Layout
-----------------------

Subchannel RHS scales must be weight-matched to the RHS weight layout. Use
``b_scale[scale_cols, N]`` for regular GEMM, ``b_scale[scale_cols, 2 * D]`` for
fused SwiGLU, and ``b_scale[G, scale_cols, N]`` for ragged dot. Logical layouts
such as ``(N, scale_cols)`` or ``(G, N, scale_cols)`` are rejected instead of
being transposed implicitly.

.. code-block:: python

   from amd_strix_halo_kernels.quant import (
       pack_rhs_subchannel_scales,
       pack_ragged_rhs_subchannel_scales,
   )

   b_scale = pack_rhs_subchannel_scales(b_scale_logical)
   ragged_b_scale = pack_ragged_rhs_subchannel_scales(ragged_b_scale_logical)

Reference Mode
--------------

Set ``use_reference=True`` for arbitrary-shape correctness checks. Reference
mode uses torch operations and does not require packaged HSACO launchability.

.. code-block:: python

   expected = mm(
       a.cpu(),
       b.cpu(),
       a_scale=a_scale.cpu(),
       b_scale=b_scale.cpu(),
       dtype=OperandDType.INT4,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       use_reference=True,
   )

PyTorch Custom Op
-----------------

``torch_gemm(...)`` lazily registers ``torch.ops.amd_strix_halo_kernels.gemm``.
It is useful for PyTorch integration and fake tensor shape propagation, but it
does not register autograd.

.. code-block:: python

   from amd_strix_halo_kernels import default_registry, torch_gemm

   kernel = default_registry.get(
       "gfx1151_int4xint4_nn_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"
   )
   out = torch_gemm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale)

Ragged Dot
----------

``ragged_dot_int4(...)`` is a forward Triton-JIT kernel for grouped
ragged dot. It follows the same high-level shape model as
``jax.lax.ragged_dot``: ``group_sizes`` partitions the rows of ``lhs`` into
contiguous groups, and group ``g`` multiplies ``rhs[g]``.

.. code-block:: python

   from amd_strix_halo_kernels import GemmLayout, RaggedDotConfig, ragged_dot_int4

   # lhs: uint8 packed int4, shape (M, K / 2)
   # rhs: uint8 packed int4, shape (G, K / 2, N)
   # group_sizes: int tensor, shape (G,), sum == M
   out = ragged_dot_int4(
       lhs,
       rhs,
       group_sizes,
       a_scale=a_scale,
       b_scale=b_scale,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       config=RaggedDotConfig(block_m=16, block_n=128, block_k=32, group_size_tasks=1),
       layout=GemmLayout.NN,
   )

Per-channel scales use ``a_scale[M]`` and ``b_scale[G, N]``. Subchannel scales
use ``a_scale[M, ceil(K / S)]`` and weight-matched
``b_scale[G, ceil(K / S), N]``. This path uses Triton ``tl.dot_scaled`` with
int32 accumulation, then applies BF16 scales in FP32 before storing BF16 or
FP32 output. It is a Triton-JIT path, not a packaged HSACO dispatch path.
Autograd is not registered.

Internally, ``calculate_group_info(group_sizes, tile, align_tile=8)`` builds
a compact task list with ``group_id``, ``block_start``,
``actual_start``, ``actual_end``, ``start_within_block``, and ``actual_size``.
The ragged kernel launches over those tasks, so empty groups and uneven group
sizes do not expand into a rectangular ``max_group_size x G`` launch grid.
The Triton kernel receives logical ``N``, packed ``K``, scale-column count, and
task count as runtime arguments rather than shape-specializing on ``M``, ``N``,
or ``K``. ``RaggedDotConfig.group_size_tasks`` controls the 1D L2 swizzle over
compact row tasks and N tiles.

With ``RaggedDotConfig.enable_even_k_fast_path=True``, the library
automatically uses an even-K fast path when ``K % BLOCK_K == 0``. Subchannel
scales also require ``K % SUBCHANNEL == 0`` and a scale chunk size compatible
with ``BLOCK_K``. The fast path still passes ``N`` and packed ``K`` as runtime
arguments. It keeps row and column predicates for irregular ``group_sizes`` and
edge ``N`` tiles; only K predicates are removed inside the kernel. Shapes with
ragged K use the fully masked ragged kernel.

``ragged_dot_int4(...)`` supports ``NN``, ``NT``, ``TN``, and ``TT`` packed
operand layouts. Transposed operands use the same packed-K conventions as the
dense GEMM APIs.

``ragged_dot_int4_bwd(...)`` is the backward-style K-ragged companion. Each
group computes ``out[g] = op(lhs[g]) @ op(rhs[g])`` with output shape
``(M, N)`` and reduction length ``group_sizes[g]``. Operands are padded to a
common packed-K capacity. With
``RaggedBwdDotConfig.enable_even_k_fast_path`` enabled, the
training-oriented fast path removes K masks when every non-empty group length
is a multiple of ``BLOCK_K``; subchannel scales additionally require each
non-empty group length to be a multiple of the subchannel size. Other shapes
use the masked K-ragged path. ``split_k > 1`` accumulates FP32 partials with
atomics. The grouped packed operand shapes are:

* ``NN``: ``lhs[G, M, K / 2]`` and ``rhs[G, K / 2, N]``;
* ``NT``: ``lhs[G, M, K / 2]`` and ``rhs[G, N, K / 2]``;
* ``TN``: ``lhs[G, K / 2, M]`` and ``rhs[G, K / 2, N]``;
* ``TT``: ``lhs[G, K / 2, M]`` and ``rhs[G, N, K / 2]``.

Use ``autotune_ragged_dot(...)`` when the goal is to pick a fast Triton-JIT
ragged configuration for one shape. It supports both ``RaggedDotMode.FWD`` and
``RaggedDotMode.BWD``, benchmarks candidate ``RaggedDotConfig`` or
``RaggedBwdDotConfig`` values with ``triton.testing.do_bench``, and returns the
best candidate plus all timing records. Forward group sizes must sum to
``M``. For backward autotuning, ``k`` is the logical total reduction work and
``group_sizes`` must sum to ``K``. Synthetic benchmark operands are padded to a
per-group ``k_capacity``, which defaults to ``max(group_sizes)`` and can be
overridden explicitly.

.. code-block:: python

   from amd_strix_halo_kernels import RaggedDotMode, autotune_ragged_dot

   result = autotune_ragged_dot(
       mode=RaggedDotMode.BWD,
       m=4096,
       n=4096,
       k=4096,
       group_sizes=[512] * 8,
       layout=GemmLayout.NN,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
   )
   print(result.best_candidate.config_label, result.best_record.tops)

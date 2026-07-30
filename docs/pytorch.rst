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
     - Packaged HSACO for generated configs, JIT fallback, ``NN``/``NT``/``TN``/``TT``
   * - ``ragged_dot_int4_bwd(...)``
     - Backward-style K-ragged grouped int4 dot
     - Packaged HSACO for generated configs, JIT fallback, ``NN``/``NT``/``TN``/``TT``
   * - ``autotune(...)``
     - Time dense packaged kernels for one logical shape
     - Native HSACO candidates only
   * - ``autotune_attention(...)``
     - Validate and time fused attention configs on caller-provided tensors
     - JIT, all BF16/INT4 QK-by-PV modes
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

Fused Attention
---------------

The fused attention API accepts contiguous CUDA/HIP tensors in
``[batch, heads, sequence, feature]`` order. This is the BF16 path:

.. code-block:: python

   from amd_strix_halo_kernels import int4_scaled_dot_product_attention

   # query [B,Hq,Lq,D], key [B,Hkv,Lk,D], value [B,Hkv,Lk,Dv]
   out = int4_scaled_dot_product_attention(
       query,
       key,
       value,
       is_causal=True,
   )  # [B,Hq,Lq,Dv], BF16 by default

Quantize Q/K per token and V per 16-token/value-channel group to select any of
the INT4 modes. Q and K must use the same representation, but V is independent:

.. code-block:: python

   import torch
   from amd_strix_halo_kernels import (
       int4_scaled_dot_product_attention,
       quantize_attention_qk_int4,
       quantize_attention_value_int4,
   )

   q4, q_scale, head_dim = quantize_attention_qk_int4(query)
   k4, k_scale, _ = quantize_attention_qk_int4(key)
   v4, v_scale = quantize_attention_value_int4(value)

   qk_int4 = int4_scaled_dot_product_attention(
       q4,
       k4,
       value,
       query_scale=q_scale,
       key_scale=k_scale,
       head_dim=head_dim,
   )
   all_int4 = int4_scaled_dot_product_attention(
       q4,
       k4,
       v4,
       query_scale=q_scale,
       key_scale=k_scale,
       value_scale=v_scale,
       head_dim=head_dim,
       output_dtype=torch.float32,
   )

Q/K packing pads ``D`` to a multiple of 16 and returns physical shape
``[B,H,L,ceil(D/16)*8]`` plus BF16 scales ``[B,H,L]``. V packing pads ``Lk``
to a multiple of 16 and returns
``[B,Hkv,ceil(Lk/16)*8,Dv]`` plus scales
``[B,Hkv,ceil(Lk/16),Dv]``. Preserve the original Q/K dimension returned by
the helper and pass it as ``head_dim``. Both ``head_dim`` and ``Dv`` are
limited to 256.

Packed V remains compressed in memory but is unpacked and dequantized to BF16
inside each kernel tile. Online-softmax probabilities remain BF16 and P@V
uses BF16 MMA with FP32 accumulation; the implementation does not quantize P
online. Q@K alone uses INT4 MMA when Q/K are packed.

Boolean masks keep true entries; BF16/FP32 masks are added to logits. Masks
can be non-contiguous and broadcast to ``[B,Hq,Lq,Lk]``. Do not combine an
explicit mask with ``is_causal=True``. An inclusive local window accepts an
integer radius or ``(left,right)``; for cached decode, set the absolute
position of the first local query:

.. code-block:: python

   decode = int4_scaled_dot_product_attention(
       query[:, :, -1:, :],
       key_cache,
       value_cache,
       is_causal=True,
       window_size=(127, 0),
       query_position_offset=key_cache.shape[-2] - 1,
   )

GQA is explicit: when ``Hq != Hkv``, ``enable_gqa=True`` is required and
``Hq % Hkv`` must be zero. The optimized path is forward-only, supports no
dropout, and rejects input or scale tensors that require gradients.

Use ``autotune_attention(...)`` on the actual tensors and exact attention
semantics to select a launch configuration. It validates every candidate in
FP32 and in the requested timed output dtype at ``rtol=atol=1e-3`` or stricter:

.. code-block:: python

   from amd_strix_halo_kernels import autotune_attention

   tuning = autotune_attention(
       q4,
       k4,
       value,
       query_scale=q_scale,
       key_scale=k_scale,
       head_dim=head_dim,
       enable_gqa=True,
       window_size=(127, 0),
       benchmark_db_path="benchmarks/local_attention.json",
   )

   tuned = int4_scaled_dot_product_attention(
       q4,
       k4,
       value,
       query_scale=q_scale,
       key_scale=k_scale,
       head_dim=head_dim,
       enable_gqa=True,
       window_size=(127, 0),
       config=tuning.best_config,
   )

Quantization, output allocation, and split-decode workspace allocation are
excluded from timing. The result database is append-only evidence; pass
``best_config`` explicitly because attention dispatch does not consult that
file. Run tuning before capture, never from inside a CUDAGraph.

The default long-context decode configuration uses split reduction. For graph
capture, provide the exact preallocated output and FP32 workspace and warm the
launch before entering the graph:

.. code-block:: python

   from amd_strix_halo_kernels import Int4AttentionConfig

   config = Int4AttentionConfig(block_m=16, block_n=64, decode_splits=8)
   out = torch.empty((B, Hq, 1, Dv), device=query.device, dtype=torch.bfloat16)
   workspace = torch.empty(
       (B, Hq, config.decode_splits, Dv + 2),
       device=query.device,
       dtype=torch.float32,
   )

   def run():
       return int4_scaled_dot_product_attention(
           query,
           key,
           value,
           config=config,
           out=out,
           workspace=workspace,
       )

   run()
   torch.cuda.synchronize()
   graph = torch.cuda.CUDAGraph()
   with torch.cuda.graph(graph):
       captured = run()

Workspace is accepted only for ``decode_splits > 1`` and split decode requires
``Lq=1``. Warm the exact operand mode, shapes, mask form, and configuration.
All four operand modes have normal-execution and CUDAGraph coverage, including
split decode.

Use ``reference_scaled_dot_product_attention(...)`` or ``use_reference=True``
with FP32 output for a matched quantized oracle. The optimized-vs-oracle gate
is ``rtol=atol=1e-3``. Quantization quality relative to original BF16 is a
separate metric: INT4 Q/K with BF16 V has measured relative L2 at most 0.03
and cosine at least 0.999; modes with experimental INT4 V use relative L2 at
most 0.12 and cosine at least 0.99 across dense, ragged, causal, local, and GQA
cases. BF16 output can differ by one BF16 ULP at larger magnitudes. This
kernel is JIT-only and requires the custom Triton fork.

For the model-like BF16 GQA training shape
``B=7,Hq=16,Hkv=8,Lq=Lk=2048,D=Dv=64``, the default
``BM64_BN64_W4_S1`` tile measured 3.727353 ms / 32.264 TOPS versus PyTorch at
7.560022 ms / 15.907 TOPS. The same tile is now the long-local default and
measured 0.570430 ms / 12.768 effective TOPS for ``window_size=(127,0)``.
These rows use BF16 Q/K/V and BF16 output with FP32 accumulation; they are not
INT4 attention timings. Short local BF16-Q/K queries retain ``BN32``. The
reported 233.57x local ratio is only diagnostic: its PyTorch comparison used
one sample and a generic boolean mask that did not remain on the fused fast
path.

With packed INT4 V and tile-wise BF16 dequantization/P@V, the same full shape
measured 4.867351 ms / 24.707 TOPS for BF16 Q/K and 4.462832 ms / 26.947 TOPS
for INT4 Q/K, or 1.56x and 1.70x the allocation-including PyTorch BF16
baseline. Both use ``BM64_BN16_W4_S1`` and passed the matched FP32 and timed
BF16 gates at ``rtol=atol=1e-3``.

Projection Training Layouts
---------------------------

The exact ``M=14336`` training projection winners use signed INT4 operands,
subchannel-256 BF16 scales, FP32 training accumulation, and BF16 kernel output.
Forward, input-gradient, and weight-gradient calls require different packed
layouts even when they represent the same layer:

* forward ``NT`` packs A as ``[M,K/2]`` and B as ``[N,K/2]``;
* dX ``NN`` packs A as ``[M,K/2]`` and B as ``[K/2,N]``;
* dW ``TN`` packs A as ``[K/2,M]`` and B as ``[K/2,N]``.

In all three cases, subchannel scales use ``a_scale[M,K/256]`` and the
weight-matched ``b_scale[K/256,N]``. For dW, logical ``K=14336`` is the
token/reduction dimension, so the subchannel groups partition tokens rather
than a model feature axis. Do not reuse packed operands or scales across these
three layouts without repacking. Gradient accumulation repeats the
``M=14336`` microbatch operation into an FP32 accumulator; it does not retune
or concatenate the launch to ``M=57344``. The native GEMM result itself is
BF16.

Ragged Dot
----------

``ragged_dot_int4(...)`` is a forward grouped ragged dot API. It follows the
same high-level shape model as ``jax.lax.ragged_dot``: ``group_sizes``
partitions the rows of ``lhs`` into contiguous groups, and group ``g``
multiplies ``rhs[g]``. By default it launches packaged HSACO for generated
configs and falls back to Triton JIT when no matching artifact is present. Pass
``use_native=True`` to require packaged HSACO; pass ``use_native=False`` to
force JIT. ``RaggedDotConfig()`` and ``RaggedBwdDotConfig()`` default to
the shipped precompiled tiles.

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
       config=RaggedDotConfig(),
       layout=GemmLayout.NN,
       use_native=True,
   )

Per-channel scales use ``a_scale[M]`` and ``b_scale[G, N]``. Subchannel scales
use ``a_scale[M, ceil(K / S)]`` and weight-matched
``b_scale[G, ceil(K / S), N]``. The kernel uses Triton ``tl.dot_scaled`` with
int32 accumulation, then applies BF16 scales in FP32. Packaged forward artifacts
store BF16 output; the JIT fallback can also store FP32 when requested.
Autograd is not registered.

Internally, ``calculate_group_info(group_sizes, tile, align_tile=8)`` builds
a compact task list with ``group_id``, ``block_start``,
``actual_start``, ``actual_end``, ``start_within_block``, and ``actual_size``.
The ragged kernel launches over those tasks, so empty groups and uneven group
sizes do not expand into a rectangular ``max_group_size x G`` launch grid.
Packaged forward ragged kernels receive logical ``N``, packed ``K``,
scale-column count, and task count as generic runtime arguments without
value/alignment specialization. The public forward JIT/fallback path instead specializes those
runtime values and alignments for aligned-shape performance; a new shape may
compile another JIT variant. ``RaggedDotConfig.group_size_tasks`` controls the
1D L2 swizzle over compact row tasks and N tiles.

With ``RaggedDotConfig.enable_even_k_fast_path=True``, the library
automatically uses an even-K fast path when ``K % BLOCK_K == 0``. Subchannel
scales also require ``K % SUBCHANNEL == 0`` and a scale chunk size compatible
with ``BLOCK_K``. The fast path still passes ``N`` and packed ``K`` as runtime
arguments. It keeps row and column predicates for irregular ``group_sizes`` and
edge ``N`` tiles; only K predicates are removed inside the kernel. Shapes with
ragged K use the fully masked ragged artifact or JIT kernel.

``ragged_dot_int4(...)`` supports ``NN``, ``NT``, ``TN``, and ``TT`` packed
operand layouts. Transposed operands use the same packed-K conventions as the
dense GEMM APIs.

``ragged_dot_int4_bwd(...)`` is the backward-style K-ragged companion. Each
group computes ``out[g] = op(lhs[g]) @ op(rhs[g])`` with output shape
``(M, N)`` and reduction length ``group_sizes[g]``. Operands are padded to a
common even packed-K capacity. With ``config=None``, measured
layout/scale/K-variant/output-specific tiles are selected. Even-K removes K
masks at compile time; masked-K runs complete blocks unmasked and masks only
the final partial/odd-nibble tail. With no ``out`` or ``output_dtype``,
``split_k=1`` defaults to
BF16 and ``split_k>1`` defaults to FP32. A supplied ``out`` infers its dtype;
callers that maintain FP32 master gradients should explicitly request
``output_dtype=torch.float32`` or supply an FP32 output. BF16 is rejected for
``split_k>1`` because partial tiles require FP32 atomic accumulation. BF16
rounds the FP32 accumulator once at the final store.

Automatic BF16 dispatch uses shape-specialized JIT for generic shapes. It uses
wide packaged native stores only for eligible 16-byte-aligned
``M=N=k_capacity=4096`` NN/TN outputs. ``use_native=True`` also permits generic
native artifacts, selecting paired stores for even, 4-byte-aligned N and scalar
stores for odd or misaligned output; ``use_native=False`` pins JIT.

Raw ``group_sizes`` is host-validating and not capture-safe. For graph replay,
prepare an even-capacity ``RaggedBwdGroupInfo`` outside capture with
``prepare_ragged_bwd_group_info(...)``, pass ``group_sizes=None``, preallocate
``out``, warm the exact launch, and pin ``use_native`` to ``True`` or ``False``.
Immutable preparation may use even-K. ``dynamic_group_sizes=True`` fixes
masked-K and permits in-place contiguous-int32 updates within
``[0, k_capacity]`` between replays.
The grouped packed operand shapes are:

* ``NN``: ``lhs[G, M, K / 2]`` and ``rhs[G, K / 2, N]``;
* ``NT``: ``lhs[G, M, K / 2]`` and ``rhs[G, N, K / 2]``;
* ``TN``: ``lhs[G, K / 2, M]`` and ``rhs[G, K / 2, N]``;
* ``TT``: ``lhs[G, K / 2, M]`` and ``rhs[G, N, K / 2]``.

Use ``autotune_ragged_dot(...)`` when the goal is to pick a fast Triton-JIT
ragged configuration for one shape. The packaged ragged matrix currently uses
the default generated configs described above; autotuning remains a JIT timing
API for exploring additional configs before regenerating artifacts and passes
``use_native=False`` for every candidate. It supports both
``RaggedDotMode.FWD`` and ``RaggedDotMode.BWD``, benchmarks
candidate ``RaggedDotConfig`` or
``RaggedBwdDotConfig`` values with ``triton.testing.do_bench``, and returns the
best candidate plus all timing records. Forward group sizes must sum to
``M``. For backward autotuning, ``k`` is the logical total reduction work and
``group_sizes`` must sum to ``K``. Synthetic benchmark operands are padded to a
per-group ``k_capacity``, which defaults to ``max(group_sizes)`` rounded up to
even and can be overridden explicitly; odd overrides are also rounded up for
packed int4 storage.

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

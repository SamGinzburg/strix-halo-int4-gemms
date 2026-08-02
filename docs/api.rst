API Reference
=============

Calling Guide
-------------

Dense generated kernels and ragged grouped kernels are separate API
families:

* ``mm(...)`` selects a native dense kernel for plain GEMM or
  ``Epilogue.RELU2`` and can return BF16, FP32 split-K, or packed INT4.
* ``fused_swiglu_up_gate(...)`` selects a native dense fused SwiGLU kernel.
  The RHS logical output columns must be ``[up | gate]`` and the returned
  tensor has half as many columns.
* ``int4_scaled_dot_product_attention(...)`` and
  ``int4_scaled_dot_product_attention_backward(...)`` are explicit fused
  attention forward/backward APIs with packaged ``D=Dv=64`` HSACO and JIT
  fallback. Q/K can be BF16 or packed INT4, and V independently can be BF16
  or packed INT4. These APIs do not register implicit autograd.
* ``kimi_delta_attention(...)`` and ``kimi_delta_attention_backward(...)``
  provide explicit recurrent Kimi Delta Attention forward/backward over
  ``[B,T,H,D]``. Q/K and V independently accept BF16 or row-scaled packed
  INT4 input storage, with Triton and tuned gfx1151 Gluon backends.
* ``explicit_mm(..., kernel=...)`` launches the exact dense
  ``KernelMetadata`` entry supplied by the caller.
* ``torch_gemm(...)`` is the same explicit dense dispatch exposed as a
  lazy ``torch.library.custom_op``. It does not register autograd.
* ``ragged_dot_int4(...)`` uses packaged ragged HSACO for generated configs,
  including packed-INT4 plain/ReLU2/SwiGLU output, and falls back to Triton JIT.
  ``ragged_dot_int4_bwd(...)`` automatically uses
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
selected even-K/masked-K and per-mode contracts. Packed-INT4 output has no N
tail because it requires complete 256-column tiles. Exact 4096-capacity backward
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
       OutputDType,
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
       output_dtype=OutputDType.INT4,
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
       Epilogue,
       GemmLayout,
       OutputDType,
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
       epilogue=Epilogue.SWIGLU,
       output_dtype=OutputDType.INT4,
   )

Dense and Ragged Output Contracts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``mm(...)``, ``fused_swiglu_up_gate(...)``, and ``ragged_dot_int4(...)`` use
the shared ``OutputDType`` enum. BF16 is the default split-K-1 store. Dense
plain GEMM uses FP32 for ``split_k>1`` because partial tiles are accumulated
with FP32 atomics. Packed INT4 is a fused final-output contract: it returns a
``QuantizedInt4Tensor`` containing ``packed`` uint8 data, BF16 ``scale``, the
logical shape, and the sc256 scale specification.

.. code-block:: python

   from amd_strix_halo_kernels import OutputDType

   activation = fused_swiglu_up_gate(
       lhs,
       up_gate_weight,
       a_scale=a_scale,
       b_scale=up_gate_scale,
       dtype=OperandDType.INT4,
       scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
       output_dtype=OutputDType.INT4,
       out=packed_out,          # optional uint8[M,D/2]
       out_scale=scale_out,     # optional bfloat16[M,D/256]
   )
   down = mm(
       activation.packed,
       down_weight,
       a_scale=activation.scale,
       b_scale=down_scale,
       dtype=OperandDType.INT4,
       scale=ScaleSpec(ScaleMode.SUBCHANNEL, 256),
   )

INT4 output requires logical ``N % 256 == 0``, a ``BN256`` output tile, BF16
subchannel-256 output scales, and ``split_k=1``. Preallocated output and scale
buffers must be contiguous and on the same device as the operands. It supports
plain, ReLU2, and SwiGLU epilogues for packaged dense INT4/INT8 inputs and
ragged INT4 inputs.
The development-only mixed BF16-by-INT4 registry implements the same contract
but is not wheel-packaged. Passing stable ``out`` and ``out_scale`` buffers makes the producer
graph-replay safe after warmup. Output buffers are returned by identity.

``ragged_dot_int4_bwd(...)`` intentionally supports BF16 and FP32 only. BF16
requires ``split_k=1``; FP32 is required when ``split_k>1``. Packed INT4 is
rejected because reduction partitions cannot independently derive one shared
quantization scale. Dense APIs apply the same split-K guard.

Kernel fidelity is tested against the representation-matched output quantizer:
packed codes and BF16 scales must match exactly and dequantized values must pass
``rtol=atol=1e-3``. This is distinct from comparing lossy four-bit values to an
unquantized BF16 activation, which is not generally an elementwise-1e-3
contract.

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

Fused Attention Contract
~~~~~~~~~~~~~~~~~~~~~~~~

``int4_scaled_dot_product_attention(...)`` uses logical tensor order
``(B, H, sequence, feature)`` and returns ``[B, Hq, Lq, Dv]``. Q and K must
both be BF16 or both be packed ``uint8``; V may independently be BF16 or
packed ``uint8``. All three operands must be contiguous and share one CUDA/HIP
device.

.. list-table:: Attention representations
   :header-rows: 1

   * - Operand
     - BF16 shape
     - Packed INT4 shape
     - BF16 scale shape
   * - Q
     - ``[B,Hq,Lq,D]``
     - ``[B,Hq,Lq,ceil(D/16)*8]``
     - ``[B,Hq,Lq]``
   * - K
     - ``[B,Hkv,Lk,D]``
     - ``[B,Hkv,Lk,ceil(D/16)*8]``
     - ``[B,Hkv,Lk]``
   * - V
     - ``[B,Hkv,Lk,Dv]``
     - ``[B,Hkv,ceil(Lk/16)*8,Dv]``
     - ``[B,Hkv,ceil(Lk/16),Dv]``

``quantize_attention_qk_int4(...)`` pads the logical head dimension to a
multiple of 16, packs two signed values per byte, and returns
``(packed, scale, original_head_dim)``. Pass that original dimension as
``head_dim``. ``quantize_attention_value_int4(...)`` uses exactly 16-token
groups, pads the sequence dimension, and returns ``(packed, scale)``.
Packed V is unpacked and dequantized per tile to BF16 inside the fused kernel.
Online-softmax probabilities are kept in BF16 and P@V uses BF16 MMA with an
FP32 accumulator; probabilities are never quantized to INT4. Consequently,
the packed-V option reduces input storage/bandwidth but is not an INT4 P@V
arithmetic contract.

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
   out = int4_scaled_dot_product_attention(
       q4,
       k4,
       v4,
       query_scale=q_scale,
       key_scale=k_scale,
       value_scale=v_scale,
       head_dim=head_dim,
       output_dtype=torch.float32,
   )

The default softmax scale is ``1 / sqrt(head_dim)``; an explicit scale must be
finite and positive. Output defaults to BF16 and can be FP32. A supplied
``out`` must be contiguous and exactly match device, dtype, and
``[B,Hq,Lq,Dv]``. Empty Q or K sequences produce zeros and do not accept a
workspace. The optimized path supports feature dimensions through 256,
requires ``dropout_p=0``, and rejects tensors with ``requires_grad=True``.

Explicit backward takes the exact saved forward ``output`` and a contiguous
BF16 or FP32 ``grad_output`` with shape ``[B,Hq,Lq,Dv]``. It returns dQ, dK,
and dV for the logical dequantized operands, irrespective of whether their
forward storage was BF16 or packed INT4. The optimized path always writes FP32
gradients; BF16 gradients are available only from the reference path because
one BF16 ULP can exceed the required absolute ``1e-3`` numerical bound.

.. code-block:: python

   from amd_strix_halo_kernels import int4_scaled_dot_product_attention_backward

   grad_query, grad_key, grad_value = int4_scaled_dot_product_attention_backward(
       q4,
       k4,
       v4,
       out,
       grad_output,
       query_scale=q_scale,
       key_scale=k_scale,
       value_scale=v_scale,
       head_dim=head_dim,
       enable_gqa=True,
   )

The dQ phase is query-owned and the combined dK/dV phase is key-owned. The
GQA reduction loops over the query heads belonging to each KV head, so the
optimized kernels do not use gradient atomics. Empty query or key sequences
return zero gradients.

When ``Hq != Hkv``, set ``enable_gqa=True`` and ensure ``Hq`` is divisible by
``Hkv``. ``attn_mask`` accepts broadcastable boolean, BF16, or FP32 tensors
with at most four dimensions; boolean false entries are masked and floating
values are added to the logits. An explicit mask and ``is_causal=True`` are
mutually exclusive. ``window_size=w`` selects the inclusive window ``(w,w)``;
``(left,right)`` selects an asymmetric non-negative window. Local and causal
bounds prune whole key blocks. ``query_position_offset`` supplies the absolute
position of local query row zero for cached decode.

Split decode is available only for ``Lq=1``. A configuration with
``decode_splits > 1`` uses a contiguous FP32 workspace with exact shape
``[B,Hq,decode_splits,Dv+2]``. The API allocates it outside capture, but
CUDAGraph capture requires callers to preallocate both that workspace and
``out`` and to warm the exact launch first. Workspace is rejected when
``decode_splits=1``.

Default tiles are mode- and length-sensitive. BF16-V attention generally uses
``BN64``; local BF16-Q/K uses ``BN32`` below 1,024 queries and ``BN64`` at
1,024 or more. Packed-V attention uses ``BN16`` so each tile reuses one
16-token V-scale vector. Its query tile is ``BM16`` below 64 queries, ``BM32``
for mid-length BF16 Q/K, and ``BM64`` for long or INT4-Q/K workloads. Larger
explicit power-of-two ``block_n`` values remain supported and numerically
tested across multiple V-scale groups, but are omitted from the default
packed-V tuner catalog because they measured slower.

``autotune_attention(...)`` benchmarks the caller's actual packed/BF16
operands and exact GQA, mask, causal, local-window, cached-position, and output
dtype semantics. Each candidate is first validated with FP32 output against
``reference_scaled_dot_product_attention(...)`` and then the timed BF16 or
FP32 output is validated against the correspondingly rounded oracle. Both
checks default to and may not be relaxed beyond ``rtol=atol=1e-3``.

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
   config = tuning.best_config

The default candidate catalog is available separately as
``default_attention_candidates(pv_int4=..., decode=...)``. Duplicate explicit
candidates are removed while preserving order. Failed candidates remain in
``result.records`` when ``continue_on_error=True``; tuning fails if none pass.
The packed-V catalog contains six prefill/training candidates and ten decode
candidates, all with ``BN16``; callers may supply a different explicit list.
Timing uses prepacked inputs and preallocated outputs/workspaces, excluding
quantization and allocation. Run the eager tuner before CUDAGraph capture,
then pass ``best_config`` and the required static output/workspace to the
attention call. A benchmark database is append-only tuning evidence; attention
dispatch does not silently read it or change configurations during replay.

``autotune_attention_backward(...)`` applies the same execution model to the
explicit gradient API. It validates dQ, dK, and dV separately against
``reference_scaled_dot_product_attention_backward(...)`` before timing a
candidate. ``default_attention_backward_candidates(windowed=...)`` exposes
the default full/local candidate sets. Timings exclude allocations by reusing
preallocated gradients, LSE, and delta buffers. The tolerance defaults to
``rtol=atol=1e-3`` and cannot be relaxed; tuning is forbidden during graph
capture.

For CUDAGraph replay, callers must preallocate FP32 ``grad_query``,
``grad_key``, ``grad_value``, ``lse``, and ``delta``. The state buffers use
shape ``[B,Hq,Lq]``. Warm the exact forward/backward representations, pointer
dtypes, mask form, and configuration before capture. Mutating operand, scale,
mask, saved-output, or upstream-gradient contents between replays is observed
without changing their storage addresses.

``reference_scaled_dot_product_attention(...)`` is the quantization-matched
FP32 arithmetic oracle. Optimized outputs in all four representation modes are
tested against it at ``rtol=atol=1e-3`` with FP32 output. For comparison with
unquantized PyTorch attention, INT4 Q/K plus BF16 V has measured relative L2
at most 0.03 and cosine at least 0.999. INT4 V modes are experimental and use
the measured quality envelope of relative L2 at most 0.12 and cosine at least
0.99 across dense, ragged, causal, local, and GQA cases. A strict elementwise
``1e-3`` comparison to unquantized BF16 does not measure the intended
quantization contract; the optimized result is instead required to match the
representation-matched oracle at ``rtol=atol=1e-3``. BF16 output may also
differ by one BF16 ULP at larger magnitudes.

The wheel includes 532 forward objects, four split-decode reducers, and 256
backward objects for ``D=Dv=64``. ``use_precompiled=None`` selects an exact
measured profile first,
then generic native coverage, and finally JIT; ``True`` requires packaged
coverage, and ``False`` forces JIT. Native coverage includes all four QK-by-V
representation modes, no/bool/BF16/FP32 mask pointers, BF16/FP32 output, and
the measured/default launch configs. The 112 generic forward objects keep
batch/head/sequence shapes and semantics runtime. The 420 forward profile objects
specialize heads, lengths, and full/causal/local control flow for measured
512-prefill, 2048-training, and 1-by-2048 decode shapes. Backward has 128 dQ
and 128 dK/dV objects: half generic and half specialized for the 2048-token
GQA training profile. Both phases cover BF16/FP32 saved output crossed with
BF16/FP32 ``grad_output`` so the native pointer ABI is dtype-exact. Only
regeneration and uncovered fallbacks require the custom Strix Halo Triton
fork.

Precompiled attention fixes ``D=Dv=64`` but does not otherwise require one
batch/head/length shape: the generic objects keep ``B``, ``Hq``, ``Hkv``,
``Lq``, and ``Lk`` runtime, subject to the ordinary GQA and input validation
rules and the packaged launch-config set. Exact forward profiles additionally
specialize ``(Hq,Hkv,Lq,Lk)`` as ``(8,8,512,512)``,
``(16,8,2048,2048)``, or ``(8,8,1,2048)``. Backward has generic runtime-shape
objects and an exact ``(16,8,2048,2048)`` profile. Batch remains runtime even
for those exact head/length profiles.

Kimi Delta Attention Contract
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``kimi_delta_attention(query, key, value, log_decay, beta)`` consumes Q/K in
``[B,T,H,D]`` order, V in ``[B,T,H,Dv]``, log decay in ``[B,T,H,D]``, and beta
in ``[B,T,H]``. Log decay and beta are already activated: callers pass
non-positive log decay and the post-sigmoid update coefficient. Q/K are
L2-normalized inside the operation by default. The recurrence is evaluated
with an FP32 state and returns ``[B,T,H,Dv]``; output defaults to BF16 and may
be FP32. Requested final state is always FP32 with shape ``[B,H,D,Dv]``.

Q/K must both be contiguous BF16 or both use the packed ``uint8`` result of
``quantize_kda_int4(...)``. V is selected independently and may use either
representation. Packed width is ``ceil(logical_dim / 16) * 8`` and each
operand has one contiguous BF16 scale per ``[B,T,H]`` row. ``head_dim`` is
required for packed Q/K and ``value_dim`` for packed V. Logical dimensions are
limited to 256.

``kimi_delta_attention_backward(...)`` is explicit and returns
``(dQ, dK, dV, dLogDecay, dBeta, dInitialState)``. Optimized gradients are
FP32. For packed operands, dQ/dK/dV refer to the logical dequantized values;
integer codes and scales are fixed representation metadata. An optional
``grad_final_state`` participates in the reverse recurrence.
The optimized APIs reject tensors with ``requires_grad=True`` so an omitted
explicit backward call cannot silently produce an incomplete autograd graph.

Both explicit APIs accept ``backend="triton"`` or ``backend="gluon"``.
Triton is the compatibility default. Gluon JIT requires the pinned Strix Halo
fork; packaged Gluon does not. Both use explicit gfx1151 vector/state layouts plus RDNA
buffer operations. With ``backend="gluon"``, ``use_precompiled=None``
automatically selects an installed compatible artifact, ``True`` requires packaged
coverage, and ``False`` forces Gluon JIT. ``use_precompiled=True`` is invalid
with the Triton or reference backends. Chunked compact-WY execution is
Triton-only.

The packaged profile keeps positive ``B``/``H`` and ``1 <= T <= 2048``
runtime, and specializes
``D=Dv=128,value_block=64,checkpoint_interval=4``, normalized Q/K, BF16 output
and upstream gradient, FP32 ``log_decay``/``beta``, and no initial/final-state
path. Artifact names retain the ``B=4,T=2048,H=32`` generation shape for
provenance; it is not a runtime-shape requirement. The 14 objects cover four forward BF16/INT4 QK-by-V
representations with and without checkpoint-cache writes plus BF16/INT4
variants of each backward preprocess, recurrent, and normalization phase.
Uncovered shapes or options fall back only when ``use_precompiled`` is not
``True``.

gfx1151 is RDNA 3.5 and its buffer descriptors use a 32-bit byte offset. The
runtime gate verifies ordinary tensor spans and, when a checkpoint cache is
used, verifies both halves of the compile-time 127-batch-head cache split. At
``T=2048`` the current two-descriptor ABI supports at most 254 batch-heads for
training/cache writes; shorter sequences can support more. Forward without a
cache does not pay that cache-specific limit. ``T>2048`` requires a separate
cache-split generation profile rather than reusing this object unsafely.

Backward reconstructs token states from an FP32 checkpoint cache. Smaller
``checkpoint_interval`` values trade memory for less replay work. At the
measured ``B=4,T=2048,H=32,D=Dv=128`` training shape,
``checkpoint_interval=4`` and ``value_block=64`` are the measured Gluon
settings. Gluon automatically uses two forward waves with a 64-wide value
tile and four backward waves with a 64-wide value tile at ``Dv=128``. The
``backward_value_block``, ``num_warps``, and ``num_stages`` fields remain
Triton tuning controls and do not override Gluon's measured internal layouts.
A state cache uses shape
``[B,H,ceil(T/checkpoint_interval)+1,D,Dv]``. If it is omitted outside graph
capture, backward allocates and populates it automatically.

.. code-block:: python

   from amd_strix_halo_kernels import (
       KimiDeltaAttentionConfig,
       kimi_delta_attention,
       kimi_delta_attention_backward,
       quantize_kda_int4,
   )

   q4, q_scale, head_dim = quantize_kda_int4(query)
   k4, k_scale, _ = quantize_kda_int4(key)
   output, _ = kimi_delta_attention(
       q4,
       k4,
       value,
       log_decay,
       beta,
       query_scale=q_scale,
       key_scale=k_scale,
       head_dim=head_dim,
       config=KimiDeltaAttentionConfig(
           value_block=64,
           checkpoint_interval=4,
       ),
       backend="gluon",
       use_precompiled=True,
   )
   grads = kimi_delta_attention_backward(
       q4,
       k4,
       value,
       log_decay,
       beta,
       grad_output,
       query_scale=q_scale,
       key_scale=k_scale,
       head_dim=head_dim,
       config=KimiDeltaAttentionConfig(
           value_block=64,
           checkpoint_interval=4,
       ),
       backend="gluon",
       use_precompiled=True,
   )

For CUDAGraph capture, preallocate ``out`` and any requested ``final_state``
or ``state_cache``. Backward additionally requires the cache, every applicable
gradient output, and FP32 ``grad_query_normalized`` and
``grad_key_normalized`` scratch tensors. Captured tests cover all four
BF16/INT4 QK-by-V modes. Output and scratch buffers may not alias inputs or one
another. The target checkpoint cache is 4.008 GiB, which exceeds one RDNA
buffer descriptor's 32-bit byte-offset range. Gluon transparently divides it
between two descriptors in one recurrent launch; this paging also applies
during capture and replay.

``use_reference=True`` and the two ``reference_kimi_delta_attention*``
functions provide the independent FP32 oracle. Tests cover dense/tail
sequences, zero-norm Q/K, initial/final state, all representation modes, and
graph replay. Optimized forward, final state, and all gradient tensors are
required to match the representation-matched oracle at
``rtol=atol=1e-3``. The measured worst oracle errors are ``8.95e-8``
forward, ``2.39e-7`` final state, and ``1.43e-6`` backward. On the full target
shape, Gluon and Triton differ by at most ``2.45e-4`` forward and ``1.79e-7``
backward. Backward materializes normalized logical Q/K once into the
caller-provided dQ/dK
buffers before the recurrent pass, then overwrites those buffers with final
gradients in the normalization epilogue. This reuse adds no graph-time
allocation. Cross-value-tile FP32 reductions use relaxed atomics because no
ordering relationship exists between independent partial sums.

``KimiDeltaAttentionConfig.chunked=True`` exposes a compact-WY research path
for compiler experiments. It currently requires BF16 V, BF16 output, and a
checkpoint interval of 16, plus FP32 ``w_workspace`` and ``u_workspace`` for
allocation-free capture. It measured slower than the recurrent kernel on
gfx1151, is available only with ``backend="triton"``, and is therefore not the
default.

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

.. autofunction:: amd_strix_halo_kernels.int4_scaled_dot_product_attention

.. autofunction:: amd_strix_halo_kernels.int4_scaled_dot_product_attention_backward

.. autofunction:: amd_strix_halo_kernels.kimi_delta_attention

.. autofunction:: amd_strix_halo_kernels.kimi_delta_attention_backward

.. autofunction:: amd_strix_halo_kernels.reference_kimi_delta_attention

.. autofunction:: amd_strix_halo_kernels.reference_kimi_delta_attention_backward

.. autofunction:: amd_strix_halo_kernels.quantize_kda_int4

.. autofunction:: amd_strix_halo_kernels.reference_scaled_dot_product_attention

.. autofunction:: amd_strix_halo_kernels.reference_scaled_dot_product_attention_backward

.. autofunction:: amd_strix_halo_kernels.quantize_attention_qk_int4

.. autofunction:: amd_strix_halo_kernels.quantize_attention_value_int4

.. autofunction:: amd_strix_halo_kernels.quantize_int4_output

.. autofunction:: amd_strix_halo_kernels.dequantize_int4_output

.. autoclass:: amd_strix_halo_kernels.QuantizedInt4Tensor
   :members:

.. autoclass:: amd_strix_halo_kernels.Int4AttentionConfig
   :members:

.. autoclass:: amd_strix_halo_kernels.Int4AttentionBackwardConfig
   :members:

.. autoclass:: amd_strix_halo_kernels.KimiDeltaAttentionConfig
   :members:

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

.. autofunction:: amd_strix_halo_kernels.autotune_attention

.. autofunction:: amd_strix_halo_kernels.autotune_attention_backward

.. autofunction:: amd_strix_halo_kernels.autotune_ragged_dot

.. autofunction:: amd_strix_halo_kernels.default_attention_candidates

.. autofunction:: amd_strix_halo_kernels.default_attention_backward_candidates

.. autofunction:: amd_strix_halo_kernels.default_ragged_dot_candidates

.. autofunction:: amd_strix_halo_kernels.find_autotune_candidates

.. autoclass:: amd_strix_halo_kernels.AutotuneResult
   :members:

.. autoclass:: amd_strix_halo_kernels.AttentionAutotuneResult
   :members:

.. autoclass:: amd_strix_halo_kernels.AttentionBackwardAutotuneResult
   :members:

.. autoclass:: amd_strix_halo_kernels.AttentionShape
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

.. autoclass:: amd_strix_halo_kernels.OutputDType
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

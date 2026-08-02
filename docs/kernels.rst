Kernels and Launch Contract
===========================

Generated Matrix
----------------

The checked-in native matrix contains 4,156 artifacts: 3,062 dense generated
kernels, 302 ragged generated artifacts, and 792 fused-attention artifacts:

* dense dtypes: ``int4 x int4`` and ``int8 x int8``;
* packaged native layouts: ``NN``, ``NT``, and ``TN``;
* scales: BF16 per-channel plus BF16 subchannel scales ``32``, ``64``,
  ``128``, and ``256``;
* epilogues: plain scaled GEMM, ReLU^2, and fused SwiGLU up/gate;
* schedules: standard plus an opt-in persistent schedule for plain int4 GEMM;
* split-K: ``1``, ``2``, ``4``, and ``8`` for plain GEMM.

The dense total adds 180 split-K-1 packed-INT4 output variants to the prior
2,882 objects. They cover INT4 and INT8 inputs, all three generated layouts,
all five input scale modes, even/masked K, and plain/ReLU2/SwiGLU epilogues.
The output is packed uint8 with BF16 subchannel-256 scales and uses BN256.

The two entries beyond the 2,880 combinatorial dense matrix are exact
subchannel-256 TN/BF16-output projection-gradient artifacts tuned for the
``K=14336`` token reduction: ``BM16_BN512_BK32_GM4`` for output size
``3072x1024`` and ``BM64_BN512_BK32_GM4`` for ``1024x1024``.
Assembly inspection confirms signed-IU4 WMMA lowering with no private segment
or flat scratch. The two kernels use 90/185 VGPRs and request 8,448/9,216
bytes of dynamic shared memory respectively; the higher-register BM64 result
is retained because it is the measured winner for the smaller output matrix.

The ragged matrix covers forward and backward modes, ``NN``/``NT``/``TN``/
``TT`` layouts, BF16 per-channel plus BF16 subchannel scales ``32``, ``64``,
``128``, and ``256``, and both ``evenk`` and ``maskk`` variants.
``RaggedDotConfig()`` and ``RaggedBwdDotConfig()`` are the packaged tile
source of truth. The packaged forward config is
``BM64_BN256_BK64_GST1_W8_S3``. It has 40 BF16 variants and 120 packed-INT4
variants covering plain/ReLU2/SwiGLU output. The packaged backward config
is selected per layout, scale, K variant, and output dtype. The matrix contains
40 forward BF16 artifacts and 140 standard backward artifacts: 40 generic
FP32, 80 generic BF16 paired/scalar-store, and 20 exact 4096-capacity BF16
wide-store NN/TN artifacts. Two additional specialized
``bwd_accum`` artifacts cover TN, per-channel scaling, and even K with
``BM32_BN128_BK64_W4_S2_SK1``. Both accumulate in FP32 registers; one stores
FP32 and the other stores BF16. The full ragged total is therefore 302.

BF16×INT4 metadata is development-only. None of its 1,170 registry entries is
included in the checked-in native matrix or packaged wheel.

The native registry includes both ``evenk`` and ``maskk`` artifact labels for
regeneration/debugging history. Public dense selection, ``mm(...)``, and
``autotune(...)`` select ``evenk`` tile-multiple artifacts for the native fast
path.

The dense tile-size families generated for each native layout are:

.. list-table::
   :header-rows: 1

   * - Family
     - Scale
     - Epilogue
     - ``BLOCK_M``
     - ``BLOCK_N``
     - ``BLOCK_K``
     - ``SPLIT_K``
   * - int4 standard
     - per-channel
     - plain GEMM
     - ``16, 32, 64``
     - ``128, 512`` for split 1; ``128, 256`` for split 2/4/8
     - ``32``
     - ``1, 2, 4, 8``
   * - int4 persistent
     - per-channel
     - plain GEMM
     - ``16, 32, 64``
     - ``128, 512`` for split 1; ``128, 256`` for split 2/4/8
     - ``32``
     - ``1, 2, 4, 8``
   * - int4 standard
     - subchannel ``32/64/128/256``
     - plain GEMM
     - ``16, 32, 64``
     - ``128``
     - ``128``
     - ``1, 2, 4, 8``
   * - int4 persistent
     - subchannel ``32/64/128/256``
     - plain GEMM
     - ``16, 32, 64``
     - ``128``
     - ``128``
     - ``1, 2, 4, 8``
   * - int4 standard
     - per-channel
     - ReLU^2
     - ``16, 32, 64``
     - ``128, 512``
     - ``32``
     - ``1``
   * - int4 standard
     - subchannel ``32/64/128/256``
     - ReLU^2
     - ``16, 32, 64``
     - ``128``
     - ``128``
     - ``1``
   * - int4 standard
     - per-channel
     - fused SwiGLU up/gate
     - ``16, 32, 128``
     - ``128, 256``
     - ``32``
     - ``1``
   * - int4 standard
     - subchannel ``32/64/128/256``
     - fused SwiGLU up/gate
     - ``16, 32, 64``
     - ``128``
     - ``128``
     - ``1``
   * - int8 standard
     - per-channel or subchannel ``32/64/128/256``
     - plain GEMM
     - ``16, 32, 64``
     - ``128, 256``
     - ``64``
     - ``1, 2, 4, 8``
   * - int8 standard
     - per-channel or subchannel ``32/64/128/256``
     - ReLU^2
     - ``16, 32, 64``
     - ``128, 256``
     - ``64``
     - ``1``
   * - int8 standard
     - per-channel or subchannel ``32/64/128/256``
     - fused SwiGLU up/gate
     - ``16, 32, 64``
     - ``128`` with ``BK64``; ``256`` with ``BK32``
     - ``32`` or ``64``
     - ``1``

Ragged artifact families are generated separately from the dense registry:

.. list-table::
   :header-rows: 1

   * - Mode
     - Layouts
     - Scales
     - Config
     - Variants
     - Output
   * - forward M-ragged
     - ``NN``, ``NT``, ``TN``, ``TT``
     - per-channel, subchannel ``32/64/128/256``
     - ``BM64_BN256_BK64_GST1_W8_S3``
     - ``evenk``, ``maskk``
     - BF16
   * - backward K-ragged
     - ``NN``, ``NT``, ``TN``, ``TT``
     - per-channel, subchannel ``32/64/128/256``
     - measured per layout/scale/variant/output key
     - ``evenk``, ``maskk``
     - generic FP32; generic BF16 paired/scalar
   * - backward exact wide-store
     - ``NN``, ``TN``
     - per-channel, subchannel ``32/64/128/256``
     - measured BF16 ``split_k=1`` config
     - ``evenk``, ``maskk``
     - BF16, exact ``M=N=k_capacity=4096``
   * - backward task accumulation
     - ``TN``
     - per-channel
     - ``BM32_BN128_BK64_W4_S2_SK1``
     - ``evenk``
     - FP32, BF16

Fused Attention Native and JIT
------------------------------

Fused attention is a separate 792-artifact native family at ``D=Dv=64``:
532 forward objects, four split-decode reducers, 128 dQ objects, and 128
combined dK/dV objects. The forward matrix contains 112 generic
runtime-shape/runtime-semantics objects plus 420 objects specialized for the
measured 512-prefill, 2048-training, and 1-by-2048 decode profiles. It
crosses the measured/default configs for BF16/BF16, INT4/BF16, BF16/INT4, and
INT4/INT4 QK-by-V storage with no mask or bool/BF16/FP32 mask pointers and
BF16/FP32 output. Exact profiles specialize heads, query/key lengths, and
full/causal/local control flow; cached-position and mask strides remain runtime
arguments. Other dimensions and launch configs use generic native objects or
fall back to Triton JIT.

The kernel supports four Q/K-by-V representation modes. BF16 Q/K uses BF16
WMMA for the score product. Packed signed-INT4 Q/K uses ``iu4`` scaled-dot
MMA. P@V always uses BF16 WMMA. BF16 V is loaded directly; packed signed-INT4
V is unpacked and dequantized inside each key tile using its per-16-token BF16
scale. Online-softmax probabilities remain BF16, so there is no online
probability quantization or signed-affine correction. “INT4 V” therefore
describes storage and memory traffic, not the P@V MMA input dtype. The P@V
accumulator remains FP32.

This corrected arithmetic reduced packed-V prefill latency by 17.4% with BF16
Q/K and 33.9% with INT4 Q/K relative to the preceding online-P-quantized
implementation. Mode-specific prefill tile tuning contributed about 38--42%
in BF16-PV modes.

``Int4AttentionConfig`` controls ``block_m``, ``block_n``, warps, stages, and
decode splits. Packed V defaults and autotune candidates use ``BN16`` so one
tile shares one V-scale vector; larger explicit power-of-two key tiles remain
correct but measured slower because they add scale loads and register
pressure. BF16 V generally uses ``BN64``. Packed-V query tiles use ``BM16``
for fewer than 64 queries, ``BM32`` for mid-length BF16 Q/K, and ``BM64`` for
long or INT4-Q/K workloads. Local and causal bounds prune whole key blocks
before per-element masking.

Split decode partitions the key sequence only when ``Lq=1`` and reduces an
FP32 workspace of shape ``[B,Hq,decode_splits,Dv+2]``. In the measured decode
cases it was about 2--3x faster than split-one execution, including about 73%
lower all-INT4 latency. During CUDAGraph capture, callers must preallocate the
workspace and output; allocation is permitted only outside capture. All four
representation modes are covered in ordinary and graph replay tests, with a
second graph matrix covering split decode.

Backward is an explicit two-phase launch: a query-owned dQ kernel followed by
a key-owned combined dK/dV kernel. It uses no gradient atomics and returns
logical FP32 gradients for every BF16/INT4 storage combination. Each phase has
64 generic objects and 64 exact 2048-token GQA objects, specialized across
full/causal/local semantics and every BF16/FP32 saved-output by BF16/FP32
upstream-gradient dtype pair. The public attention APIs intentionally do not
register implicit autograd; call the explicit backward API with the saved
forward output.

The optimized paths require contiguous CUDA/HIP operands, use
``dropout_p=0``, and support logical head and value dimensions through 256.
Q/K head packing and V sequence packing are padded to multiples of 16; scale
and logical-length validation prevents padding from contributing to the
result. Packaged configs launch without Triton; regeneration and uncovered
JIT fallbacks require the custom Strix Halo Triton fork.
``use_precompiled=None`` selects native coverage automatically, ``True``
requires it, and ``False`` forces JIT.

Kimi Delta Attention JIT
------------------------

KDA is currently a Triton-JIT family rather than part of the packaged HSACO
matrix. The default forward launch assigns one program to a batch/head/value
tile and scans tokens while retaining its FP32 ``D x value_block`` state tile.
The measured default uses a 64-wide value tile and two-stage ``tl.range`` load
pipelining. Q/K L2 normalization, log-decay application, the delta-rule
residual, and the output projection are fused into that scan. BF16 and
row-scaled packed INT4 Q/K are selected at compile time; BF16 and packed INT4
V are independently selected. Packed operands are unpacked and scaled in
registers.

Backward uses an independent 16-wide value tile, scans tokens in reverse, and
reconstructs ``S_(t-1)`` from FP32 chunk-boundary checkpoints. A preprocessing
kernel materializes logical normalized Q/K once into the eventual dQ/dK output
buffers, avoiding repeated dequantization and normalization across value tiles
and checkpoint replay. dV and optional dInitialState stores have one owner.
Partial dQ, dK, dLogDecay, and dBeta use relaxed FP32 atomic reductions across
value tiles; a final kernel applies the exact L2-normalization derivative and
overwrites the temporary Q/K buffers with dQ/dK. Checkpoint interval and the
independent forward/backward value tiles expose the memory/recompute/occupancy
tradeoff through ``KimiDeltaAttentionConfig``.

The compact-WY research path prepares 16-token W/U factors and evaluates the
chunk recurrence with IEEE FP32 dot products. It remains opt-in because its
per-dimension exponential preparation is slower than the recurrent mapping on
gfx1151. No KDA objects are counted in the packaged native artifact totals.

Shape Contract
--------------

Generated artifacts are runtime-shape launchable. ``M``, ``N``, and ``K`` are
kernel arguments; the metadata ``generation_shape`` is the representative shape
used to compile and preserve IR.

The 162 generic ragged artifacts keep M, N, packed K, and scale-column values
runtime; forward artifacts do the same for compact task count. The other 20
standard-backward BF16 artifacts are shape-specialized to
``M=N=k_capacity=4096`` for wide output stores. Row and column predicates cover
generic edge tiles. Even-K removes K masks at compile time; masked-K executes
full blocks unmasked and masks only the final partial block and odd nibble.

This generic contract applies to generated/package-native ragged artifacts.
The public forward JIT/fallback path uses Triton's normal value and alignment
specialization to recover aligned-shape throughput, and can compile a new
variant when runtime dimensions change. Ragged autotuning explicitly forces
that JIT path with ``use_native=False``.

Standard backward BF16 output is available only with ``split_k=1`` and rounds
the FP32 register accumulator once at the epilogue. Generic native dispatch
uses paired stores for even, 4-byte-aligned N and scalar stores otherwise.
Eligible exact 4096-capacity NN/TN outputs use 16-byte-aligned wide stores.
Automatic generic BF16 dispatch prefers shape-specialized JIT; explicit
``use_native=True`` permits the generic native artifacts. Explicit FP32 is
supported at ``split_k=1`` and remains mandatory for ``split_k>1``, where
partial tiles are reduced with FP32 atomics.

The native fast path is tile-specialized. Runtime logical shapes must satisfy
the tile values of the selected ``KernelMetadata``:

* ``M % BLOCK_M == 0``
* ``N % BLOCK_N == 0``
* ``K % (BLOCK_K * SPLIT_K) == 0``
* for subchannel scales, ``K % SUBCHANNEL == 0``

Generated templates assume this contract and omit M/N edge-tile masks. They
also rely on the K divisibility above for the fast path. For example:

* ``BM64_BN512_BK32_SK1`` accepts ``M=128, N=1024, K=64``;
* the same tile rejects ``M=96`` with
  ``M=96 is not divisible by BLOCK_M=64``;
* ``BM64_BN256_BK32_SK4`` requires ``K % 128 == 0`` because
  ``BLOCK_K * SPLIT_K`` is ``32 * 4``.

The exact native error begins with ``<kernel_id> requires tile-multiple
shape:`` and then lists each failed divisibility check. If no registry entry
matches the logical request and shape, ``mm(...)`` and ``autotune(...)`` raise
``LookupError``.

Use ``use_reference=True`` for arbitrary-shape numerical checks. Reference mode
uses torch operations, does not launch packaged HSACO, and should not be timed
as a kernel-performance path.

The task-accumulating backward artifact has a narrower contract. Operands are
contiguous ``lhs[T, 32, M]`` and ``rhs[T, 32, N]`` packed-int4 tensors with
BF16 scales ``[T, M]`` and ``[T, N]``. All tensors must share one CUDA/HIP
device. Each int32 or int64 ``expert_task_ranges[e] = [start, end)`` must
satisfy ``0 <= start <= end <= T``; the API converts int64 ranges to int32 to
match the native artifact ABI before dispatch. The output defaults to FP32;
BF16 output rounds once at the final store after the task range is accumulated.

Layouts
-------

Packaged dense native dispatch supports ``NN``, ``NT``, and ``TN``.
``GemmLayout.TT`` exists as a metadata value, but dense packaged native
dispatch is generated only for ``NN``, ``NT``, and ``TN``. Ragged packaged
HSACO and JIT fallback paths support ``NN``, ``NT``, ``TN``, and ``TT``.

.. list-table::
   :header-rows: 1

   * - Layout
     - Logical A
     - Logical B
     - Output
   * - ``NN``
     - ``(M, K)``
     - ``(K, N)``
     - ``(M, N)``
   * - ``NT``
     - ``(M, K)``
     - ``(N, K)``
     - ``(M, N)``
   * - ``TN``
     - ``(K, M)``
     - ``(K, N)``
     - ``(M, N)``
   * - ``TT``
     - ``(K, M)``
     - ``(N, K)``
     - ragged packaged/JIT only

Packed int4 operands halve the logical K dimension:

.. list-table::
   :header-rows: 1

   * - Layout
     - Packed A
     - Packed B
   * - ``NN``
     - ``(M, K / 2)``
     - ``(K / 2, N)``
   * - ``NT``
     - ``(M, K / 2)``
     - ``(N, K / 2)``
   * - ``TN``
     - ``(K / 2, M)``
     - ``(K / 2, N)``
   * - ``TT``
     - ``(K / 2, M)``
     - ``(N, K / 2)``

Scales and Outputs
------------------

Scale tensors are BF16:

.. list-table::
   :header-rows: 1

   * - Scale mode
     - ``a_scale``
     - ``b_scale``
   * - per-channel
     - ``(M,)``
     - ``(N,)`` or ``(2 * D,)`` for SwiGLU
   * - subchannel ``S``
     - ``(M, K / S)``
     - ``(K / S, N)`` or ``(K / S, 2 * D)`` for SwiGLU

For subchannel kernels, RHS scales are intentionally weight-matched: the
K-group axis is outer and output columns are inner, so the kernel can load the
scale vector for an RHS tile contiguously. Logical producer layouts such as
``(N, K / S)`` must be converted with
``pack_rhs_subchannel_scales(...)`` before native dispatch or benchmarking.

Non-split kernels store BF16 or packed INT4 plus BF16 sc256 scales. Split-K
kernels store FP32 because partial tiles are reduced with FP32 atomics.

Int4 subchannel kernels use ``tl.dot_scaled`` for packed int4 MMA into i32,
then apply the BF16 LHS/RHS subchannel scales once per completed subchannel
partial. This preserves subchannel scaled-dot semantics without repeating the
same scale multiply for every BK partial.

Triton Fork
-----------

Regeneration requires the Strix Halo Triton branch:

https://github.com/SamGinzburg/triton/tree/amd-strix-halo

Installing and running a packaged wheel does not require Triton.

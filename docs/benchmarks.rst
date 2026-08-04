Benchmarks
==========

Timing Method
-------------

Large-shape timings use ``triton.testing.do_bench`` device timing with
prepacked operands, resident weights, BF16 scale tensors, and preallocated
outputs. TOPS is computed as:

.. math::

   \text{TOPS} = \frac{2MNK}{\text{seconds} \cdot 10^{12}}

For fused SwiGLU, the count doubles because the kernel computes both up and
gate projections.

Every checked-in benchmark payload records ``triton_git_revision``. The
current dense, ragged, attention, projection, and KDA files all identify
``28d04c3f9f23db9a7f9c80906d00667b53e7a7d7``.

Autotuning APIs
---------------

``autotune(...)`` is the dense packaged-kernel API. It filters the registry by
dtype, layout, scale mode, epilogue, schedule, and the selected tile's launch
contract:

* ``M % BLOCK_M == 0``;
* ``N % BLOCK_N == 0``;
* ``K % (BLOCK_K * SPLIT_K) == 0``;
* for subchannel scales, ``K % SUBCHANNEL == 0``.

It then benchmarks each launchable candidate with ``triton.testing.do_bench``.
``find_autotune_candidates(...)`` performs only the filtering step.

.. code-block:: python

   from amd_strix_halo_kernels import Epilogue, GemmLayout, OperandDType, ScaleMode, ScaleSpec, autotune

   result = autotune(
       m=4096,
       n=4096,
       k=4096,
       dtype=OperandDType.INT4,
       layout=GemmLayout.NN,
       scale=ScaleSpec(ScaleMode.PER_CHANNEL),
       epilogue=Epilogue.NONE,
       warmup_ms=25,
       rep_ms=100,
       validate=True,
       benchmark_db_path="benchmarks/local_autotune.json",
   )

``autotune_ragged_dot(...)`` is the ragged Triton-JIT timing API. In forward
mode, ``group_sizes`` partitions ``M`` rows. In backward mode,
``group_sizes`` partitions logical ``K`` and the synthetic benchmark pads
each group to ``k_capacity``. This API benchmarks ``RaggedDotConfig`` or
``RaggedBwdDotConfig`` candidates. The packaged ragged HSACO matrix is
generated from selected configs after tuning. Candidate launches explicitly
use ``use_native=False``, so results measure JIT rather than silently selecting
a packaged artifact. Forward JIT kernels specialize runtime shape values and
alignments; packaged artifacts deliberately retain generic runtime scalars.

``autotune_attention(...)`` is the fused-attention timing API. Unlike the
synthetic dense/ragged tuners, it accepts the caller's actual Q/K/V tensors and
scale tensors so the representation mode, shape, GQA, mask/window, cached
position, and requested output dtype all match the intended launch. The API
preallocates output and split-decode workspace per candidate, validates FP32
and timed output at ``rtol=atol=1e-3`` or stricter, and reports effective TOPS.

.. code-block:: python

   from amd_strix_halo_kernels import autotune_attention

   result = autotune_attention(
       query,
       key,
       value,
       enable_gqa=True,
       window_size=(127, 0),
       warmup_ms=25,
       rep_ms=100,
       benchmark_db_path="benchmarks/local_attention.json",
   )
   print(result.mode, result.best_config, result.best_record.runtime_ms)

The database appends successful and failed candidate records with the complete
logical attention shape, arithmetic mode, masking semantics, and launch
config. Successful records include timing distributions and numerical metrics;
failed records include the captured error. It is not an implicit runtime
dispatch cache: pass ``result.best_config`` to the attention API. Tuning must
run outside CUDAGraph capture. ``scripts/benchmark_attention.py`` uses this
public tuner and adds multi-case sweeps plus PyTorch SDPA baseline reporting.
Backend selection follows ``use_precompiled``: ``None`` uses packaged D64
coverage (preferring an exact measured workload profile) and JIT fallback,
``True`` restricts successful candidates to installed artifacts, and ``False``
forces JIT. On the current packaged BF16 512-prefill profile,
``BM64_BN64_W4_S1`` measured 0.033903 ms / 15.835 effective TOPS. FP32
validation maximum absolute error was ``6.06e-5`` at ``rtol=atol=1e-3``;
timed BF16 maximum absolute error was ``2.44e-4``.

Peak 4096^3 Results
-------------------

The rows are averages of two matched current-wheel runs. The artifact matrix
is now regenerated with Triton
``28d04c3f9f23db9a7f9c80906d00667b53e7a7d7``. This revision adds gfx1151
vectorization for unaligned INT8 buffer loads. Across all 302 ragged artifacts,
scalar ``buffer_load_ubyte`` instructions fell from 12,212 to 7,060, while
``buffer_load_b128`` rose from 54 to 374, ``buffer_load_b64`` from 8 to 84,
and ``buffer_load_b32`` from 5 to 25. Dense codegen moved only slightly;
attention and KDA aggregate load-width counts were unchanged. The measured
performance changes follow that distribution: ragged packed-output improves,
dense and KDA are flat, and attention varies by case.

.. list-table::
   :header-rows: 1

   * - Kernel
     - Scale
     - Tile
     - Runtime
     - TOPS
   * - int4 plain GEMM
     - per-channel
     - ``BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK``
     - 1.83 ms
     - 75.2
   * - int4 plain GEMM
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 2.14 ms
     - 64.2
   * - int4 ReLU^2
     - per-channel
     - ``BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK``
     - 1.83 ms
     - 75.0
   * - int4 ReLU^2
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 2.15 ms
     - 63.9
   * - int4 fused SwiGLU
     - per-channel
     - ``BM128_BN128_BK32_GM4_W16_S3_WEU2_SK1_EVENK``
     - 4.48 ms
     - 61.3
   * - int4 fused SwiGLU
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 5.34 ms
     - 51.5
   * - int8 plain GEMM
     - per-channel
     - ``BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK``
     - 5.34 ms
     - 25.7
   * - int8 plain GEMM
     - subchannel-256
     - ``BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK``
     - 5.58 ms
     - 24.6

In separate 4096³ per-channel plain-GEMM comparisons, standard prepacked INT4
reached about 77.1 TOPS, the opt-in persistent schedule reached 42.0 TOPS, and
BF16×INT4 with in-kernel activation quantization reached 9.26 TOPS. Standard
prepacked INT4 remains the recommended throughput path. The BF16×INT4 result
includes repeated A quantization per N tile and does not represent a shipped
mixed artifact.

Ragged Dot Results
------------------

The ragged-dot rows below are shape-specialized Triton-JIT tuning records for
the automatic generic-shape path, not separate native dispatch timings. The
full Triton ``28d04c3f`` sweep used 25 ms warmup and 100 ms repetition windows
and completed all 1,104 records with zero failures. Timings
use 8 RHS groups, prepacked operands, BF16 scales, preallocated outputs, and
exclude quantization/packing. The sweep covers 3 runtime shapes,
balanced/uneven group-size patterns, all four layouts,
per-channel/subchannel-256 scales, forward M-ragged dot, and backward K-ragged
split-K dot. The table selects maximum TOPS for each mode/layout/scale from the
4096x4096x4096 balanced rows.

For backward rows, benchmark K is total reduction work across groups. Physical
``k_capacity`` defaults to ``max(group_sizes)`` rounded up to even; odd explicit
capacities are rounded up as well. Thus the balanced 4096-work rows use eight
512-element groups with ``k_capacity=512``, not the exact 4096-capacity native
specialization.

A separate forward-NN experiment isolated runtime-shape specialization. The
specialized JIT path measured about 62.7 TOPS per-channel and 47.7 TOPS with
subchannel-256 scales, versus 41.5 and 36.1 TOPS for forced-generic JIT. These
are JIT comparisons; packaged native artifacts remain generic across block-1,
block, and block+1 runtime shapes.

.. list-table::
   :header-rows: 1

   * - Mode
     - Layout
     - Scale
     - Best config
     - Runtime
     - TOPS
   * - fwd
     - NN
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 2.014642 ms
     - 68.220
   * - fwd
     - NN
     - subchannel-256
     - ``BM32_BN128_BK64_GST1_W4_S3``
     - 2.351775 ms
     - 58.441
   * - fwd
     - NT
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 3.839608 ms
     - 35.795
   * - fwd
     - NT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 3.980373 ms
     - 34.529
   * - fwd
     - TN
     - per-channel
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 2.352417 ms
     - 58.425
   * - fwd
     - TN
     - subchannel-256
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 2.780420 ms
     - 49.431
   * - fwd
     - TT
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 4.604664 ms
     - 29.848
   * - fwd
     - TT
     - subchannel-256
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 4.433864 ms
     - 30.998
   * - bwd
     - NN
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 2.346164 ms
     - 58.580
   * - bwd
     - NN
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 2.560006 ms
     - 53.687
   * - bwd
     - NT
     - per-channel
     - ``BM128_BN64_BK64_W8_S3_SK1``
     - 2.247179 ms
     - 61.161
   * - bwd
     - NT
     - subchannel-256
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.447033 ms
     - 56.166
   * - bwd
     - TN
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 2.938316 ms
     - 46.775
   * - bwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 3.128874 ms
     - 43.926
   * - bwd
     - TT
     - per-channel
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.737259 ms
     - 50.210
   * - bwd
     - TT
     - subchannel-256
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.903531 ms
     - 47.335

Backward Output Precision and Scaling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The standard API still materializes ``G`` independent ``[M, N]`` planes, but
the default ``split_k=1`` path now stores BF16. At ``M=N=K=4096``, ``G=8``,
BF16 writes 268,435,456 bytes (8x one forward output), while an explicitly
requested FP32 result writes 536,870,912 bytes (16x). The earlier FP32
output-bandwidth analysis therefore applies only to explicit FP32 output and
must not be used as a lower bound for the BF16 implementation.

.. list-table:: NN/per-channel backward output comparison
   :header-rows: 1

   * - Output path
     - Best config
     - Runtime
     - TOPS
   * - Previous FP32 sweep
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - 3.834 ms
     - 35.8
   * - Preceding BF16 sweep
     - ``BM128_BN128_BK64_W8_S3_SK1``
     - 2.918216 ms
     - 47.096901
   * - Current BF16 complete sweep
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 2.346164 ms
     - 58.580

The current NN/per-channel result is 24.4% above the original preceding
BF16 row and 63.6% above the historical FP32 row. The TOPS numerator remains
``2*M*N*K``, rather than scaling with ``G``, because the group K extents sum
to the fixed total K.
Consumers that maintain FP32 master gradients should pass
``output_dtype=torch.float32`` or supply an FP32 ``out``; ``split_k>1`` always
requires FP32 for atomic accumulation.

Across all 1,104 matched old/new JIT records, median latency improved 2.91%:
39.75% for forward and 0.95% for backward. The selected backward winners are
all within 0.5% of the preceding sweep, while the much larger forward-record
median aligns with the new wide-load codegen.

Exact 4096-Capacity Native Specialization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The exact native case is deliberately separate from the table above: it pads
every group's physical capacity to 4096 rather than the balanced sweep's 512.
Wide-store specialization measured as follows:

.. list-table:: Exact ``M=N=k_capacity=4096`` native BF16 comparison
   :header-rows: 1

   * - Case
     - Generic native TOPS
     - Wide native TOPS
     - Gain
   * - NN per-channel
     - 43.3
     - 54.3
     - 25%
   * - NN subchannel-256
     - 37.1
     - 49.8
     - 34%
   * - TN per-channel
     - 34.0
     - 44.7
     - 31%
   * - TN subchannel-256
     - 30.7
     - 39.7
     - 29%

Automatic dispatch selects wide native only for eligible exact NN/TN launches
with 16-byte-aligned output. Generic BF16 shapes use shape-specialized JIT;
explicit ``use_native=True`` remains available for paired/scalar generic
artifacts.

The checked-in ragged benchmark records are timing records. Correctness for
per-channel, subchannel, balanced, uneven, and empty-group cases is covered by
``tests/test_ragged_dot.py`` against grouped Torch references.
Each record metadata entry also reports ``output_dtype``,
``uses_even_k_fast_path``, and ``masks_k`` so benchmark consumers can separate
BF16/FP32 output and aligned fast-path rows from fully masked ragged-K rows.

Fused Attention Results
-----------------------

``benchmarks/gfx1151_attention.json`` contains 156 automatic-dispatch tuning records,
12 selected winners, three PyTorch baselines, and zero failures. The sweep used
25 ms warmup and 100 ms repetition windows on gfx1151. Inputs were already
packed, outputs were preallocated, and quantization/packing was excluded from
the custom timings. PyTorch SDPA ran with
``TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1`` and its reported time includes
output allocation.

All cases use ``B=1``, ``Hq=Hkv=8``, and ``D=Dv=64``. Prefill is
``Lq=Lk=512``; decode is ``Lq=1``, ``Lk=2048`` with
``query_position_offset=2047``; local attention is ``Lq=Lk=512`` with
inclusive window ``(127,0)``. Effective TOPS is
``2*B*Hq*active_pairs*(D+Dv)/runtime``; local rows count only active pairs.

.. list-table:: Fused attention winners
   :header-rows: 1

   * - Q/K, V
     - Case
     - Best config
     - Runtime
     - TOPS
     - vs PyTorch
   * - BF16, BF16
     - prefill
     - ``BM64_BN64_W4_S1_DS1``
     - 0.033903 ms
     - 15.835
     - 1.66x
   * - BF16, BF16
     - decode
     - ``BM16_BN64_W8_S1_DS4``
     - 0.047168 ms
     - 0.0889
     - 3.11x
   * - BF16, BF16
     - local
     - ``BM64_BN32_W4_S1_DS1``
     - 0.024847 ms
     - 4.732
     - 3.60x
   * - INT4, BF16
     - prefill
     - ``BM64_BN64_W4_S1_DS1``
     - 0.027612 ms
     - 19.443
     - 2.04x
   * - INT4, BF16
     - decode
     - ``BM16_BN32_W4_S1_DS8``
     - 0.038352 ms
     - 0.1094
     - 3.83x
   * - INT4, BF16
     - local
     - ``BM64_BN64_W4_S1_DS1``
     - 0.020037 ms
     - 5.868
     - 4.47x
   * - BF16, INT4
     - prefill
     - ``BM32_BN16_W4_S1_DS1``
     - 0.056266 ms
     - 9.542
     - 1.00x
   * - BF16, INT4
     - decode
     - ``BM16_BN16_W8_S1_DS8``
     - 0.049974 ms
     - 0.0839
     - 2.94x
   * - BF16, INT4
     - local
     - ``BM32_BN16_W4_S1_DS1``
     - 0.031259 ms
     - 3.761
     - 2.87x
   * - INT4, INT4
     - prefill
     - ``BM64_BN16_W4_S1_DS1``
     - 0.041278 ms
     - 13.006
     - 1.37x
   * - INT4, INT4
     - decode
     - ``BM16_BN16_W8_S1_DS8``
     - 0.038853 ms
     - 0.1080
     - 3.78x
   * - INT4, INT4
     - local
     - ``BM32_BN16_W4_S1_DS1``
     - 0.023845 ms
     - 4.931
     - 3.76x

The matching PyTorch BF16 baselines were 0.056426/0.146755/0.089569 ms and
9.5146/0.02858/1.3126 TOPS for prefill/decode/local. The BF16-QK/INT4-V
prefill row is effectively tied; its small margin should be treated as
noise-scale rather than a categorical advantage. Across all 156 candidates,
the new compiler reduced median latency by 1.73% against the preserved
prior-pin sweep. Winner changes range from +10.23% for BF16 prefill to -3.56%
for fully INT4 decode, so the per-case table is the authoritative summary.

Mode-specific prefill tile selection reduced latency by about 38--42% for
BF16-PV modes. The corrected packed-V path does not quantize online-softmax
probabilities: P remains BF16, V is dequantized tile-wise from signed INT4 to
BF16, and P@V uses BF16 MMA with FP32 accumulation. Relative to the preceding
online-P-quantized implementation, this reduced prefill latency by 17.4% for
BF16 Q/K and 33.9% for INT4 Q/K; local latency improved by 14.5% and 26.3%,
and decode by 14.9% and 14.8%, respectively. These percentages describe
controlled implementation comparisons; ``vs PyTorch`` compares the final
selected kernel with the allocation-including PyTorch baseline.

BF16 GQA Training Shape
~~~~~~~~~~~~~~~~~~~~~~~

``benchmarks/gfx1151_attention_training.json`` contains 36 candidate records
and zero failures for the exact BF16 training shape
``B=7,Hq=16,Hkv=8,Lq=Lk=2048,D=Dv=64``. These rows are unquantized BF16:
Q/K/V and the timed output use BF16 storage, no scale tensors are present, and
online-softmax/P@V accumulation is FP32. Every candidate passed the matched
oracle at ``rtol=atol=1e-3`` in both the FP32 validation path and actual timed
BF16-output path. Both full and local attention chose ``BM64_BN64_W4_S1``:

.. list-table:: Exact BF16 GQA training results
   :header-rows: 1

   * - Case
     - Custom runtime
     - Effective TOPS
     - PyTorch runtime
     - PyTorch TOPS
     - Ratio
     - Winner maximum absolute error (FP32 / BF16)
   * - full attention
     - 3.727353 ms
     - 32.264
     - 7.560022 ms
     - 15.907
     - 2.03x
     - ``4.16e-5`` / ``1.23e-4``
   * - local ``(127,0)``
     - 0.570430 ms
     - 12.768
     - 133.235092 ms
     - 0.0547
     - 233.57x
     - ``1.87e-4`` / ``4.89e-4``

The full PyTorch baseline used ten samples. The local PyTorch row used one
sample and expressed locality as a generic boolean mask, which fell off the
fused SDPA fast path. Its 233.57x ratio therefore demonstrates block-pruned
local attention against that generic-mask path; it is not a stable or
apples-to-apples fused-kernel speedup. The long-local result motivated using
``BN64`` for local BF16-Q/K when ``Lq >= 1024``; short local queries retain
``BN32``.

INT4 Q/K, BF16 V GQA Training Shape
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``benchmarks/gfx1151_attention_int4_qk_training.json`` records the final
precompiled ``BM64_BN64_W4_S1`` forward kernels for the same exact training
shape. Q and K use packed signed-INT4 storage with BF16 scales; V, P@V, and the
timed output are BF16, while online-softmax and output accumulation are FP32.
Both the FP32 validation output and timed BF16 output passed the
representation-matched oracle at ``rtol=atol=1e-3``.

.. list-table:: INT4-QK/BF16-V GQA forward results
   :header-rows: 1

   * - Case
     - Runtime
     - Effective TOPS
     - PyTorch BF16 runtime
     - Ratio
     - Maximum absolute error (FP32 / BF16)
   * - full attention
     - 3.443859 ms
     - 34.920
     - 7.628077 ms
     - 2.21x
     - ``4.17e-5`` / ``1.22e-4``
   * - local ``(127,0)``
     - 0.446277 ms
     - 16.320
     - 133.630676 ms
     - 299.43x*
     - ``1.70e-4`` / ``4.88e-4``

``benchmarks/gfx1151_attention_backward_training.json`` records the packaged
backward pair: a query-owned dQ kernel and a key-owned combined dK/dV kernel.
Saved softmax state, accumulation, and dQ/dK/dV output use FP32. Every gradient
passed the representation-matched FP32 oracle at ``rtol=atol=1e-3``.

.. list-table:: INT4-QK/BF16-V GQA backward results
   :header-rows: 1

   * - Case
     - Runtime
     - Effective TOPS
     - dQ / dK / dV maximum absolute error
     - Worst combined-tolerance ratio
   * - full attention
     - 27.432583 ms
     - 15.343
     - ``6.11e-6`` / ``9.12e-6`` / ``4.73e-5``
     - 0.047
   * - local ``(127,0)``
     - 2.403788 ms
     - 10.605
     - ``1.16e-4`` / ``1.44e-4`` / ``1.04e-3``
     - 0.947

No PyTorch backward timing was recorded, so the backward rows make no speedup
claim. The local forward PyTorch baseline has the same generic-mask caveat as
the BF16 local row above.

Packed-INT4 V GQA Training Shape
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``benchmarks/gfx1151_attention_int4_value_training.json`` contains 24
candidate records and zero failures for the same exact training shape and the
BF16-QK/INT4-V and INT4-QK/INT4-V modes. INT4 operands are prepacked signed
4-bit storage with BF16 scales. Q@K uses BF16 or INT4 MMA according to Q/K
storage; P remains BF16, V is dequantized tile-wise to BF16, P@V uses BF16
MMA, and the online-softmax/P@V accumulator is FP32. All four winners use
``BM64_BN16_W4_S1``.

.. list-table:: Packed-V GQA training results
   :header-rows: 1

   * - Q/K, V storage
     - Case
     - Runtime
     - Effective TOPS
     - PyTorch BF16 ratio
     - Winner maximum absolute error (FP32 / BF16)
   * - BF16, INT4
     - full
     - 4.867351 ms
     - 24.707
     - 1.56x
     - ``4.29e-5`` / ``1.22e-4``
   * - BF16, INT4
     - local ``(127,0)``
     - 0.697428 ms
     - 10.443
     - 190.78x*
     - ``2.86e-4`` / ``9.77e-4``
   * - INT4, INT4
     - full
     - 4.462832 ms
     - 26.947
     - 1.70x
     - ``4.36e-5`` / ``1.22e-4``
   * - INT4, INT4
     - local ``(127,0)``
     - 0.500138 ms
     - 14.562
     - 266.04x*
     - ``2.64e-4`` / ``9.77e-4``

The PyTorch BF16 baselines were 7.587160 ms for full attention (ten samples)
and 133.055969 ms for the generic-mask local path (one sample). ``*`` The
local ratios carry the same non-apples-to-apples qualification as the BF16
training table. Every candidate passed both numerical gates at
``rtol=atol=1e-3``.

Projection Training Results
---------------------------

``benchmarks/gfx1151_projection_training.json`` records exact
INT4-by-INT4, subchannel-256, BF16-output projection kernels at the
``M=14336`` model microbatch. Timings are median
``triton.testing.do_bench`` results with 100 ms warmup, 400 ms repetition,
prepacked operands, BF16 scales, and preallocated output.

Every row uses packed signed INT4 for both operands and independent BF16
subchannel-256 scales along K. Each subchannel dot accumulates in INT32; scaled
subchannel results accumulate in FP32, followed by one BF16 output rounding.

.. list-table:: Exact projection-training winners
   :header-rows: 1

   * - Operation
     - Layout / ``(M,N,K)``
     - Best tile
     - Runtime
     - TOPS
     - Change from old
   * - combined fwd
     - NT / ``(14336,3072,1024)``
     - ``BM64_BN128_BK128_GM4``
     - 1.395540 ms
     - 64.630
     - --
   * - combined dX
     - NN / ``(14336,1024,3072)``
     - ``BM64_BN128_BK128_GM1``
     - 1.384520 ms
     - 65.145
     - --
   * - combined dW
     - TN / ``(3072,1024,14336)``
     - ``BM16_BN512_BK32_GM4``
     - 2.177528 ms
     - 41.421
     - 2.383031 ms; latency -8.62%
   * - output fwd
     - NT / ``(14336,1024,1024)``
     - ``BM64_BN128_BK128_GM4``
     - 0.486714 ms
     - 61.771
     - --
   * - output dX
     - NN / ``(14336,1024,1024)``
     - ``BM64_BN128_BK128_GM1``
     - 0.499317 ms
     - 60.212
     - --
   * - output dW
     - TN / ``(1024,1024,14336)``
     - ``BM64_BN512_BK32_GM4``
     - 0.767883 ms
     - 39.153
     - 0.916079 ms; latency -16.18%
   * - fallback packed QKV fwd
     - NT / ``(14336,2048,1024)``
     - ``BM64_BN128_BK128_GM1``
     - 0.964892 ms
     - 62.317
     - --

Every selected winner was separately validated on gfx1151 using model-like
random BF16 input fake-quantized to signed INT4 with scale 0.1. At
``rtol=atol=1e-3``, both maximum absolute and relative differences were zero.
The two TN dW winners are packaged as additional native artifacts, increasing
the original dense count from 2,880 to 2,882. The 180 packed-output variants
described below bring the current dense total to 3,062.

Forward NT uses packed ``A[M,K/2]`` and ``B[N,K/2]``; dX NN uses
``A[M,K/2]`` and ``B[K/2,N]``; dW TN uses ``A[K/2,M]`` and ``B[K/2,N]``.
Their subchannel scales remain ``a_scale[M,K/256]`` and weight-matched
``b_scale[K/256,N]``. In dW, ``K=14336`` is the token/reduction dimension, so
subchannel-256 groups partition tokens. Training accumulates repeated
``M=14336`` microbatch gradients in FP32 while each kernel stores BF16; it
does not replace four accumulation steps with an ``M=57344`` launch.

Packed-INT4 Activation Output
-----------------------------

``scripts/benchmark_quantized_outputs.py`` measures the model-like
SwiGLU-to-down-projection chain at ``M=14336, D=K=1024, G=8``. Producer inputs,
up/gate weights, and down weights are packed signed INT4 with independent BF16
subchannel-256 scales. The baseline writes BF16, invokes the same standalone
sc256 output quantizer used by the reference tests, and then launches the down
GEMM. The fused path writes packed INT4 plus BF16 sc256 scales directly into
preallocated buffers.

.. list-table:: INT4 activation producer and down-projection chain
   :header-rows: 1

   * - Path
     - Producer only
     - BF16 producer + quant + down
     - Fused INT4 producer + down
     - Chain speedup
   * - dense SwiGLU
     - 1.139996 ms
     - 7.671266 ms
     - 1.709751 ms
     - 4.487x
   * - ragged SwiGLU, 8 balanced groups
     - 1.871740 ms
     - 9.722673 ms
     - 2.447001 ms
     - 3.973x

The absolute table is one current-wheel run with 20 warmups and 100 timed
iterations. Three matched old/new pairs isolate the compiler update: median
ragged packed-output producer latency improved from 1.986689 to 1.716029 ms
(13.62%), and producer-plus-down latency improved from 2.576571 to 2.318002 ms
(10.04%). Dense chain latency was flat (1.658267 to 1.657391 ms). Clocks were
not pinned, so the absolute snapshot and paired medians differ; the paired
comparison is the compiler signal.

Native dense and ragged tests compare against a representation-matched
quantizer. Packed codes and BF16 scales are exact; dequantized results pass
``rtol=atol=1e-3``. The quality comparison to the unquantized BF16 producer is
separately reported because four-bit quantization is lossy: dense cosine was
0.980569 and relative L2 was 0.199470. The ragged fused result versus the
separately quantized baseline had cosine 0.999019 and relative L2 0.044298.
These quality figures are not kernel-fidelity tolerances.

Kimi Delta Attention Results
----------------------------

``benchmarks/gfx1151_kda.json`` records packaged execution of the exact
Kimi-Linear-sized ``B=4,T=2048,H=32,D=Dv=128`` workload. Matched packaged
timings use 100 ms warmup and 400 ms repetition windows, prepacked inputs,
preallocated timed outputs, and Triton 3.7.0 at
``28d04c3f9f23db9a7f9c80906d00667b53e7a7d7``. PyTorch SDPA was run with
``TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1``; its output allocation is
included. Package SDPA and KDA timings use preallocated outputs.

.. list-table:: KDA B4/T2048/H32/D128 results
   :header-rows: 1

   * - Storage
     - Packaged Gluon forward
     - Effective TOPS
     - Packaged Gluon backward
   * - BF16
     - 5.057695 ms
     - 5.9444
     - 70.988396 ms
   * - INT4 Q/K + BF16 V
     - 4.743104 ms
     - 6.3386
     - 70.326424 ms
   * - BF16 Q/K + INT4 V
     - 4.965041 ms
     - 6.0553
     - 73.436302 ms
   * - INT4 Q/K/V
     - 5.270335 ms
     - 5.7045
     - 74.157379 ms

Against the preceding packaged sweep, forward changed by less than 0.9% in
every mode and backward changed by less than 0.4% except INT4-V, which improved
3.6%. This is consistent with unchanged KDA aggregate AMDGCN load-width counts.
Gluon uses internal ``VB64_W2`` forward and
``BVB64_W4`` backward mappings at this shape. The public configuration retains
``CI4``; Triton's ``backward_value_block``, ``num_warps``, and ``num_stages``
do not override Gluon's explicit layouts.

The BF16 PyTorch, package-BF16, package-INT4-QK, package-INT4-V, and
package-all-INT4 forward baselines were 15.737305, 5.688960, 3.367322,
6.583079, and 5.839563 ms. Package BF16 SDPA backward was 50.063908 ms with
forward excluded. Packaged Gluon KDA is 2.99--3.32x faster than the
allocation-including PyTorch baseline. INT4-QK KDA is 1.20x faster than
package BF16 SDPA, 1.41x slower than package INT4-QK SDPA, and 1.39x/1.23x
faster than package INT4-V/all-INT4 SDPA. The recurrent algorithm
is linear in sequence length; ratios to quadratic attention are latency
comparisons, not equivalent-operation TOPS comparisons. KDA effective TOPS
counts seven state-sized operations per token.

The runtime-profile forward sweep holds ``B=4,H=32,D=Dv=128`` fixed and uses
the same 100/400 ms measurement windows, prepacked inputs, and preallocated
outputs. Package SDPA is the custom Triton-JIT path because its native D64
objects do not cover D128.

.. list-table:: Fastest KDA versus fastest package SDPA by context
   :header-rows: 1

   * - T
     - Fastest KDA
     - Fastest package SDPA
     - KDA / SDPA
   * - 128
     - 0.300684 ms
     - 0.088887 ms
     - 3.38x slower
   * - 256
     - 0.607901 ms
     - 0.168516 ms
     - 3.61x slower
   * - 512
     - 1.176328 ms
     - 0.332224 ms
     - 3.54x slower
   * - 1024
     - 2.361673 ms
     - 0.929865 ms
     - 2.54x slower
   * - 2048
     - 4.743104 ms
     - 3.367322 ms
     - 1.41x slower
   * - 4096
     - 9.842795 ms (Gluon JIT)
     - 13.593515 ms
     - 1.38x faster
   * - 8192
     - 20.165771 ms (Gluon JIT)
     - 53.162548 ms
     - 2.64x faster

KDA overtakes the fastest quantized SDPA mode between 2K and 4K. BF16 KDA
crosses package BF16 SDPA between 1K and 2K, and it crosses the
allocation-including PyTorch BF16 baseline between T=128 and T=256, but those
are different comparisons. All context-sweep records have zero failures and
the reduced all-mode numerical gate observed at most ``1.43e-6`` absolute
error under ``rtol=atol=1e-3``. The 4K/8K KDA rows are forward-only Gluon JIT
because the packaged checkpoint-cache profile stops at 2K; the 8K value is a
confirmation repeat. See
``benchmarks/gfx1151_kda_context_sweep.json``. That historical 128--8192 sweep
retains its recorded ``90b278e6`` provenance; only the packaged 2K row above
was refreshed here. The 4K/8K rows are JIT-only and are not part of the
prebuilt-HSACO comparison.

Every mode first runs a reduced representation-matched numerical gate. The
largest observed absolute differences were ``8.95e-8`` for output,
``2.39e-7`` for final state, and ``1.43e-6`` over
dQ/dK/dV/dLogDecay/dBeta/dInitialState,
all passing ``rtol=atol=1e-3``. Separate tests cover initial-state gradients,
nonmultiple-of-16 tails, zero-norm Q/K, and CUDAGraph replay in all four
BF16/INT4 QK-by-V combinations. On the full target shape, Gluon and Triton
differ by at most ``2.45e-4`` forward and ``1.79e-7`` over all backward
gradients.

Checkpoint interval 4 remains the measured backward choice. Its target FP32
cache is 4.008 GiB, beyond one RDNA buffer descriptor's 32-bit byte-offset
range. The Gluon wrapper partitions it over two descriptors while retaining
one recurrent launch; a flat-pointer fallback covers a pathological single
batch/head segment at or above 4 GiB. Target eager execution and reduced
all-mode graph replay both pass the numerical gates.

The 14 packaged objects comprise eight forward variants (four BF16/INT4
QK-by-V modes, with and without cache writes) and BF16/INT4 variants of the
backward preprocess, recurrent, and normalization phases. Positive B/H and
``1 <= T <= 2048`` are runtime; the object IDs retain B4/T2048/H32 only as the
generation profile. Packaged dispatch requires ``D=Dv=128``,
``value_block=64``, normalized Q/K, BF16 output/upstream gradient, FP32 gates,
and no initial/final-state path. The RDNA 3.5 two-descriptor cache split also
requires each cache page to fit its 32-bit byte-offset span (at T=2048,
``B*H <= 254``). Other shapes or options remain available through JIT.

The Gluon kernels force RDNA buffer operations for recurrent operands and
outputs, and use independent one-dimensional vector and two-dimensional state
layouts. WMMA is available in the pinned compiler, but the exact token update
is a rank-one recurrent update rather than a dense matrix product. The tested
compact-WY/WMMA transformation added factor construction and reduction work
and remained slower, so the winning implementation uses vector FP32 FMA for
the state while reducing register pressure through its explicit wave mapping.
Representative target AMDGCN reports 212 VGPRs, no spills, and occupancy 7
for the timed BF16 forward kernel. Backward reaches 256 VGPRs, 10 VGPR spills,
44 bytes of private storage, and occupancy 5, but its checkpoint replay is
widened to ``buffer_load_b128``. Smaller backward tiles avoid those spills but
require more value-tile programs and measured slower; the 64-wide mapping is
the latency winner.

Qwen3.6 Gated DeltaNet and MLA Production Profiles
--------------------------------------------------

The Qwen Gated DeltaNet record uses the model's B7/T2048/Hqk16/Hv48/D128/Dv128
training shape. Inputs are prepacked where applicable, expansion/output/cache
and gradient buffers are preallocated, and packaged Gluon CI8 dispatch is
required. Backward excludes checkpoint construction. Every row first passes a
representation-matched forward/backward gate at ``rtol=atol=1e-3``.

.. list-table:: Qwen3.6-27B GDN production results
   :header-rows: 1

   * - Storage
     - Forward
     - Effective TOPS
     - Backward
     - Maximum absolute gate error
   * - BF16
     - 18.784225 ms
     - 4.2014
     - 227.922623 ms
     - 2.15e-6
   * - INT4 Q/K + BF16 V
     - 15.325770 ms
     - 5.1495
     - 225.010345 ms
     - 2.86e-6
   * - BF16 Q/K + INT4 V
     - 18.076777 ms
     - 4.3658
     - 235.590546 ms
     - 2.03e-6
   * - INT4 Q/K/V
     - 17.065836 ms
     - 4.6244
     - 234.563705 ms
     - 3.82e-6

CI8 improves the measured BF16 backward by 31.1% versus the earlier CI16
diagnostic (226.45 versus 328.57 ms in the tuning pass) and is the smallest
tested interval that fits B7/H48 in the current two-descriptor cache ABI. CI4
would require three descriptor pages and is rejected before launch; the
diagnostic that preceded the guard produced a GPU page fault, which is why the
page-count validation is part of the public adapter. Machine-readable results
are in ``benchmarks/gfx1151_qwen36_gated_delta_net.json``.

The MLA records use DeepSeek-V3/R1 dimensions B4/L2048/H128/C512/Dn128/Dr64/
Dv128 with BF16 operands and output, FP32 accumulation/gradients, and packaged
D192/Dv128 attention dispatch required. The package timing includes BF16
latent up-projection and operand materialization. Backward excludes forward but
includes explicit projection-gradient composition.

.. list-table:: MLA production results
   :header-rows: 1

   * - Workload
     - Forward
     - Dense-equivalent throughput
     - Backward
     - Numerical gate
   * - Full causal
     - 74.507111 ms
     - 22.1357 TOPS
     - 834.878296 ms
     - rtol=atol=1e-3
   * - Causal local-512
     - 54.479393 ms
     - 30.2732 effective TOPS
     - 521.352600 ms
     - rtol=atol=1e-3

The local throughput is dense-equivalent: it retains the full-attention
operation numerator so bounded-window latency can be compared at one shape.
The actual local arithmetic is lower. The full record's largest reduced gate
absolute error is 1.01e-3 but passes the combined 1e-3 absolute/relative
criterion; local's maximum is 8.20e-4.

The matched PyTorch composition reruns the same BF16 latent up-projection and
materialization and measured 988.098267 ms; its SDPA-only portion measured
957.565918 ms. The package full forward is 13.26x faster on this installed
ROCm stack. PyTorch emitted its experimental memory-efficient-attention warning
and selected a slow D192 path, so this is not presented as a portable backend
speedup. MLA backward is numerically ready but its 834.88 ms latency shows the
remaining performance gap: FP32 attention gradients plus per-head latent and
per-batch weight-gradient intermediates dominate. Source records are
``benchmarks/gfx1151_mla.json`` and
``benchmarks/gfx1151_mla_local512.json``.

Correctness Notes
-----------------

The full generated benchmark pass validates every packaged artifact against a
random BF16 fake-quant reference. BF16-store paths, including standard ragged
backward at ``split_k=1``, can differ by one ULP near rounding ties. Treat
those separately from FP32 atomic split-K rows when evaluating absolute error
summaries.

Packed-INT4 output rows preallocate both the packed ``uint8`` output and its
BF16 subchannel-256 scale tensor. Validation requires bit-exact packed codes,
exact BF16 scales, and dequantized agreement with the representation-matched
reference at ``rtol=atol=1e-3``. Use ``--output-dtype int4`` to select this
180-artifact subset.

Regenerate Benchmarks
---------------------

From a built wheel:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/benchmark_generated.py --warmup-ms 25 --rep-ms 100

Benchmark selected runtime-shape artifacts:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/benchmark_generated.py \
     --kernel-id gfx1151_int4xint4_nn_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk \
     --shape 128,1024,64 \
     --warmup-ms 25 \
     --rep-ms 100

Run direct Triton tuners:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/tune_gemm.py --shape 4096,4096,4096 --dtype int4 --save-best-artifacts
   uv run --project "$TRITON_CHECKOUT" python scripts/tune_relu2.py --shape 4096,4096,4096 --dtype int4 --save-best-artifacts
   uv run --project "$TRITON_CHECKOUT" python scripts/tune_swiglu.py --shape 4096,4096,4096 --dtype int4 --save-best-artifacts

Run the KDA numerical gate, target-shape forward/backward sweep, and SDPA
comparison (the command defaults to ``B=4,T=2048,H=32,D=Dv=128``):

.. code-block:: bash

   TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1 \
     uv run --extra rocm-triton-fork python scripts/benchmark_kda.py \
       --backend gluon \
       --precompiled require \
       --value-block 64 \
       --checkpoint-interval 4 \
       --warmup-ms 100 \
       --rep-ms 400

Use ``--dtype bf16`` with any of those commands to tune the development-only
BF16×INT4 path with on-the-fly activation quantization. All three tuners check
results with ``rtol=atol=1e-3``. No mixed artifacts are shipped by default;
prequantize and reuse A with ``--dtype int4`` when quantization reuse matters.

Run the ragged-dot runtime-shape sweep. This script calls
``autotune_ragged_dot(...)`` for every requested shape, mode, layout, scale,
group-size pattern, and candidate config, then writes the full timing matrix as
JSON:

.. code-block:: bash

   TRITON_CHECKOUT=/path/to/triton
   uv run --project "$TRITON_CHECKOUT" python scripts/benchmark_ragged_dot.py \
     --warmup-ms 25 \
     --rep-ms 100 \
     --output benchmarks/ragged_dot_int4.json

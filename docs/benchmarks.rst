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
forces JIT. On the packaged BF16 512-prefill profile, ``BM64_BN64_W4_S1``
measured 0.036228 ms / 14.819 effective TOPS versus 0.039234 ms / 13.684 TOPS
for matched JIT, a 7.7% native latency reduction. FP32 validation maximum
absolute error was ``6.07e-5`` at ``rtol=atol=1e-3``; timed BF16 maximum
absolute error was ``2.45e-4``.

Peak 4096^3 Results
-------------------

The rows are averages of two matched current-wheel runs. The artifact matrix
is now regenerated with Triton
``0da3c5a751b2d03461e961b62dc3598f85884617``. Its unaligned gfx1151 byte-store
vectorization specifically changes packed INT4 output epilogues: a
representative masked ragged subchannel-256 SwiGLU output changed from 31
``buffer_store_b8`` instructions to four ``buffer_store_b64`` instructions,
while code size fell from 34,260 to 32,624 bytes and reported private scratch
from 560 to 448 bytes. BF16/FP32 output kernels are outside that compiler
change. The refreshed subchannel-256 SwiGLU snapshot is 13.4% lower than the
older table, but that non-packed-output kernel is byte-identical, so the
difference cannot be attributed to this compiler update.

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
full Triton ``ec4a2c64`` sweep used 25 ms warmup and 100 ms repetition windows
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
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 2.190327 ms
     - 62.748
   * - fwd
     - NN
     - subchannel-256
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 2.683613 ms
     - 51.214
   * - fwd
     - NT
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 4.072952 ms
     - 33.744
   * - fwd
     - NT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.142994 ms
     - 33.174
   * - fwd
     - TN
     - per-channel
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 3.263838 ms
     - 42.110
   * - fwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_GST1_W4_S3``
     - 4.059512 ms
     - 33.856
   * - fwd
     - TT
     - per-channel
     - ``BM64_BN128_BK64_GST1_W8_S3``
     - 5.337606 ms
     - 25.749
   * - fwd
     - TT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.697210 ms
     - 29.260
   * - bwd
     - NN
     - per-channel
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.402290 ms
     - 57.212
   * - bwd
     - NN
     - subchannel-256
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.704137 ms
     - 50.825
   * - bwd
     - NT
     - per-channel
     - ``BM128_BN64_BK64_W8_S3_SK1``
     - 2.252268 ms
     - 61.022
   * - bwd
     - NT
     - subchannel-256
     - ``BM128_BN64_BK64_W8_S3_SK1``
     - 2.432567 ms
     - 56.500
   * - bwd
     - TN
     - per-channel
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 3.072168 ms
     - 44.737
   * - bwd
     - TN
     - subchannel-256
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 3.456449 ms
     - 39.763
   * - bwd
     - TT
     - per-channel
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.725918 ms
     - 50.419
   * - bwd
     - TT
     - subchannel-256
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.908761 ms
     - 47.250

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
     - ``BM64_BN64_BK64_W4_S3_SK1``
     - 2.402290 ms
     - 57.211641

The current NN/per-channel result is 21.5% above the immediately preceding
BF16 row and 59.8% above the historical FP32 row. The TOPS numerator remains
``2*M*N*K``, rather than scaling with ``G``, because the group K extents sum
to the fixed total K.
Consumers that maintain FP32 master gradients should pass
``output_dtype=torch.float32`` or supply an FP32 ``out``; ``split_k>1`` always
requires FP32 for atomic accumulation.

Compared with the immediately preceding 912-record BF16 table, backward gains
are 21.5%/30.5% (NN per-channel/subchannel-256), 22.8%/17.5% (NT),
20.5%/28.7% (TN), and 26.3%/34.0% (TT). These JIT comparisons include newly
selected measured configs.

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

``benchmarks/gfx1151_attention.json`` contains 156 Triton-JIT tuning records,
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
     - 0.037370 ms
     - 14.366
     - 1.51x
   * - BF16, BF16
     - decode
     - ``BM16_BN64_W4_S1_DS4``
     - 0.047249 ms
     - 0.0888
     - 3.14x
   * - BF16, BF16
     - local
     - ``BM64_BN32_W4_S1_DS1``
     - 0.026690 ms
     - 4.405
     - 3.40x
   * - INT4, BF16
     - prefill
     - ``BM64_BN64_W4_S1_DS1``
     - 0.029615 ms
     - 18.128
     - 1.91x
   * - INT4, BF16
     - decode
     - ``BM16_BN64_W8_S1_DS4``
     - 0.037451 ms
     - 0.1120
     - 3.96x
   * - INT4, BF16
     - local
     - ``BM64_BN64_W4_S1_DS1``
     - 0.020678 ms
     - 5.686
     - 4.39x
   * - BF16, INT4
     - prefill
     - ``BM32_BN16_W4_S1_DS1``
     - 0.057588 ms
     - 9.323
     - 0.98x
   * - BF16, INT4
     - decode
     - ``BM16_BN16_W8_S1_DS8``
     - 0.050434 ms
     - 0.0832
     - 2.94x
   * - BF16, INT4
     - local
     - ``BM32_BN16_W4_S1_DS1``
     - 0.032301 ms
     - 3.640
     - 2.81x
   * - INT4, INT4
     - prefill
     - ``BM64_BN16_W4_S1_DS1``
     - 0.041758 ms
     - 12.857
     - 1.35x
   * - INT4, INT4
     - decode
     - ``BM16_BN16_W4_S1_DS8``
     - 0.037470 ms
     - 0.1119
     - 3.96x
   * - INT4, INT4
     - local
     - ``BM64_BN16_W4_S1_DS1``
     - 0.023524 ms
     - 4.998
     - 3.86x

The matching PyTorch BF16 baselines were 0.056506/0.148278/0.090811 ms and
9.5011/0.02829/1.2947 TOPS for prefill/decode/local. The BF16-QK/INT4-V
prefill row remains just below 1x and is retained rather than hidden.

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
``triton.testing.do_bench`` results with 25 ms warmup, 100 ms repetition,
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
     - 1.395418 ms
     - 64.636
     - --
   * - combined dX
     - NN / ``(14336,1024,3072)``
     - ``BM64_BN128_BK128_GM1``
     - 1.387102 ms
     - 65.024
     - --
   * - combined dW
     - TN / ``(3072,1024,14336)``
     - ``BM16_BN512_BK32_GM4``
     - 2.184580 ms
     - 41.287
     - 2.383031 ms; latency -8.33%, TOPS +9.08%
   * - output fwd
     - NT / ``(14336,1024,1024)``
     - ``BM64_BN128_BK128_GM4``
     - 0.488196 ms
     - 61.583
     - --
   * - output dX
     - NN / ``(14336,1024,1024)``
     - ``BM64_BN128_BK128_GM1``
     - 0.498215 ms
     - 60.345
     - --
   * - output dW
     - TN / ``(1024,1024,14336)``
     - ``BM64_BN512_BK32_GM4``
     - 0.767280 ms
     - 39.184
     - 0.916079 ms; latency -16.24%, TOPS +19.39%
   * - fallback packed QKV fwd
     - NT / ``(14336,2048,1024)``
     - ``BM64_BN128_BK128_GM1``
     - 0.969299 ms
     - 62.034
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
     - 1.138743 ms
     - 7.669192 ms
     - 1.673244 ms
     - 4.583x
   * - ragged SwiGLU, 8 balanced groups
     - 2.220436 ms
     - 9.998160 ms
     - 2.816951 ms
     - 3.549x

These are averages of two current-wheel runs with 10 warmups and 50 timed
iterations. Against two identically configured old-compiler runs, the ragged
packed-output producer improved from 2.287215 to 2.220436 ms (2.9%), while the
producer-plus-down chain improved from 2.967869 to 2.816951 ms (5.1%). The
dense producer assembly was already vectorized; its small timing movement is
measurement variation. Clocks were not pinned, so the same snapshot
qualification as the README tables applies.

Native dense and ragged tests compare against a representation-matched
quantizer. Packed codes and BF16 scales are exact; dequantized results pass
``rtol=atol=1e-3``. The quality comparison to the unquantized BF16 producer is
separately reported because four-bit quantization is lossy: dense cosine was
0.980569 and relative L2 was 0.199470. The ragged fused result versus the
separately quantized baseline had cosine 0.999019 and relative L2 0.044298.
These quality figures are not kernel-fidelity tolerances.

Kimi Delta Attention Results
----------------------------

``benchmarks/gfx1151_kda.json`` records the exact Kimi-Linear-sized
``B=4,T=2048,H=32,D=Dv=128`` workload. Timings use 25 ms warmup and 100 ms
repetition windows, prepacked inputs, preallocated timed outputs, and the
Triton 3.7.0 Strix Halo fork at
``0da3c5a751b2d03461e961b62dc3598f85884617``. PyTorch SDPA was run with
``TORCH_ROCM_AOTRITON_ENABLE_EXPERIMENTAL=1``; its output allocation is
included. Package SDPA and KDA timings use preallocated outputs.

.. list-table:: KDA B4/T2048/H32/D128 results
   :header-rows: 1

   * - Storage / phase
     - Config
     - Runtime
     - Effective TOPS
     - Comparison
   * - BF16 forward
     - ``VB32_CI4_W4``
     - 10.803319 ms
     - 2.7829
     - 1.46x faster than PyTorch BF16 SDPA; 2.54x slower than package BF16 SDPA
   * - INT4 Q/K + BF16 V forward
     - ``VB32_CI4_W4``
     - 10.174259 ms
     - 2.9550
     - 1.55x faster than PyTorch BF16 SDPA; 2.79x slower than package INT4-QK SDPA
   * - INT4 Q/K/V forward
     - ``VB32_CI4_W4``
     - 10.310715 ms
     - 2.9159
     - 1.53x faster than PyTorch BF16 SDPA; 1.78x slower than package INT4 SDPA
   * - BF16 backward
     - ``VB16_CI4_W4``
     - 166.683044 ms
     - --
     - 2.45x slower than package BF16 SDPA backward
   * - INT4 Q/K + BF16 V backward
     - ``VB16_CI4_W4``
     - 165.398239 ms
     - --
     - logical FP32 gradients
   * - INT4 Q/K/V backward
     - ``VB16_CI4_W4``
     - 166.891037 ms
     - --
     - logical FP32 gradients

The BF16 PyTorch, package-BF16, package-INT4-QK, and package-all-INT4 forward
baselines were 15.788517, 4.260037, 3.653018, and 5.777085 ms. Package BF16
SDPA backward was 67.941978 ms with forward excluded. The recurrent algorithm
is linear in sequence length, but at 2K its per-head ``D*Dv`` state update is
not yet faster than this repository's tuned quadratic SDPA. Ratios across
different algorithms are latency comparisons, not equivalent-operation TOPS
comparisons. KDA effective TOPS counts seven state-sized operations per token.

Every mode first runs a reduced representation-matched numerical gate. The
largest observed absolute differences were ``4.48e-8`` for output,
``2.39e-7`` for final state, and ``1.91e-6`` over dQ/dK/dV/dLogDecay/dBeta,
all passing ``rtol=atol=1e-3``. Separate tests cover initial-state gradients,
nonmultiple-of-16 tails, zero-norm Q/K, and CUDAGraph replay in all four
BF16/INT4 QK-by-V combinations.

Checkpoint interval 4 improves backward from 252.916 ms at interval 16 to
about 165--167 ms, at the cost of a four-times-larger FP32 state cache (about
4 GiB for this shape). The compact-WY chunk experiment is opt-in: its
per-dimension exponential preparation measured slower on gfx1151 and is not
used by default.

The dumped target recurrent AMDGCN uses per-lane ``buffer_load_u16`` for BF16
Q/K/V and ``buffer_store_b16`` for BF16 output, with scalar ``b32`` state/gate
traffic; it contains no ``b64`` or ``b128`` memory operation. Thus the current
compiler's wider unaligned byte-store optimization benefits packed GEMM
epilogues but does not widen this recurrent KDA mapping. The remaining KDA
gap is dominated by repeated state arithmetic and backward replay rather than
an obvious missed wide-store transformation.

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
       --value-block 32 \
       --backward-value-block 16 \
       --checkpoint-interval 4

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

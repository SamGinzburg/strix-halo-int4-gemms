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

Peak 4096^3 Results
-------------------

The rows are averages of two matched current-wheel runs. The artifact matrix
was regenerated with Triton ``ec4a2c64315f3d4485e963a8391a7444a232801f``, but
representative old/new HSACO hashes are identical. Treat small timing changes
as measurement variation, not automatic packaged-native compiler uplift. Most
dense rows moved by less than 2%. The refreshed subchannel-256 SwiGLU snapshot
is 13.4% lower than the older table, but that kernel is byte-identical too, so
the difference cannot be attributed to the compiler update.

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

Correctness Notes
-----------------

The full generated benchmark pass validates every packaged artifact against a
random BF16 fake-quant reference. BF16-store paths, including standard ragged
backward at ``split_k=1``, can differ by one ULP near rounding ties. Treat
those separately from FP32 atomic split-K rows when evaluating absolute error
summaries.

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

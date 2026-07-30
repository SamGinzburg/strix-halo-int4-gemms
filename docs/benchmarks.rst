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

The ragged-dot rows below are Triton-JIT tuning records, not separate native
dispatch timings. The packaged ragged HSACO artifacts cover the default
generated configs so installed wheels can avoid JIT compilation for those
paths. The full Triton ``ec4a2c64`` sweep used 25 ms warmup and 100 ms
repetition windows and completed all 816 records with zero failures. Timings
use 8 RHS groups, prepacked operands, BF16 scales, preallocated outputs, and
exclude quantization/packing. The sweep covers 3 runtime shapes,
balanced/uneven group-size patterns, all four layouts,
per-channel/subchannel-256 scales, forward M-ragged dot, and backward K-ragged
split-K dot. The table selects maximum TOPS for each mode/layout/scale from the
4096x4096x4096 balanced rows.

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
     - ``BM64_BN256_BK64_GST1_W8_S3``
     - 2.203 ms
     - 62.4
   * - fwd
     - NN
     - subchannel-256
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 2.671 ms
     - 51.5
   * - fwd
     - NT
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 4.024 ms
     - 34.2
   * - fwd
     - NT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.069 ms
     - 33.8
   * - fwd
     - TN
     - per-channel
     - ``BM64_BN256_BK64_GST2_W8_S3``
     - 3.275 ms
     - 42.0
   * - fwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_GST1_W4_S3``
     - 3.773 ms
     - 36.4
   * - fwd
     - TT
     - per-channel
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 5.275 ms
     - 26.1
   * - fwd
     - TT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.672 ms
     - 29.4
   * - bwd
     - NN
     - per-channel
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - 3.834 ms
     - 35.8
   * - bwd
     - NN
     - subchannel-256
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - 4.512 ms
     - 30.5
   * - bwd
     - NT
     - per-channel
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - 3.695 ms
     - 37.2
   * - bwd
     - NT
     - subchannel-256
     - ``BM64_BN128_BK64_W8_S3_SK1``
     - 4.265 ms
     - 32.2
   * - bwd
     - TN
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 4.744 ms
     - 29.0
   * - bwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 5.453 ms
     - 25.2
   * - bwd
     - TT
     - per-channel
     - ``BM64_BN128_BK64_W8_S3_SK1``
     - 4.320 ms
     - 31.8
   * - bwd
     - TT
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 5.134 ms
     - 26.8

Backward Output Contract and Scaling
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The standard ragged INT4 backward API materializes ``G`` independent FP32
``[M, N]`` planes. At ``M=N=K=4096``, ``G=8``, that is 536,870,912 output
bytes--16x the bytes in the forward BF16 ``[M, N]`` output. The hard lower
bound here is the number of bytes required by the output contract; a standalone
``out.zero_()`` measurement of 2.256479 ms (237.924 GB/s) is a bandwidth
reference, not a theoretical minimum or the full kernel runtime. For context,
the complete-operation budgets at 60 and 55 TOPS are 2.290649 and 2.498890 ms,
respectively.

Fixed-work measurements with ``BM64_BN256_BK64``, NN/PC, show the effect as
the number of output planes grows:

.. list-table:: Fixed-work backward scaling
   :header-rows: 1

   * - Groups
     - Output bytes vs. forward
     - TOPS
   * - 1
     - 2x
     - 49.722
   * - 2
     - 4x
     - 48.807
   * - 4
     - 8x
     - 44.639
   * - 8
     - 16x
     - 36.067

The TOPS numerator remains ``2*M*N*K``, rather than scaling with ``G``, because
the group K extents sum to the fixed total K. At ``G=8``, changing ``BK64`` to
``BK32`` reached 36.327 TOPS, while larger ``BM128/BN256`` and ``BM64/BN512``
variants reached 31.754 and 32.304 TOPS. Under the current grouped FP32 output
contract, these results indicate that tile and stage tuning alone is not a
credible path to forward-like 55--60 TOPS; that range would require an
algorithm or contract that reduces or fuses outputs, lowers output precision,
or fuses the consumer. This conclusion does not apply to such alternative
semantics.

An experimental reduced-output prototype demonstrates that distinction: it
sums the group contributions into one FP32 ``[M, N]`` output, passed comparison
with the PyTorch reference at ``rtol=atol=1e-3``, and measured 60.092 TOPS with
``BK32`` (55.524 TOPS with ``BK64``). Because it changes the standard backward
result from ``G`` independent planes to one reduced plane, it is evidence about
the bottleneck rather than a drop-in replacement.

Compared with the preceding checked-in 816-record database, the largest
forward changes are NT subchannel-256 (+10.3%), TN subchannel-256 (+10.0%), TN
per-channel (+3.4%), NN subchannel-256 (+3.0%), and NT per-channel (+2.6%).
Backward records are mostly within ±1%, with TT subchannel-256 at +2.7%. The
older prose table's backward rows were out of sync with that database, so their
larger visible changes are table corrections rather than compiler regressions.
These are JIT benchmark deltas. Representative packaged HSACO hashes remained
byte-identical across the compiler update, so the deltas must not be
interpreted as generated-native improvements.

The checked-in ragged benchmark records are timing records. Correctness for
per-channel, subchannel, balanced, uneven, and empty-group cases is covered by
``tests/test_ragged_dot.py`` against grouped Torch references.
Each record metadata entry also reports ``uses_even_k_fast_path`` and
``masks_k`` so benchmark consumers can separate aligned fast-path rows from
fully masked ragged-K rows.

Correctness Notes
-----------------

The full generated benchmark pass validates every packaged artifact against a
random BF16 fake-quant reference. BF16-store SwiGLU rows can differ by one ULP
near rounding ties. Treat those separately from FP32
split-K rows when evaluating absolute error summaries.

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

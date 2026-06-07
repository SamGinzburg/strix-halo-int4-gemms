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
generated from selected configs after tuning.

Peak 4096^3 Results
-------------------

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
     - 1.81 ms
     - 76.0
   * - int4 plain GEMM
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 2.15 ms
     - 63.8
   * - int4 ReLU^2
     - per-channel
     - ``BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK``
     - 1.81 ms
     - 75.8
   * - int4 ReLU^2
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 2.16 ms
     - 63.6
   * - int4 fused SwiGLU
     - per-channel
     - ``BM128_BN128_BK32_GM4_W16_S3_WEU2_SK1_EVENK``
     - 4.56 ms
     - 60.3
   * - int4 fused SwiGLU
     - subchannel-256
     - ``BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK``
     - 4.62 ms
     - 59.5
   * - int8 plain GEMM
     - per-channel
     - ``BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK``
     - 5.34 ms
     - 25.7
   * - int8 plain GEMM
     - subchannel-256
     - ``BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK``
     - 5.61 ms
     - 24.5

Ragged Dot Results
------------------

The ragged-dot rows below are Triton-JIT tuning records, not separate native
dispatch timings. The packaged ragged HSACO artifacts cover the default
generated configs so installed wheels can avoid JIT compilation for those
paths. Timings use 8 RHS groups, prepacked operands, BF16 scales, preallocated
outputs, and exclude quantization/packing. The checked-in sweep contains 816
candidate timing records across 3 runtime shapes, balanced/uneven group-size
patterns, all four layouts, per-channel/subchannel-256 scales, forward
M-ragged dot, and backward K-ragged split-K dot. The default grid benchmarks 7
forward candidates and 10 backward candidates per shape/layout/scale/case. The
table shows the 4096x4096x4096 balanced rows.

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
     - 2.258 ms
     - 60.9
   * - fwd
     - NN
     - subchannel-256
     - ``BM32_BN128_BK64_GST1_W4_S3``
     - 2.738 ms
     - 50.2
   * - fwd
     - NT
     - per-channel
     - ``BM64_BN256_BK128_GST1_W8_S3``
     - 4.063 ms
     - 33.8
   * - fwd
     - NT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.167 ms
     - 33.0
   * - fwd
     - TN
     - per-channel
     - ``BM64_BN256_BK64_GST1_W8_S3``
     - 3.297 ms
     - 41.7
   * - fwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_GST1_W4_S3``
     - 3.854 ms
     - 35.7
   * - fwd
     - TT
     - per-channel
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 5.292 ms
     - 26.0
   * - fwd
     - TT
     - subchannel-256
     - ``BM64_BN128_BK64_GST2_W8_S3``
     - 4.627 ms
     - 29.7
   * - bwd
     - NN
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 3.263 ms
     - 42.1
   * - bwd
     - NN
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 3.664 ms
     - 37.5
   * - bwd
     - NT
     - per-channel
     - ``BM64_BN128_BK64_W8_S3_SK1``
     - 3.485 ms
     - 39.4
   * - bwd
     - NT
     - subchannel-256
     - ``BM64_BN256_BK128_W8_S3_SK1``
     - 3.543 ms
     - 38.8
   * - bwd
     - TN
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 3.896 ms
     - 35.3
   * - bwd
     - TN
     - subchannel-256
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 4.396 ms
     - 31.3
   * - bwd
     - TT
     - per-channel
     - ``BM32_BN128_BK64_W4_S3_SK1``
     - 3.908 ms
     - 35.2
   * - bwd
     - TT
     - subchannel-256
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - 4.164 ms
     - 33.0

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

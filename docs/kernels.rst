Kernels and Launch Contract
===========================

Generated Matrix
----------------

The checked-in native matrix contains 2880 dense generated kernels plus 80
ragged generated artifacts:

* dense dtypes: ``int4 x int4`` and ``int8 x int8``;
* packaged native layouts: ``NN``, ``NT``, and ``TN``;
* scales: BF16 per-channel plus BF16 subchannel scales ``32``, ``64``,
  ``128``, and ``256``;
* epilogues: plain scaled GEMM, ReLU^2, and fused SwiGLU up/gate;
* schedules: standard plus an opt-in persistent schedule for plain int4 GEMM;
* split-K: ``1``, ``2``, ``4``, and ``8`` for plain GEMM.

The ragged matrix covers forward and backward modes, ``NN``/``NT``/``TN``/
``TT`` layouts, BF16 per-channel plus BF16 subchannel scales ``32``, ``64``,
``128``, and ``256``, and both ``evenk`` and ``maskk`` variants.
``RaggedDotConfig()`` and ``RaggedBwdDotConfig()`` are the packaged tile
source of truth. The packaged forward config is
``BM64_BN256_BK64_GST1_W8_S3`` and stores BF16. The packaged backward config
is ``BM64_BN256_BK64_W8_S3_SK1`` and stores FP32.

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
     - ``BM64_BN256_BK64_W8_S3_SK1``
     - ``evenk``, ``maskk``
     - FP32

Shape Contract
--------------

Generated artifacts are runtime-shape launchable. ``M``, ``N``, and ``K`` are
kernel arguments; the metadata ``generation_shape`` is the representative shape
used to compile and preserve IR.

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

Non-split kernels store BF16 outputs. Split-K kernels store FP32 outputs because
partial tiles are reduced with FP32 atomics.

Int4 subchannel kernels use ``tl.dot_scaled`` for packed int4 MMA into i32,
then apply the BF16 LHS/RHS subchannel scales once per completed subchannel
partial. This preserves subchannel scaled-dot semantics without repeating the
same scale multiply for every BK partial.

Triton Fork
-----------

Regeneration requires the Strix Halo Triton branch:

https://github.com/SamGinzburg/triton/tree/amd-strix-halo

Installing and running a packaged wheel does not require Triton.

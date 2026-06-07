# AMD Strix Halo Kernels

`amd-strix-halo-kernels` packages generated AMDGCN/HSACO GEMM kernels for AMD
Strix Halo (`gfx1151`). The package focuses on fast quantized GEMMs: particularly
`int4 x int4`, with `int8 x int8` support as well. Per-channel and subchannel
quant with BF16 scales, optional ReLU^2, and fused SwiGLU up/gate epilogues.

GFX1151 exposes higher theoretical throughput for int4 MMA than for int8 or
BF16 GEMM. This package provides generated kernels that use that path
directly, with explicit quantized inputs and BF16 scale tensors.

The artifacts are generated with a custom Triton branch that adds int4
`dot_scaled` lowering for Strix Halo and includes additional AMD backend
optimizations. Regeneration requires that branch; installing and launching a
built wheel does not require Triton.

Status: this is an experimental, hardware-specific package. Numerics are
covered by focused tests and random fake-quant references, but callers should
treat the APIs and generated matrix as evolving while the library matures.

The Python package provides:

- a small PyTorch-tensor API for native generated dispatch,
- a registry of pregenerated kernel metadata,
- benchmark/autotune helpers for selecting kernels by shape,
- checked-in Triton source, text IR, AMDGCN assembly, and benchmark records.

Full documentation is built with Sphinx:

```bash
uv run --group docs sphinx-build -b html docs docs/_build/html
```

Open `docs/_build/html/index.html` after the build, or read the source pages in
`docs/`.

## Installation

Build a local wheel:

```bash
uv build --wheel
```

Install the wheel into an environment with ROCm PyTorch:

```bash
uv pip install dist/amd_strix_halo_kernels-0.1.0-py3-none-linux_x86_64.whl
```

Runtime import does not require Triton. Native dispatch requires a compatible
ROCm HIP runtime, ROCm PyTorch, and the packaged HSACO artifacts from the wheel.
The wheel is runtime-only (about 28 MB): it ships the dispatch library, the
HSACO code objects, and the per-kernel JSON launch metadata. The AMDGCN
assembly and Triton IR used to generate those objects live in the repository,
not the wheel.

Check native runtime availability:

```python
from amd_strix_halo_kernels import dispatch_runtime_status

print(dispatch_runtime_status())
```

## Quick Start

The native kernels expect already-quantized integer tensors and BF16 scale
tensors. For int4, pack operands along the logical K dimension.

```python
import torch

from amd_strix_halo_kernels import Epilogue, GemmLayout, OperandDType, ScaleMode, ScaleSpec, mm
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

print(out.shape, out.dtype)
```

Use `fused_swiglu_up_gate(...)` when the RHS contains concatenated `[up | gate]`
columns. See `docs/pytorch.rst` for complete examples and limitations.

## API Overview

Primary imports are available from `amd_strix_halo_kernels`:

| API | Purpose |
| --- | --- |
| `mm(...)` | Surface API for regular single-output GEMMs. Supports plain GEMM and ReLU^2. |
| `fused_swiglu_up_gate(...)` | Fused up/gate GEMM plus `up * silu(gate)`. |
| `explicit_mm(..., kernel=...)` | Dispatch a specific registry kernel. |
| `ragged_dot_int4(...)` | Forward grouped ragged packed-int4 dot. Uses packaged HSACO for generated configs when available, with Triton-JIT fallback. |
| `ragged_dot_int4_bwd(...)` | K-ragged split-K grouped packed-int4 dot. Uses packaged HSACO for generated configs when available, with Triton-JIT fallback. |
| `calculate_group_info(...)` | Build compact aligned row-block tasks from `group_sizes`. |
| `autotune(...)` | Benchmark compatible packaged dense kernels for one shape. |
| `autotune_ragged_dot(...)` | Benchmark Triton-JIT ragged forward or backward candidate configs for one shape. |
| `default_registry` | Metadata registry for dtype, layout, scale mode, epilogue, schedule, tile, `split_k`, and `even_k`. |
| `torch_gemm(...)` | Lazy `torch.library.custom_op` wrapper around native dispatch. |
| `dispatch_runtime_status()` | Inspect HIP and packaged code-object availability. |

Use `mm(...)` for dense single-output GEMMs, `fused_swiglu_up_gate(...)` for a
dense GEMM whose RHS stores `[up | gate]`, and `ragged_dot_int4(...)` or
`ragged_dot_int4_bwd(...)` for grouped ragged shapes.
We don't support fully generalized grouped GEMMs (i.e., M, N, and K vary across problems).
Use `autotune(...)` when the caller wants the library to benchmark all compatible packaged dense
kernels for a shape. Use `explicit_mm(...)` or `torch_gemm(...)` when the caller
has already selected a specific `KernelMetadata` entry.

The PyTorch custom op is intended for tensor integration, including training
systems that explicitly choose these kernels for forward or manually wired
backward GEMMs. It is not a drop-in `torch.mm` replacement; autograd is not
registered. Callers must pass quantized/packed operands and BF16 scales.

## Dense Native Calls

Dense native dispatch works with already-quantized tensors. The selected
`layout` controls the logical operand shapes:

| Layout | Logical A | Logical B | int4 packed A | int4 packed B |
| --- | --- | --- | --- | --- |
| `GemmLayout.NN` | `(M, K)` | `(K, N)` | `(M, K / 2)` | `(K / 2, N)` |
| `GemmLayout.NT` | `(M, K)` | `(N, K)` | `(M, K / 2)` | `(N, K / 2)` |
| `GemmLayout.TN` | `(K, M)` | `(K, N)` | `(K / 2, M)` | `(K / 2, N)` |

Packaged dense native dispatch supports `GemmLayout.NN`, `GemmLayout.NT`, and
`GemmLayout.TN`. Ragged packaged HSACO and Triton-JIT fallback paths support
`GemmLayout.NN`, `GemmLayout.NT`, `GemmLayout.TN`, and `GemmLayout.TT`.

`mm(...)` selects a compatible standard or persistent kernel from the registry:

```python
from amd_strix_halo_kernels import (
    Epilogue,
    GemmLayout,
    KernelSchedule,
    OperandDType,
    ScaleMode,
    ScaleSpec,
    mm,
)

out = mm(
    a,
    b,
    a_scale=a_scale,
    b_scale=b_scale,
    dtype=OperandDType.INT4,
    layout=GemmLayout.NN,
    scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    epilogue=Epilogue.RELU2,
    schedule=KernelSchedule.STANDARD,
)
```

For fused SwiGLU, the RHS output dimension is doubled and stored as
`[up | gate]`. The API returns `up * silu(gate)` with shape `(M, D)`.

```python
from amd_strix_halo_kernels import fused_swiglu_up_gate

out = fused_swiglu_up_gate(
    a,
    b_up_gate,          # logical B shape (K, 2 * D) for NN
    a_scale=a_scale,
    b_scale=b_scale,    # per-channel shape (2 * D,)
    dtype=OperandDType.INT4,
    layout=GemmLayout.NN,
    scale=ScaleSpec(ScaleMode.PER_CHANNEL),
)
```

To choose a kernel yourself, read the tile metadata and pass it to
`explicit_mm(...)`:

```python
from amd_strix_halo_kernels import default_registry, explicit_mm

kernel = default_registry.get(
    "gfx1151_int4xint4_nn_pc_none_bm64_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"
)

assert M % kernel.tile.block_m == 0
assert N % kernel.tile.block_n == 0
assert K % (kernel.tile.block_k * kernel.tile.split_k) == 0

out = explicit_mm(a, b, kernel=kernel, a_scale=a_scale, b_scale=b_scale)
```

## Shape Contract

Packaged kernels are runtime-shape launchable, not exact `M/N/K` specialized.
`M`, `N`, and `K` are passed as runtime kernel arguments. The
`generation_shape` in artifact metadata records the representative compile/IR
preservation shape only.

Native fast-path dispatch is still tile-specialized. The logical runtime shape
must satisfy the selected kernel's tile values:

- `M % BLOCK_M == 0`
- `N % BLOCK_N == 0`
- `K % (BLOCK_K * SPLIT_K) == 0`
- for subchannel scales, `K % SUBCHANNEL == 0`

For example, a kernel with `BM64_BN512_BK32_SK1` accepts `M=128`,
`N=1024`, `K=64`, but rejects `M=96` and `N=768`. A `SK4` kernel with
`BK32` requires `K % 128 == 0`.

The public selector and autotuner return only `even_k` native artifacts that
satisfy this contract. `Epilogue.RELU2` and `fused_swiglu_up_gate(...)` support
only `SPLIT_K=1`; plain GEMM supports `SPLIT_K=1,2,4,8`. Non-split kernels
write BF16 outputs, while split-K kernels write FP32 outputs because partial
tiles are reduced with FP32 atomics.

Reference mode (`use_reference=True`) is available for arbitrary-shape
correctness checks and does not require native HSACO launchability.

## Dense Autotuning

`autotune(...)` benchmarks all packaged kernels that match the requested dtype,
layout, scale mode, epilogue, schedule, and tile-multiple shape. It uses
`triton.testing.do_bench` device timing with prepacked operands and does not
include dynamic quantization or reference fallback work.

```python
from amd_strix_halo_kernels import Epilogue, GemmLayout, OperandDType, ScaleMode, ScaleSpec, autotune, explicit_mm

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
)

print(result.best_kernel.kernel_id, result.best_record.tops)
out = explicit_mm(a, b, kernel=result.best_kernel, a_scale=a_scale, b_scale=b_scale)
```

`find_autotune_candidates(...)` returns the same launchable candidate set
without timing it. Pass `benchmark_db_path=...` to `autotune(...)` to append
records that later heuristic selection can reuse.

## Subchannel Scale Layout

Subchannel RHS scales must use weight-matched layout. The K-group axis is outer
and output columns are inner, matching how RHS weight tiles are consumed:

- regular GEMM: `b_scale[scale_cols, N]`
- fused SwiGLU: `b_scale[scale_cols, 2 * D]`
- ragged dot: `b_scale[G, scale_cols, N]`

Logical producer layouts such as `(N, scale_cols)` or `(G, N, scale_cols)` are
rejected by the API. Convert them explicitly with:

```python
from amd_strix_halo_kernels.quant import (
    pack_rhs_subchannel_scales,
    pack_ragged_rhs_subchannel_scales,
)

b_scale = pack_rhs_subchannel_scales(b_scale_logical)
ragged_b_scale = pack_ragged_rhs_subchannel_scales(ragged_b_scale_logical)
```

The library does not transpose RHS scales implicitly in native, benchmark, or
training-oriented paths; hidden copies would make timings misleading.

## Ragged Dot

`ragged_dot_int4(...)` is a forward grouped ragged dot API, modeled after the
`jax.lax.ragged_dot` shape contract. By default it launches a packaged HSACO
artifact when the requested layout, scale mode, config, and even-K/masked
variant are in the generated matrix; otherwise it falls back to Triton JIT. Set
`use_native=True` to require packaged HSACO and fail instead of falling back.
Set `use_native=False` to force JIT compilation. `RaggedDotConfig()` and
`RaggedBwdDotConfig()` default to the shipped precompiled tiles.

```python
from amd_strix_halo_kernels import GemmLayout, RaggedDotConfig, ScaleMode, ScaleSpec, ragged_dot_int4

out = ragged_dot_int4(
    lhs_packed,          # uint8, shape (M, K / 2)
    rhs_packed,          # uint8, shape (G, K / 2, N)
    group_sizes,         # integer, shape (G,), sum == M
    a_scale=a_scale,     # BF16, shape (M,)
    b_scale=b_scale,     # BF16, shape (G, N)
    scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    config=RaggedDotConfig(),
    layout=GemmLayout.NN,
    use_native=True,
)
```

Rows of `lhs_packed` are partitioned contiguously by `group_sizes`; rows in
group `g` multiply `rhs_packed[g]`. Subchannel scales use
`a_scale[M, ceil(K / S)]` and weight-matched
`b_scale[G, ceil(K / S), N]`. The kernel uses
`tl.dot_scaled(..., "int4", ..., "int4", out_dtype=tl.int32)`, applies BF16
scales in FP32, and stores BF16 for the packaged forward artifacts. Autograd is
not registered.

The launch uses `calculate_group_info(group_sizes, tile, align_tile=8)` to
build compact task ids instead of a rectangular `max_group_size x G` grid.
Each task contains `(group_id, block_start, actual_start, actual_end,
start_within_block, actual_size)`. `block_start` is aligned down to the
`block_m` tile boundary, while the kernel masks rows outside
`[actual_start, actual_end)`. `calculate_group_info(..., allow_triton=False)`
uses the pure-Torch path, so native dispatch does not require Triton to build
this metadata.

The ragged kernels take logical `N`, packed `K`, scale-column count, and task
count as runtime arguments. They do not bake `M`, `N`, or `K` into the compiled
artifact. `RaggedDotConfig.group_size_tasks` controls the 1D L2 tile swizzle
over compact row tasks and N tiles.

When `RaggedDotConfig.enable_even_k_fast_path=True`, the library automatically
uses an even-K artifact when `K % BLOCK_K == 0`. Subchannel fast-path dispatch
also requires `K % SUBCHANNEL == 0` and a scale chunk size compatible with
`BLOCK_K`. This fast path still receives `N` and packed `K` as runtime
arguments. It keeps row and column predicates for irregular `group_sizes` and
edge `N` tiles; only K predicates are removed inside the kernel. Shapes with
ragged K use the fully masked artifact.

`ragged_dot_int4(...)` supports `NN`, `NT`, `TN`, and `TT` packed operand
layouts. The transposed layouts follow the same packed-K conventions as dense
GEMM dispatch: transposed operands place the packed-K axis before the logical
row or output-column axis.

`ragged_dot_int4_bwd(...)` covers backward-style K-ragged reductions. Each
group computes `out[g] = op(lhs[g]) @ op(rhs[g])` with output shape `(M, N)`
and a group-specific reduction length `group_sizes[g]`. Operands are padded to
a shared packed-K capacity. It also prefers packaged HSACO for generated
configs and falls back to JIT unless `use_native=True`. With
`RaggedBwdDotConfig.enable_even_k_fast_path` enabled, the training-oriented fast
path removes K masks when every non-empty group length is a multiple of
`BLOCK_K`; subchannel scales additionally require each non-empty group length
to be a multiple of the subchannel size. Other shapes use the masked K-ragged
path. Packaged backward artifacts use `SPLIT_K=1` and store FP32 outputs.
Packed grouped operand shapes are:

- `NN`: `lhs[G, M, K / 2]`, `rhs[G, K / 2, N]`
- `NT`: `lhs[G, M, K / 2]`, `rhs[G, N, K / 2]`
- `TN`: `lhs[G, K / 2, M]`, `rhs[G, K / 2, N]`
- `TT`: `lhs[G, K / 2, M]`, `rhs[G, N, K / 2]`

Use `autotune_ragged_dot(...)` to benchmark candidate ragged configurations
for either mode:

```python
from amd_strix_halo_kernels import GemmLayout, RaggedDotMode, ScaleMode, ScaleSpec, autotune_ragged_dot

result = autotune_ragged_dot(
    mode=RaggedDotMode.FWD,       # or RaggedDotMode.BWD
    m=4096,
    n=4096,
    k=4096,
    group_sizes=[512] * 8,        # fwd: sum == M; bwd: sum == K
    layout=GemmLayout.NN,
    scale=ScaleSpec(ScaleMode.PER_CHANNEL),
    warmup_ms=25,
    rep_ms=100,
)
print(result.best_candidate.config_label, result.best_record.tops)
```

For backward autotuning, `k` is the logical total reduction work and
`group_sizes` partitions that K work across groups. Synthetic benchmark
operands are padded to a per-group `k_capacity`, which defaults to
`max(group_sizes)` and can be overridden explicitly.

## Kernel Coverage

The checked-in matrix currently contains 2880 dense generated kernels plus
80 ragged generated artifacts:

- dense dtypes: `int4 x int4`, `int8 x int8`,
- packaged native layouts: `NN`, `NT`, `TN`,
- scale modes: BF16 per-channel and BF16 subchannel scales `32`, `64`, `128`,
  and `256`,
- epilogues: plain scaled GEMM, ReLU^2, fused SwiGLU up/gate,
- schedules: standard plus opt-in persistent schedule for plain int4 GEMM,
- split-K: `1`, `2`, `4`, and `8` for plain GEMM.

Ragged artifacts cover forward and backward modes, `NN`/`NT`/`TN`/`TT`
layouts, per-channel plus subchannel `32`/`64`/`128`/`256` scales, and both
`evenk` and `maskk` variants. The dataclass defaults are the packaged tile
source of truth. The default packaged forward config is
`BM64_BN256_BK64_GST1_W8_S3` and stores BF16. The default packaged backward
config is `BM64_BN256_BK64_W8_S3_SK1` and stores FP32.

Non-split dense kernels write BF16 outputs. Split-K dense kernels write FP32
because their partial tiles are reduced with FP32 atomics.

`GemmLayout.TT` is present as a metadata value, but dense packaged native
dispatch is generated only for `NN`, `NT`, and `TN`. Ragged packaged HSACO and
JIT fallback paths support `TT`.

## Performance Snapshot

The table below reports the latest packaged-native 4096x4096x4096 autotune
results measured with `triton.testing.do_bench`, prepacked operands, BF16 scale
tensors, and preallocated outputs.

All benchmarks are run on a Framework Strix Halo desktop. Clocks were not
pinned, so treat the table as a throughput snapshot rather than a lab-grade
hardware characterization. The key result is that int4 MMA provides roughly
2x the throughput of int8 or BF16 on this target.

| Kernel | Scale | Tile | Runtime | TOPS |
| --- | --- | --- | ---: | ---: |
| int4 plain GEMM | per-channel | `BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK` | 1.81 ms | 76.0 |
| int4 plain GEMM | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 2.15 ms | 63.8 |
| int4 ReLU^2 | per-channel | `BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK` | 1.81 ms | 75.8 |
| int4 ReLU^2 | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 2.16 ms | 63.6 |
| int4 fused SwiGLU | per-channel | `BM128_BN128_BK32_GM4_W16_S3_WEU2_SK1_EVENK` | 4.56 ms | 60.3 |
| int4 fused SwiGLU | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 4.62 ms | 59.5 |
| int8 plain GEMM | per-channel | `BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK` | 5.34 ms | 25.7 |
| int8 plain GEMM | subchannel-256 | `BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK` | 5.61 ms | 24.5 |

For fused SwiGLU, TOPS counts both up and gate GEMMs.
BF16-store correctness may differ by one ULP from the BF16 reference on values
near rounding ties; FP32 split-K paths should be evaluated separately.

### Ragged Dot Performance Snapshot

The table below reports 4096x4096x4096 balanced-group rows from
`benchmarks/ragged_dot_int4.json`. The full checked-in sweep contains 816
candidate timing records across 3 runtime shapes, balanced/uneven group
distributions, all four layouts, per-channel/subchannel-256 scales, forward
M-ragged dot, and backward K-ragged split-K dot. The default grid benchmarks 7
forward candidates and 10 backward candidates per shape/layout/scale/case.
Timings use 8 RHS groups, prepacked operands, BF16 scales, preallocated
outputs, and exclude quantization/packing.

| Mode | Layout | Scale | Best config | Runtime | TOPS |
| --- | --- | --- | --- | ---: | ---: |
| fwd | NN | per-channel | `BM64_BN256_BK64_GST1_W8_S3` | 2.258 ms | 60.9 |
| fwd | NN | subchannel-256 | `BM32_BN128_BK64_GST1_W4_S3` | 2.738 ms | 50.2 |
| fwd | NT | per-channel | `BM64_BN256_BK128_GST1_W8_S3` | 4.063 ms | 33.8 |
| fwd | NT | subchannel-256 | `BM64_BN128_BK64_GST2_W8_S3` | 4.167 ms | 33.0 |
| fwd | TN | per-channel | `BM64_BN256_BK64_GST1_W8_S3` | 3.297 ms | 41.7 |
| fwd | TN | subchannel-256 | `BM32_BN128_BK64_GST1_W4_S3` | 3.854 ms | 35.7 |
| fwd | TT | per-channel | `BM64_BN128_BK64_GST2_W8_S3` | 5.292 ms | 26.0 |
| fwd | TT | subchannel-256 | `BM64_BN128_BK64_GST2_W8_S3` | 4.627 ms | 29.7 |
| bwd | NN | per-channel | `BM32_BN128_BK64_W4_S3_SK1` | 3.263 ms | 42.1 |
| bwd | NN | subchannel-256 | `BM32_BN128_BK64_W4_S3_SK1` | 3.664 ms | 37.5 |
| bwd | NT | per-channel | `BM64_BN128_BK64_W8_S3_SK1` | 3.485 ms | 39.4 |
| bwd | NT | subchannel-256 | `BM64_BN256_BK128_W8_S3_SK1` | 3.543 ms | 38.8 |
| bwd | TN | per-channel | `BM32_BN128_BK64_W4_S3_SK1` | 3.896 ms | 35.3 |
| bwd | TN | subchannel-256 | `BM32_BN128_BK64_W4_S3_SK1` | 4.396 ms | 31.3 |
| bwd | TT | per-channel | `BM32_BN128_BK64_W4_S3_SK1` | 3.908 ms | 35.2 |
| bwd | TT | subchannel-256 | `BM64_BN256_BK64_W8_S3_SK1` | 4.164 ms | 33.0 |

The checked-in records live in `benchmarks/ragged_dot_int4.json`. The benchmark
script is a reporting wrapper around `autotune_ragged_dot(...)`; regenerate the
records with:

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/benchmark_ragged_dot.py \
  --warmup-ms 25 \
  --rep-ms 100 \
  --output benchmarks/ragged_dot_int4.json
```

The ragged benchmark records are timing records. Correctness for per-channel,
subchannel, balanced, uneven, and empty-group cases is covered by
`tests/test_ragged_dot.py` against grouped Torch references. Record metadata
includes `uses_even_k_fast_path` and `masks_k` for separating aligned fast-path
rows from fully masked ragged-K rows.

## Triton Fork and Regeneration

Regenerating Triton IR or AMDGCN requires the Strix Halo Triton fork:

<https://github.com/SamGinzburg/triton/tree/amd-strix-halo>

Set `TRITON_CHECKOUT` to a local checkout of that branch and run from this
repository:

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
uv run --project "$TRITON_CHECKOUT" python scripts/generate_ragged_amdgcn.py --clean --no-triton-artifacts
```

`scripts/regenerate_amdgcn.py` regenerates the dense matrix.
`scripts/generate_ragged_amdgcn.py` regenerates the ragged `.s` and `.json`
artifact set. Wheel builds assemble every `kernels/amdgcn/*.s` file into
`kernels/hsaco/*.hsaco` with ROCm `llvm-mc`/`lld`, then install the `.hsaco`
files plus matching JSON metadata.

The generated artifacts are checked in under `kernels/amdgcn/` and
`kernels/triton/`. Do not hand-edit generated assembly or Triton IR; update the
registry/generator scripts, regenerate, and keep matching metadata JSON.

## Development

```bash
uv sync --extra torch --group docs
uv run python -m pytest
uv run --group docs sphinx-build -b html docs docs/_build/html
uv build --wheel
```

To run the tests against the actual gfx1151 GPU you need a ROCm PyTorch and the
built native dispatch library. Two mutually exclusive extras provide the ROCm
stack on a Strix Halo host (cp312 wheels):

```bash
# Fast path: stock ROCm Triton. Runs everything except the subchannel-scale
# ragged tests, which skip via a capability guard.
uv sync --extra rocm
uv build --wheel && uv pip install --reinstall-package amd-strix-halo-kernels dist/*.whl

# Full path: the Strix Halo Triton fork (github.com/SamGinzburg/triton, branch
# amd-strix-halo) so the subchannel-scale ragged kernels compile. This builds
# Triton from source.
uv sync --extra rocm-triton-fork
```

Build a PyPI-uploadable wheel (build, `auditwheel` repair to `manylinux`, and
the portability/`twine check` gates) in one step on a ROCm host:

```bash
uv run --extra publish python scripts/build_release.py
```

See `docs/development.rst` for regeneration, benchmarking, and wheel
portability commands, and `RELEASING.md` for the PyPI publishing flow.

## Contributing

Contributions are welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the
development workflow, how the generated kernel artifacts are produced, and the
conventions to follow when sending changes.

## License

Released under the MIT License. See [`LICENSE`](LICENSE) for the full text.

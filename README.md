# AMD Strix Halo Kernels

`amd-strix-halo-kernels` packages generated AMDGCN/HSACO GEMM kernels for AMD
Strix Halo (`gfx1151`). The package focuses on fast quantized GEMMs: particularly
`int4 x int4`, with `int8 x int8` support as well. Per-channel and subchannel
quant with BF16 scales, optional ReLU^2, and fused SwiGLU up/gate epilogues.

GFX1151 exposes higher theoretical throughput for int4 MMA than for int8 or
BF16 GEMM (which have equal peak throughputs---so no speedup from int8 over bf16).
This package provides generated kernels that use int4 MMA---actually providing a speedup on GFX1151,
with support for quantized inputs and BF16 scale tensors.

Why? Well it turns out that for the most part, major ML frameworks (e.g., torch, jax) don't have adequate support for int4 mma (i.e., W4A4).
Mainstream kernel compilers like Triton do not support int4 mma either. INT4 W4A8 and W4A16 kernels are fairly common on Hopper, but the activations are performed in FP8 or bf16 as WGMMA does not support int4.

So I vibe coded a patch to Triton to support int4 mma, generated ~a few thousand kernels, and linked them into this wheel for hobbyist usage.
Hopefully this is useful to others as well.

***
⚠️ ⚠️ ⚠️ This repo is largely vibe coded with prompts/inputs that I provided. ⚠️ ⚠️ ⚠️ 

I did verify numerics with a combination of unit tests and training some toy models locally on my machine.
See `tests/` for more details on verification. I did not manually read or audit all of the code.
***

Kernels are generated with a [custom Triton branch](https://github.com/SamGinzburg/triton/tree/amd-strix-halo) that adds int4
`dot_scaled` for Strix Halo/GFX1151 and includes one additional AMD backend
optimization (OptimizeEpilogue---see `wmma-v1-store-layout.mlir` to understand the optimization better). Regeneration requires installing that branch; installing and launching a
built wheel does not require Triton.

The Python package provides:

- a small PyTorch-tensor API for native generated dispatch,
- a registry of pregenerated kernel metadata,
- benchmark/autotune helpers for selecting kernels by shape,
- checked-in Triton source, text IR, AMDGCN assembly, and benchmark records.

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
The wheel is runtime-only (about 34.4 MiB): it ships the dispatch library, the
HSACO code objects, and the per-kernel JSON launch metadata. The AMDGCN
assembly and Triton IR used to generate those objects live in the repository,
not the wheel.

Compiling the vendored triton kernel with int4 mma requires the fork of Triton referenced above.

Check native runtime availability:

```python
from amd_strix_halo_kernels import dispatch_runtime_status

print(dispatch_runtime_status())
```

## Quick Start

The native kernels expect pre-quantized int4 tensors and BF16 scale
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
| `int4_scaled_dot_product_attention(...)` | Forward fused attention with BF16 or packed INT4 Q/K and V operands; packaged D64 HSACO with JIT fallback. |
| `reference_scaled_dot_product_attention(...)` | Quantization-matched FP32 arithmetic oracle for fused attention. |
| `quantize_attention_qk_int4(...)` | Per-token signed-INT4 quantization and head-dimension packing for Q/K. |
| `quantize_attention_value_int4(...)` | Per-16-token signed-INT4 quantization and sequence-dimension packing for V. |
| `explicit_mm(..., kernel=...)` | Dispatch a specific registry kernel. |
| `ragged_dot_int4(...)` | Forward grouped ragged packed-int4 dot. Uses packaged HSACO for generated configs when available, with Triton-JIT fallback. |
| `ragged_dot_int4_bwd(...)` | K-ragged split-K grouped packed-int4 dot with automatic tuned JIT/exact-native BF16 dispatch and explicit backend control. |
| `ragged_dot_int4_bwd_accum(...)` | Dropless 64-row task-packed int4 weight-gradient accumulation with one fp32 or bf16 output per expert. |
| `calculate_group_info(...)` | Build exact compact aligned row-block tasks from `group_sizes`. |
| `prepare_ragged_group_info(...)` | Build fixed-capacity device-only row-block tasks for graph capture and projection reuse. |
| `prepare_ragged_bwd_group_info(...)` | Prevalidate fixed-capacity backward group metadata for graph-safe replay. |
| `ragged_group_info_capacity(...)` | Compute the static safe task bound used by graph-safe preparation. |
| `autotune(...)` | Benchmark compatible packaged dense kernels for one shape. |
| `autotune_attention(...)` | Numerically validate and benchmark fused BF16/INT4 attention configs on caller-provided tensors. |
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

`Epilogue.RELU2` and `fused_swiglu_up_gate(...)` support
only `SPLIT_K=1`; plain GEMM supports `SPLIT_K=1,2,4,8`. Non split-K kernels
write BF16 outputs, while split-K kernels write FP32 outputs because partial
tiles are reduced with FP32 atomics. Decompose-K is not used because we aren't
fusing anything into epilogues here.

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

Mixed BF16-by-int4 kernel metadata is intentionally kept out of
`default_registry` until corresponding native artifacts and benchmark records
are generated. Use `mixed_dtype_registry` for explicit development and
generation work; `scripts/generate_amdgcn.py --kernel-id ...` resolves exact
IDs from that registry. Mixed generation is standard-schedule only; unsupported
persistent BF16-by-int4 entries are not registered. The default registry
continues to describe exactly the kernels shipped by the package; none of the
1080 development-only mixed entries is currently packaged.

The direct Triton tuner scripts accept `--dtype bf16` to evaluate BF16×INT4
with dynamic activation scales and validate candidates at `rtol=atol=1e-3`.
This path quantizes each BF16 activation tile inside every output-N program,
so it repeats activation work instead of reusing a packed A tensor. A separate
4096³ per-channel plain-GEMM measurement reached about 9.26 TOPS versus 77.1
TOPS with prepacked INT4. Prefer explicit reusable activation quantization and
the standard INT4 path for throughput-sensitive or multi-projection workloads.

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

For CUDA/HIP graph capture, prepare a fixed-capacity task map on device and
pass it back to one or more projections:

```python
from amd_strix_halo_kernels import prepare_ragged_group_info

group_info = prepare_ragged_group_info(
    group_sizes,
    config.block_m,
    rows=lhs_packed.shape[0],
    align_tile=config.align_tile,
)
gate_up = ragged_dot_int4(
    lhs_packed,
    gate_up_rhs,
    group_info=group_info,
    a_scale=a_scale,
    b_scale=gate_up_scale,
    config=config,
    use_native=True,
)
down = ragged_dot_int4(
    hidden_packed,
    down_rhs,
    group_info=group_info,
    a_scale=hidden_scale,
    b_scale=down_scale,
    config=config,
    use_native=True,
)
```

`prepare_ragged_group_info(...)` never reads tensor values on the host. The
producer must guarantee non-negative `group_sizes` whose sum equals `rows`.
Its static task capacity safely covers every valid partition with those
static row/group/tile shapes; unused slots are zero-filled and masked by the
GEMM. Call preparation inside the captured function when `group_sizes` changes
between replays, and reuse the returned metadata for projections in that same
replay. Warm the exact metadata and native-kernel configurations once before
capture so Triton compilation and HSACO module loading occur outside the
graph.

Graph capture is supported by forward with device-prepared ``group_info`` and
by standard backward with prevalidated ``RaggedBwdGroupInfo`` plus a pinned
backend and preallocated output. Raw backward ``group_sizes`` and
``ragged_dot_int4_bwd_accum(...)`` still validate values on the host and must
run outside capture.

Generic packaged ragged kernels take logical `N`, packed `K`, scale-column
count, and task count as runtime arguments without baking in their values or
alignments. They handle eligible runtime dimensions around block boundaries
with edge predicates. Forward artifacts also keep compact task count runtime.
The 20 wide-store backward artifacts are the documented exact-4096-capacity
exception. In contrast, the public forward Triton-JIT/fallback path uses normal
value and alignment specialization for aligned-shape performance, so a new
runtime shape can compile another JIT variant. Per-mode fast-path eligibility
and the specialized `bwd_accum` input contract still apply.
`RaggedDotConfig.group_size_tasks` controls the 1D L2 tile swizzle over compact
row tasks and N tiles.

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
a shared even packed-K capacity. With `config=None`, measured
layout/scale/K-variant/output-specific tiles are selected. The even-K variant
removes K masks at compile time; the masked-K variant runs complete blocks
unmasked and masks only the final partial block and odd int4 nibble.

With no `out` or `output_dtype`, `SPLIT_K=1` defaults to BF16; a supplied `out`
infers its dtype, and callers that require FP32 master gradients can request
`output_dtype=torch.float32` explicitly. `SPLIT_K>1` defaults to and requires
FP32 because reduction uses FP32 atomics. BF16 rounds the FP32 accumulator once
at the epilogue.

Automatic BF16 dispatch uses shape-specialized JIT for generic shapes and
capacities. It selects packaged wide-store native code only for eligible
16-byte-aligned `M=N=K_capacity=4096` NN/TN outputs. Explicit
`use_native=True` also permits generic native artifacts: even, 4-byte-aligned N
uses paired stores and odd or misaligned output uses the scalar fallback.

Raw `group_sizes` is host-validated and is not capture-safe. For CUDA/HIP graph
capture, call `prepare_ragged_bwd_group_info(...)` before capture, pass
`group_sizes=None` with the returned `group_info`, preallocate `out`, warm the
exact launch, and pin `use_native=True` or `False`. The default immutable
prepared path may select even-K; `dynamic_group_sizes=True` fixes masked-K and
permits in-place int32 updates in `[0, k_capacity]` between replays. Prepared
`k_capacity` must be even for packed int4 storage.
Packed grouped operand shapes are:

- `NN`: `lhs[G, M, K / 2]`, `rhs[G, K / 2, N]`
- `NT`: `lhs[G, M, K / 2]`, `rhs[G, N, K / 2]`
- `TN`: `lhs[G, K / 2, M]`, `rhs[G, K / 2, N]`
- `TT`: `lhs[G, K / 2, M]`, `rhs[G, N, K / 2]`

`ragged_dot_int4_bwd_accum(...)` is the compact dropless-MoE weight-gradient
variant. Its operands contain 64-row tasks packed along the row axis:
`lhs[T, 32, M]` and `rhs[T, 32, N]`, with BF16 per-task/channel scales
`a_scale[T, M]` and `b_scale[T, N]`. `expert_task_ranges[E, 2]` assigns
each expert a contiguous half-open task range. The TN kernel accumulates every
task in that range in FP32 registers and writes `out[E, M, N]` once, avoiding
both a worst-case padded routed batch and atomic partial-gradient buffers.
Tasks must use `block_k=64` and `split_k=1`; the shipped tuned artifact uses
`block_m=32`, `block_n=128`, four warps, and two stages. The caller prepares
and quantizes tasks, including zero-padding a final partial task. All operands,
scales, ranges, and an optional output must be contiguous CUDA/HIP tensors on
one device. Ranges may be int32 or int64 and must satisfy
`0 <= start <= end <= T`; int64 ranges are converted to int32 before native
dispatch to match the packaged ABI. Range validation reads the values on the
host, so prepare and validate this metadata outside graph capture.

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
`max(group_sizes)` rounded up to an even packed-int4 capacity and can be
overridden explicitly; odd overrides are rounded up too. Ragged autotuning
always passes `use_native=False`: its results describe shape-specialized JIT
rather than packaged HSACO dispatch.

## Fused BF16/INT4 Attention

`int4_scaled_dot_product_attention(...)` is a forward-only Triton-JIT fused
scaled-dot-product attention API. Tensors use logical order `(B, H, S, D)` and
the output is `(B, Hq, Lq, Dv)`. Q and K must use the same representation;
V can be selected independently, giving four execution modes:

| Q/K | V | Physical input shapes | Scale shapes |
| --- | --- | --- | --- |
| BF16 | BF16 | Q `[B,Hq,Lq,D]`; K `[B,Hkv,Lk,D]`; V `[B,Hkv,Lk,Dv]` | none |
| INT4 | BF16 | packed Q/K `[...,ceil(D/16)*8]`; BF16 V | Q `[B,Hq,Lq]`; K `[B,Hkv,Lk]` |
| BF16 | INT4 | BF16 Q/K; packed V `[B,Hkv,ceil(Lk/16)*8,Dv]` | V `[B,Hkv,ceil(Lk/16),Dv]` |
| INT4 | INT4 | both packed layouts above | Q, K, and V scales above |

The quantization helpers produce those packed tensors and BF16 scales:

```python
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
)
```

BF16 Q/K use BF16 MMA and packed Q/K use signed INT4 MMA. P@V always uses
BF16 MMA: online-softmax probabilities remain BF16, while packed INT4 V is
dequantized tile-wise with its per-16-token BF16 scales. There is no online
quantization of P. Thus “INT4 V” describes input storage and bandwidth, not an
INT4 P@V dot product. `head_dim` and `Dv` are limited to 256. The optimized
path requires contiguous CUDA/HIP Q/K/V, `dropout_p=0`, and tensors that do
not require gradients. Output defaults to BF16; FP32 is available with
`output_dtype=torch.float32`.

Boolean and additive BF16/FP32 masks broadcast to `[B,Hq,Lq,Lk]`;
`attn_mask` and `is_causal=True` are mutually exclusive. `window_size=w`
means the inclusive local window `(w,w)`, while `(left,right)` is asymmetric.
For cached decode, `query_position_offset` maps the local query row to its
absolute position. GQA requires `enable_gqa=True` when `Hq != Hkv`, with
`Hq % Hkv == 0`.

Tune the actual operand representation, shape, GQA, mask/window, and output
dtype before graph capture with `autotune_attention(...)`:

```python
from amd_strix_halo_kernels import autotune_attention, int4_scaled_dot_product_attention

tuning = autotune_attention(
    q4,
    k4,
    value,
    query_scale=q_scale,
    key_scale=k_scale,
    head_dim=head_dim,
    enable_gqa=True,
    window_size=(127, 0),
    warmup_ms=25,
    rep_ms=100,
    benchmark_db_path="benchmarks/local_attention.json",
)
out = int4_scaled_dot_product_attention(
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
```

The tuner infers one of the four BF16/INT4 QK-by-PV modes from the supplied
tensors and scales. Every candidate must pass both the FP32 matched-oracle
check and the actual timed-output check at `rtol=atol=1e-3` or a stricter
caller-supplied tolerance. Inputs are already packed and outputs/workspaces
are preallocated, so quantization and allocation are excluded from timing.
`benchmark_db_path` appends complete shape, masking, arithmetic, timing, and
numerical metadata; use `best_config` explicitly for subsequent dispatch.
Tuning is eager and cannot run inside CUDAGraph capture.

Decode can use split reduction only at `Lq=1`. During CUDAGraph capture, pass a
preallocated contiguous `out` and, when `config.decode_splits > 1`, a
contiguous FP32 `workspace` of shape
`[B,Hq,decode_splits,Dv+2]`; workspace is rejected for `decode_splits=1`.
Warm the exact mode, shapes, configuration, and mask form before capture.

For arithmetic validation, compare the optimized path with
`reference_scaled_dot_product_attention(...)` or set `use_reference=True` and
request FP32 output; all four modes use `rtol=atol=1e-3` against that matched
quantized oracle. INT4 Q/K with BF16 V remains close to the original BF16
PyTorch result (measured relative L2 at most 0.03 and cosine at least 0.999).
Modes with INT4 V are experimental (relative L2 at most 0.12 and cosine at
least 0.99 across dense, ragged, causal, local, and GQA tests); elementwise
`1e-3` agreement with unquantized BF16 is not an
appropriate quantization-quality criterion. BF16 output can differ from the
FP32 oracle rounded to BF16 by one BF16 ULP at larger magnitudes.

The complete gfx1151 sweep below uses `B=1`, `Hq=Hkv=8`, and `D=Dv=64`.
Prefill is `Lq=Lk=512`, decode is `Lq=1,Lk=2048`, and local is
`Lq=Lk=512,window_size=(127,0)`. INT4 means packed signed-INT4 input storage
with BF16 scales; P@V is BF16 MMA and the online-softmax/output accumulation
is FP32 in every row. Ratios use an allocation-including PyTorch BF16 SDPA
baseline; custom timings exclude quantization, allocation, and packing.
These recorded timings are the tuning-run JIT measurements; the wheel now
packages the measured/default D64 configurations as equivalent native HSACO.

| Q/K storage | V storage | Prefill runtime / PyTorch | Decode runtime / PyTorch | Local runtime / PyTorch |
| --- | --- | ---: | ---: | ---: |
| BF16 | BF16 | 0.037370 ms / 1.51x | 0.047249 ms / 3.14x | 0.026690 ms / 3.40x |
| INT4 | BF16 | 0.029615 ms / 1.91x | 0.037451 ms / 3.96x | 0.020678 ms / 4.39x |
| BF16 | INT4 | 0.057588 ms / 0.98x | 0.050434 ms / 2.94x | 0.032301 ms / 2.81x |
| INT4 | INT4 | 0.041758 ms / 1.35x | 0.037470 ms / 3.96x | 0.023524 ms / 3.86x |

All 156 candidates passed the representation-matched FP32 and timed-BF16
checks at `rtol=atol=1e-3`; winner FP32 maximum absolute errors were at most
`3.23e-4`. Correcting P@V from online-quantized probabilities to BF16
probabilities plus tile-dequantized V improved packed-V prefill by 17.4% for
BF16 Q/K and 33.9% for INT4 Q/K versus the preceding implementation.

The exact training-attention rows use
`B=7,Hq=16,Hkv=8,Lq=Lk=2048,D=Dv=64`. BF16-value rows select
`BM64_BN64_W4_S1`; packed-V rows select `BM64_BN16_W4_S1`.

| Attention workload | Storage / accumulation / output | Runtime | Throughput | PyTorch BF16 | Verified numerics |
| --- | --- | ---: | ---: | ---: | --- |
| full | BF16 Q/K/V / FP32 / BF16 | 3.727353 ms | 32.264 TOPS | 7.560022 ms; 2.03x | FP32 max abs `4.16e-5`; timed BF16 max abs `1.23e-4` |
| local `(127,0)` | BF16 Q/K/V / FP32 / BF16 | 0.570430 ms | 12.768 effective TOPS | 133.235092 ms; 233.57x* | FP32 max abs `1.87e-4`; timed BF16 max abs `4.89e-4` |
| full | BF16 Q/K + INT4 V / BF16 P@V, FP32 accum / BF16 | 4.867351 ms | 24.707 TOPS | 7.587160 ms; 1.56x | FP32 max abs `4.29e-5`; timed BF16 max abs `1.22e-4` |
| local `(127,0)` | BF16 Q/K + INT4 V / BF16 P@V, FP32 accum / BF16 | 0.697428 ms | 10.443 effective TOPS | 133.055969 ms; 190.78x* | FP32 max abs `2.86e-4`; timed BF16 max abs `9.77e-4` |
| full | INT4 Q/K/V / INT4 Q@K, BF16 P@V, FP32 accum / BF16 | 4.462832 ms | 26.947 TOPS | 7.587160 ms; 1.70x | FP32 max abs `4.36e-5`; timed BF16 max abs `1.22e-4` |
| local `(127,0)` | INT4 Q/K/V / INT4 Q@K, BF16 P@V, FP32 accum / BF16 | 0.500138 ms | 14.562 effective TOPS | 133.055969 ms; 266.04x* | FP32 max abs `2.64e-4`; timed BF16 max abs `9.77e-4` |

Both the FP32 validation output and the actual timed BF16 output passed
`rtol=atol=1e-3` against the representation-matched oracle for all 36 BF16
and all 24 packed-V candidates. `*` Each local PyTorch baseline used one
sample and a generic
boolean mask that fell off its fused fast path, so it is diagnostic rather
than an apples-to-apples fused-kernel speedup. Local BF16 Q/K defaults to BN64
for `Lq >= 1024` and retains BN32 for shorter queries.

The wheel packages 484 forward-attention artifacts and four split-decode
reducers for `D=Dv=64`. The forward set contains 104 generic runtime-shape and
runtime-semantics objects plus 380 specialized objects for the measured
`Hq/Hkv/Lq/Lk` profiles `(8,8,512,512)`, `(16,8,2048,2048)`, and
`(8,8,1,2048)`. It covers all four Q/K-by-V storage modes, no mask or
bool/BF16/FP32 mask pointers, BF16/FP32 output, and the measured/default launch
configs above. `use_precompiled=None` selects the exact profile when available,
then the generic native object, while `True` requires packaged coverage and
`False` forces JIT. Uncovered dimensions/configs retain the custom-Triton JIT
fallback.

On the packaged `(B,Hq,Hkv,Lq,Lk,D,Dv)=(1,8,8,512,512,64,64)` BF16 profile,
`BM64_BN64_W4_S1` measured 0.036228 ms / 14.819 effective TOPS versus
0.039234 ms / 13.684 TOPS for matched JIT (7.7% lower native latency). The
native record passed `rtol=atol=1e-3` FP32 validation with maximum absolute
error `6.07e-5`; timed BF16 maximum absolute error was `2.45e-4`.

## Kernel Coverage

The checked-in matrix currently contains 3,552 native artifacts: 2,882 dense
generated kernels, 182 ragged generated artifacts, and 488 fused-attention
artifacts:

- dense dtypes: `int4 x int4`, `int8 x int8`,
- packaged native layouts: `NN`, `NT`, `TN`,
- scale modes: BF16 per-channel and BF16 subchannel scales `32`, `64`, `128`,
  and `256`,
- epilogues: plain scaled GEMM, ReLU^2, fused SwiGLU up/gate,
- schedules: standard plus opt-in persistent schedule for plain int4 GEMM,
- split-K: `1`, `2`, `4`, and `8` for plain GEMM,
- two exact subchannel-256 TN projection-gradient specializations at the
  `M=14336` training microbatch.

Ragged artifacts cover forward and backward modes, `NN`/`NT`/`TN`/`TT`
layouts, per-channel plus subchannel `32`/`64`/`128`/`256` scales, and both
`evenk` and `maskk` variants. The dataclass defaults are the packaged tile
source of truth. The default packaged forward config is
`BM64_BN256_BK64_GST1_W8_S3` and stores BF16. The default packaged backward
matrix contains 40 generic FP32 artifacts, 80 generic BF16 paired/scalar-store
artifacts, and 20 exact 4096-capacity BF16 wide-store NN/TN artifacts. Together
with 40 forward BF16 artifacts and two specialized `bwd_accum` FP32/BF16
artifacts, this forms the 182-artifact ragged matrix.

Attention contributes 484 forward artifacts plus four decode reducers at
`D=Dv=64`. Its physical input combinations are BF16/BF16, INT4/BF16,
BF16/INT4, and INT4/INT4 for QK/V; forward variants cover no mask and
bool/BF16/FP32 mask pointers with BF16 or FP32 output. Generic variants retain
runtime shapes and semantics, while measured workload profiles specialize
heads, lengths, and full/causal/local control flow.

Non-split dense kernels write BF16 outputs. Split-K dense kernels write FP32
because their partial tiles are reduced with FP32 atomics.

`GemmLayout.TT` is present as a metadata value, but dense packaged native
dispatch is generated only for `NN`, `NT`, and `TN`. Ragged packaged HSACO and
JIT fallback paths support `TT`.

## Performance Snapshot

The table below reports averages of two matched current-wheel packaged-native
4096x4096x4096 runs measured with `triton.testing.do_bench`, prepacked
operands, BF16 scale tensors, and preallocated outputs.

All benchmarks are run on a Framework Strix Halo desktop. Clocks were not
pinned, so treat the table as a throughput snapshot rather than a lab-grade
hardware characterization. Prepacked int4 remains the fastest path among the
reported rows.

| Kernel | Scale | Tile | Runtime | TOPS |
| --- | --- | --- | ---: | ---: |
| int4 plain GEMM | per-channel | `BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK` | 1.83 ms | 75.2 |
| int4 plain GEMM | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 2.14 ms | 64.2 |
| int4 ReLU^2 | per-channel | `BM64_BN512_BK32_GM4_W16_S2_WEU2_SK1_EVENK` | 1.83 ms | 75.0 |
| int4 ReLU^2 | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 2.15 ms | 63.9 |
| int4 fused SwiGLU | per-channel | `BM128_BN128_BK32_GM4_W16_S3_WEU2_SK1_EVENK` | 4.48 ms | 61.3 |
| int4 fused SwiGLU | subchannel-256 | `BM64_BN128_BK128_GM1_W16_S2_WEU2_SK1_EVENK` | 5.34 ms | 51.5 |
| int8 plain GEMM | per-channel | `BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK` | 5.34 ms | 25.7 |
| int8 plain GEMM | subchannel-256 | `BM64_BN256_BK64_GM4_W8_S3_WEU2_SK1_EVENK` | 5.58 ms | 24.6 |

At the exact `M=14336` projection-training microbatch, the checked-in
subchannel-256 BF16-output winners are:

| Operation | Layout / `(M,N,K)` | Quantization / accumulation / output | Best tile | Runtime | TOPS |
| --- | --- | --- | --- | ---: | ---: |
| combined fwd | NT / `(14336,3072,1024)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN128_BK128_GM4` | 1.395418 ms | 64.636 |
| combined dX | NN / `(14336,1024,3072)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN128_BK128_GM1` | 1.387102 ms | 65.024 |
| combined dW | TN / `(3072,1024,14336)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM16_BN512_BK32_GM4` | 2.184580 ms | 41.287 |
| output fwd | NT / `(14336,1024,1024)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN128_BK128_GM4` | 0.488196 ms | 61.583 |
| output dX | NN / `(14336,1024,1024)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN128_BK128_GM1` | 0.498215 ms | 60.345 |
| output dW | TN / `(1024,1024,14336)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN512_BK32_GM4` | 0.767280 ms | 39.184 |
| fallback packed QKV fwd | NT / `(14336,2048,1024)` | packed I4×I4 + BF16 sc256 / FP32 / BF16 | `BM64_BN128_BK128_GM1` | 0.969299 ms | 62.034 |

The two TN dW artifacts reduce latency by 8.33% and 16.24% versus their prior
tiles (throughput +9.08% and +19.39%). Every winner passed a separate gfx1151
model-like BF16 fake-quant check at `rtol=atol=1e-3` with zero maximum absolute
and relative difference. Each 256-value subchannel uses INT32 MMA accumulation;
the independently scaled subchannel results accumulate in FP32 before one BF16
store. Gradient accumulation repeats `M=14336`, not
`M=57344`; see `docs/benchmarks.rst` for operand/scale layout details.

For fused SwiGLU, TOPS counts both up and gate GEMMs.
BF16-store correctness may differ by one ULP from the BF16 reference on values
near rounding ties; FP32 split-K paths should be evaluated separately.

Persistent dense scheduling remains opt-in and experimental. In a separate
4096³ per-channel plain-GEMM comparison, the best persistent result was about
42.0 TOPS versus 77.1 TOPS for standard scheduling, which remains the default.

The dense and ragged matrices were regenerated with Triton
`ec4a2c64315f3d4485e963a8391a7444a232801f`. Representative old/new HSACO
hashes are identical, so the compiler update did not automatically improve
packaged-native code. Most dense rows moved by less than 2%. The refreshed
subchannel-256 SwiGLU snapshot is 13.4% lower than the older table, but its
kernel is byte-identical too; treat that as a historical measurement-condition
difference, not a compiler regression.

### Ragged Dot Performance Snapshot

The table below selects maximum TOPS for each mode/layout/scale from the
4096x4096x4096 balanced-group rows in `benchmarks/ragged_dot_int4.json`. These
are JIT results for the automatic generic-shape path, not packaged-native
timings. The fresh Triton `ec4a2c64` sweep used 25 ms warmup and 100 ms
repetition windows and completed all 1,104 records with zero failures. It
covers 3 runtime shapes,
balanced/uneven group distributions, all four layouts,
per-channel/subchannel-256 scales, forward M-ragged dot, and backward K-ragged
split-K dot. Timings use 8 RHS groups, prepacked operands, BF16 scales,
preallocated outputs, and exclude quantization/packing.

| Mode | Layout | Scale | Best config | Runtime | TOPS |
| --- | --- | --- | --- | ---: | ---: |
| fwd | NN | per-channel | `BM64_BN256_BK64_GST2_W8_S3` | 2.190327 ms | 62.748 |
| fwd | NN | subchannel-256 | `BM64_BN256_BK128_GST1_W8_S3` | 2.683613 ms | 51.214 |
| fwd | NT | per-channel | `BM64_BN256_BK128_GST1_W8_S3` | 4.072952 ms | 33.744 |
| fwd | NT | subchannel-256 | `BM64_BN128_BK64_GST2_W8_S3` | 4.142994 ms | 33.174 |
| fwd | TN | per-channel | `BM64_BN256_BK64_GST2_W8_S3` | 3.263838 ms | 42.110 |
| fwd | TN | subchannel-256 | `BM32_BN128_BK64_GST1_W4_S3` | 4.059512 ms | 33.856 |
| fwd | TT | per-channel | `BM64_BN128_BK64_GST1_W8_S3` | 5.337606 ms | 25.749 |
| fwd | TT | subchannel-256 | `BM64_BN128_BK64_GST2_W8_S3` | 4.697210 ms | 29.260 |
| bwd | NN | per-channel | `BM64_BN64_BK64_W4_S3_SK1` | 2.402290 ms | 57.212 |
| bwd | NN | subchannel-256 | `BM64_BN64_BK64_W4_S3_SK1` | 2.704137 ms | 50.825 |
| bwd | NT | per-channel | `BM128_BN64_BK64_W8_S3_SK1` | 2.252268 ms | 61.022 |
| bwd | NT | subchannel-256 | `BM128_BN64_BK64_W8_S3_SK1` | 2.432567 ms | 56.500 |
| bwd | TN | per-channel | `BM64_BN64_BK64_W4_S3_SK1` | 3.072168 ms | 44.737 |
| bwd | TN | subchannel-256 | `BM64_BN64_BK64_W4_S3_SK1` | 3.456449 ms | 39.763 |
| bwd | TT | per-channel | `BM64_BN64_BK64_W4_S3_SK1` | 2.725918 ms | 50.419 |
| bwd | TT | subchannel-256 | `BM64_BN64_BK64_W4_S3_SK1` | 2.908761 ms | 47.250 |

#### Backward output precision and scaling

The standard API still materializes `G` independent `[M, N]` planes, but the
default `SPLIT_K=1` path now stores BF16. At `M=N=K=4096`, `G=8`, BF16 writes
268,435,456 bytes (8x one forward output), while an explicitly requested FP32
result writes 536,870,912 bytes (16x). The earlier FP32 output-bandwidth
analysis therefore applies only to explicit FP32 output and must not be used
as a lower bound for the BF16 implementation.

| Output path | Best config | Runtime | TOPS |
|---|---|---:|---:|
| Historical FP32 sweep | `BM64_BN256_BK64_W8_S3_SK1` | 3.834 ms | 35.8 |
| Preceding BF16 sweep | `BM128_BN128_BK64_W8_S3_SK1` | 2.918216 ms | 47.096901 |
| Current BF16 complete sweep | `BM64_BN64_BK64_W4_S3_SK1` | 2.402290 ms | 57.211641 |

The current NN/per-channel result is 21.5% above the immediately preceding
BF16 row and 59.8% above the historical FP32 row. The TOPS numerator remains
`2*M*N*K`, rather than scaling with `G`, because the group K extents sum to
the fixed total K.
Consumers that maintain FP32 master gradients should pass
`output_dtype=torch.float32` (or supply an FP32 `out`); `SPLIT_K>1` always
requires FP32 for atomic accumulation.

Compared with the immediately preceding 912-record BF16 table, backward gains
are 21.5%/30.5% (NN per-channel/subchannel-256), 22.8%/17.5% (NT),
20.5%/28.7% (TN), and 26.3%/34.0% (TT). These are JIT comparisons that include
newly selected measured configs.

For backward records, benchmark `K=4096` is total reduction work across groups;
the balanced case uses eight 512-element groups and a physical per-group
`k_capacity=512`. That automatic generic-shape JIT case is distinct from the
heavily padded exact `M=N=k_capacity=4096` native specialization:

| Exact native case | Generic native | Wide native | Gain |
|---|---:|---:|---:|
| NN per-channel | 43.3 | 54.3 | 25% |
| NN subchannel-256 | 37.1 | 49.8 | 34% |
| TN per-channel | 34.0 | 44.7 | 31% |
| TN subchannel-256 | 30.7 | 39.7 | 29% |

Automatic dispatch selects those wide-store artifacts only for eligible exact
4096-capacity NN/TN launches with 16-byte-aligned output; it does not substitute
these figures for the checked-in generic-shape JIT table.

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
includes `output_dtype`, `uses_even_k_fast_path`, and `masks_k` for separating
BF16/FP32 output, aligned fast-path rows, and fully masked ragged-K rows.

A separate 4096³ forward-NN comparison measured shape-specialized JIT at about
62.7 TOPS for per-channel and 47.7 TOPS for subchannel-256, versus 41.5 and
36.1 TOPS with runtime-shape specialization disabled. The autotuner measures
the specialized JIT behavior; packaged native artifacts retain their generic
block-edge shape contract.

## Triton Fork and Regeneration

Regenerating Triton IR or AMDGCN requires the Strix Halo Triton fork:

<https://github.com/SamGinzburg/triton/tree/amd-strix-halo>

Set `TRITON_CHECKOUT` to a local checkout of that branch and run from this
repository:

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
uv run --project "$TRITON_CHECKOUT" python scripts/generate_ragged_amdgcn.py --clean
```

`scripts/regenerate_amdgcn.py` regenerates the dense matrix.
`scripts/generate_ragged_amdgcn.py` regenerates the ragged `.s` and `.json`
artifact set: 40 forward BF16; 40 generic backward FP32; 80 generic backward
BF16 paired/scalar; 20 exact wide-store backward BF16; and two specialized
`bwd_accum` variants. `--mode bwd_accum` regenerates only the two specialized
FP32/BF16 jobs. Dense
`--clean` deletes only
`gfx1151_int4xint4_*` and `gfx1151_int8xint8_*` generated files, preserving
ragged and mixed families in the shared artifact directories. Dense and ragged
regeneration can therefore run independently. Wheel builds assemble every
`kernels/amdgcn/*.s` file into
`kernels/hsaco/*.hsaco` with ROCm `llvm-mc`/`lld`, then install the `.hsaco`
files plus matching JSON metadata.

The generated artifacts are checked in under `kernels/amdgcn/` and
`kernels/triton/`. The lockfile and generation summaries record Triton commit
`ec4a2c64315f3d4485e963a8391a7444a232801f`. Do not hand-edit generated
assembly or Triton IR; update the registry/generator scripts, regenerate, and
keep matching metadata JSON.

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

Wheel assembly excludes local tooling, cache, and credential metadata such as
`.claude/`, `.codex/`, `.git/`, Python caches, `.env`, `.env.local`, and
`settings.local.json`. The release portability gate rejects the wheel if any
of those files are present despite the build exclusions.

See `docs/development.rst` for regeneration, benchmarking, and wheel
portability commands, and `RELEASING.md` for the PyPI publishing flow.

## Contributing

Contributions are welcome. See [`CONTRIBUTING.md`](CONTRIBUTING.md) for the
development workflow, how the generated kernel artifacts are produced, and the
conventions to follow when sending changes.

## License

Released under the MIT License. See [`LICENSE`](LICENSE) for the full text.

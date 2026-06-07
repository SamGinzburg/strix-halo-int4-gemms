# Triton Artifacts

This directory vendors the generated Triton source and text IR used to produce
the AMDGCN files in `../amdgcn/`. The checked-in `.py`, `.ttir`, `.ttgir`, and
`.llir` files are backups for reproducibility and code review.

The artifacts are produced with the Strix Halo Triton fork, not upstream stock
Triton:

<https://github.com/SamGinzburg/triton/tree/amd-strix-halo>

That Triton branch carries the compiler/runtime changes required by these
artifacts, including int4 `tl.dot_scaled(..., "int4", ..., "int4")` lowering on
Strix Halo/gfx1151, int32 accumulation for int4 MMA, packed int4 operand
support, and related RDNA 3.5 codegen and launch optimizations. Set
`TRITON_CHECKOUT` to a local checkout of that branch and regenerate from the
repository root:

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
```

The checked-in GEMM templates pass `M`, `N`, and `K` as runtime kernel
arguments. A single generated artifact is therefore tile-specialized, not
exact-shape-specialized, when its metadata says
`"shape_specialization": "runtime"`. Native launch requires the runtime shape
to be a multiple of the selected tile: `M % BLOCK_M == 0`,
`N % BLOCK_N == 0`, `K % (BLOCK_K * SPLIT_K) == 0`, and for subchannel-scale
kernels `K % SUBCHANNEL == 0`. The templates assume that contract and omit
`M`/`N` edge-tile masks.

For int4 subchannel-scale artifacts, the Triton source uses `tl.dot_scaled` for
packed int4 MMA into i32, then upcasts each completed subchannel partial to FP32
and applies the BF16 LHS/RHS scales once. This preserves subchannel semantics
without repeating the same scale multiply for every BK partial.

The `tuned/` subdirectory stores large-shape tuning backups emitted by
`scripts/tune_gemm.py`, `scripts/tune_swiglu.py`, and `scripts/tune_relu2.py` when run with
`--save-best-artifacts`.

# AMDGCN Outputs

This directory contains checked-in AMDGCN assembly for the pregenerated Strix
Halo `gfx1151` int4/int8 GEMM kernel matrix. Each `.s` file has a matching
`.json` file with the kernel metadata, representative generation shape, shape
specialization mode, unique AMDGCN symbol, Triton source commit, launch
metadata, and basic assembly statistics. Runtime-shape artifacts take `M`,
`N`, and `K` as launch arguments; their `generation_shape` records the shape
used to compile the preserved IR, not an exact launch restriction. Native
launch still requires the runtime shape to be a multiple of the selected tile:
`M % BLOCK_M == 0`, `N % BLOCK_N == 0`, `K % (BLOCK_K * SPLIT_K) == 0`, and
for subchannel-scale kernels `K % SUBCHANNEL == 0`. The generated templates
assume that contract and omit `M`/`N` edge-tile masks.

Int4 subchannel kernels lower the MMA through `tl.dot_scaled` with i32 output
and apply BF16 LHS/RHS scales once after each subchannel i32 partial is
complete. That avoids the slower form that re-applies the same subchannel scale
inside every BK partial.

These files are generated from the vendored Triton text artifacts using the
Strix Halo Triton fork. Set `TRITON_CHECKOUT` to a local checkout of that fork
and regenerate from the repository root:

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
```

The native build assembles these `.s` files into HSACO code objects when ROCm
LLVM tools are available. The generated HSACO files are build products and are
not checked in.

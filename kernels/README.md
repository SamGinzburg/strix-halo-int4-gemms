# Kernel Artifacts

This directory vendors the generated artifacts used by the native package:

- `amdgcn/` contains AMDGCN assembly plus per-kernel JSON metadata.
- `triton/` contains the Triton source and text IR used to produce the AMDGCN.
- `triton/tuned/` contains large-shape tuning backups for selected kernels.

The Triton artifacts are compiled with the Strix Halo Triton fork, not stock
upstream Triton:

<https://github.com/SamGinzburg/triton/tree/amd-strix-halo>

That branch includes the int4 `tl.dot_scaled` lowering, int32 accumulation path
for int4 MMA, packed int4 operand support, and RDNA 3.5 codegen/launch
optimizations needed to regenerate these artifacts. Set `TRITON_CHECKOUT` to a
local checkout of that branch and regenerate from the repository root:

For int4 subchannel-scale artifacts, generated kernels use `tl.dot_scaled` for
the packed int4 MMA with `out_dtype=tl.int32`, accumulate each subchannel group
in i32, then upcast and apply the BF16 LHS/RHS scales once per subchannel
group. This preserves subchannel scaled-dot semantics while avoiding repeated
scale multiplies inside the BK loop.

```bash
TRITON_CHECKOUT=/path/to/triton
uv run --project "$TRITON_CHECKOUT" python scripts/regenerate_amdgcn.py
```

Do not hand-edit generated `.s`, `.ttir`, `.ttgir`, or `.llir` files. Update the
registry/generator scripts, regenerate, and keep the matching metadata JSON.

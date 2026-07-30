import hashlib
import os
from dataclasses import replace
from pathlib import Path

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels.metadata import (
    OUTPUT_DTYPE_BF16,
    OUTPUT_DTYPE_FLOAT32,
    SUPPORTED_SUBCHANNELS,
    GemmLayout,
    ScaleMode,
    ScaleSpec,
)
from amd_strix_halo_kernels.native import NATIVE_LIBRARY_NAME, dispatch_runtime_status
from amd_strix_halo_kernels.quant import pack_int4_k_major, pack_ragged_rhs_subchannel_scales
from amd_strix_halo_kernels.ragged import (
    RAGGED_BWD_ACCUM_CONFIG,
    RaggedBwdDotConfig,
    RaggedDotConfig,
    ragged_dot_int4,
    ragged_dot_int4_bwd,
    ragged_dot_int4_bwd_accum,
)
from amd_strix_halo_kernels.ragged_artifacts import (
    RAGGED_BWD,
    RAGGED_BWD_ACCUM,
    RAGGED_EVEN_K,
    RAGGED_FWD,
    RAGGED_MASK_K,
    RAGGED_VARIANTS,
    ragged_kernel_id,
)


STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3
SCALE_LOW = 1.0e-2
SCALE_HIGH = 3.0e-2
RAGGED_SCALES = (ScaleSpec(ScaleMode.PER_CHANNEL),) + tuple(
    ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS
)
RAGGED_FWD_CASES = tuple(
    (layout, scale, variant)
    for layout in GemmLayout
    for scale in RAGGED_SCALES
    for variant in RAGGED_VARIANTS
)
RAGGED_BWD_CASES = RAGGED_FWD_CASES
RUNTIME_SHAPE_OFFSETS = (-1, 0, 1)

assert len(RAGGED_FWD_CASES) == 40
assert len(RAGGED_BWD_CASES) == 40


def _stable_seed(value: str) -> int:
    return int.from_bytes(hashlib.sha256(value.encode()).digest()[:4], byteorder="little")


def _scale_aligned_contraction(scale: ScaleSpec) -> int:
    if scale.mode is ScaleMode.PER_CHANNEL:
        return 64
    return 2 * (scale.subchannel_size or 1)


def _assert_reference_has_signal(expected) -> None:
    max_abs = float(expected.float().abs().max())
    assert max_abs >= 10 * STRICT_ATOL, f"reference signal is too small: max_abs={max_abs}"


def _native_test_root() -> Path | None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    if configured:
        root = Path(configured)
        if not (root / NATIVE_LIBRARY_NAME).exists():
            pytest.fail(f"AMD_STRIX_HALO_NATIVE_ROOT has no {NATIVE_LIBRARY_NAME}: {root}")
        return root
    package_dir = Path(__file__).resolve().parents[1] / "src" / "amd_strix_halo_kernels"
    return package_dir if (package_dir / NATIVE_LIBRARY_NAME).exists() else None


@pytest.fixture(scope="module")
def native_runtime() -> tuple[Path, Path]:
    if not torch.cuda.is_available() or torch.version.hip is None:
        pytest.skip("native ragged generated kernels require a ROCm torch device")
    root = _native_test_root()
    if root is None:
        pytest.skip("native kernels require a built wheel or AMD_STRIX_HALO_NATIVE_ROOT")
    library = root / NATIVE_LIBRARY_NAME
    status = dispatch_runtime_status(library)
    if not status.has_linked_kernels:
        pytest.skip("native dispatch library does not have linked ROCm kernel support")
    return root, library


def _case_id(mode: str, case: tuple[GemmLayout, ScaleSpec, str]) -> str:
    layout, scale, variant = case
    base_config = RaggedDotConfig() if mode == RAGGED_FWD else RaggedBwdDotConfig()
    config = replace(base_config, enable_even_k_fast_path=variant == RAGGED_EVEN_K)
    output_dtype = OUTPUT_DTYPE_BF16 if mode == RAGGED_FWD else OUTPUT_DTYPE_FLOAT32
    return ragged_kernel_id(
        mode=mode,
        layout=layout,
        scale=scale,
        config=config,
        variant=variant,
        output_dtype=output_dtype,
    )


def _pack_forward_args(a_q, b_q, layout: GemmLayout):
    lhs = pack_int4_k_major(a_q)
    if layout in {GemmLayout.TN, GemmLayout.TT}:
        lhs = lhs.transpose(0, 1).contiguous()
    rhs_groups = []
    for group in range(int(b_q.shape[0])):
        packed = pack_int4_k_major(b_q[group].transpose(0, 1))
        if layout not in {GemmLayout.NT, GemmLayout.TT}:
            packed = packed.transpose(0, 1).contiguous()
        rhs_groups.append(packed)
    return lhs, torch.stack(rhs_groups).contiguous()


def _pack_backward_args(a_q, b_q, layout: GemmLayout):
    lhs_groups = []
    rhs_groups = []
    for group in range(int(a_q.shape[0])):
        lhs = pack_int4_k_major(a_q[group])
        if layout in {GemmLayout.TN, GemmLayout.TT}:
            lhs = lhs.transpose(0, 1).contiguous()
        rhs = pack_int4_k_major(b_q[group].transpose(0, 1))
        if layout not in {GemmLayout.NT, GemmLayout.TT}:
            rhs = rhs.transpose(0, 1).contiguous()
        lhs_groups.append(lhs)
        rhs_groups.append(rhs)
    return torch.stack(lhs_groups).contiguous(), torch.stack(rhs_groups).contiguous()


def _forward_scales(scale: ScaleSpec, *, rows: int, groups: int, cols: int, contraction: int):
    if scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(SCALE_LOW, SCALE_HIGH, rows, dtype=torch.bfloat16)
        b_scale = torch.linspace(SCALE_HIGH, SCALE_LOW, groups * cols, dtype=torch.bfloat16).reshape(
            groups, cols
        )
        return a_scale, b_scale
    subchannel = scale.subchannel_size or 1
    scale_cols = (contraction + subchannel - 1) // subchannel
    a_scale = torch.linspace(SCALE_LOW, SCALE_HIGH, rows * scale_cols, dtype=torch.bfloat16).reshape(
        rows, scale_cols
    )
    b_scale_logical = torch.linspace(
        SCALE_HIGH,
        SCALE_LOW,
        groups * cols * scale_cols,
        dtype=torch.bfloat16,
    ).reshape(groups, cols, scale_cols)
    return a_scale, pack_ragged_rhs_subchannel_scales(b_scale_logical)


def _backward_scales(scale: ScaleSpec, *, groups: int, rows: int, cols: int, contraction: int):
    if scale.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(SCALE_LOW, SCALE_HIGH, groups * rows, dtype=torch.bfloat16).reshape(
            groups, rows
        )
        b_scale = torch.linspace(SCALE_HIGH, SCALE_LOW, groups * cols, dtype=torch.bfloat16).reshape(
            groups, cols
        )
        return a_scale, b_scale
    subchannel = scale.subchannel_size or 1
    scale_cols = (contraction + subchannel - 1) // subchannel
    a_scale = torch.linspace(
        SCALE_LOW,
        SCALE_HIGH,
        groups * rows * scale_cols,
        dtype=torch.bfloat16,
    ).reshape(groups, rows, scale_cols)
    b_scale = torch.linspace(
        SCALE_HIGH,
        SCALE_LOW,
        groups * scale_cols * cols,
        dtype=torch.bfloat16,
    ).reshape(groups, scale_cols, cols)
    return a_scale, b_scale


def _forward_reference(a_q, b_q, group_sizes, a_scale, b_scale, scale: ScaleSpec):
    rows, contraction = int(a_q.shape[0]), int(a_q.shape[1])
    cols = int(b_q.shape[2])
    out = torch.zeros((rows, cols), dtype=torch.float32)
    row = 0
    for group, size in enumerate(group_sizes.tolist()):
        next_row = row + int(size)
        if scale.mode is ScaleMode.PER_CHANNEL:
            partial = torch.matmul(a_q[row:next_row].to(torch.int32), b_q[group].to(torch.int32)).float()
            partial *= a_scale[row:next_row, None].float()
            partial *= b_scale[group, None, :].float()
        else:
            subchannel = scale.subchannel_size or 1
            partial = torch.zeros((next_row - row, cols), dtype=torch.float32)
            for scale_index, k0 in enumerate(range(0, contraction, subchannel)):
                k1 = min(k0 + subchannel, contraction)
                chunk = torch.matmul(
                    a_q[row:next_row, k0:k1].to(torch.int32),
                    b_q[group, k0:k1, :].to(torch.int32),
                ).float()
                chunk *= a_scale[row:next_row, scale_index, None].float()
                chunk *= b_scale[group, scale_index, None, :].float()
                partial += chunk
        out[row:next_row] = partial
        row = next_row
    return out.to(torch.bfloat16)


def _backward_reference(a_q, b_q, group_sizes, a_scale, b_scale, scale: ScaleSpec):
    groups, rows, contraction = map(int, a_q.shape)
    cols = int(b_q.shape[2])
    out = torch.zeros((groups, rows, cols), dtype=torch.float32)
    for group, group_k in enumerate(group_sizes.tolist()):
        group_k = int(group_k)
        if scale.mode is ScaleMode.PER_CHANNEL:
            partial = torch.matmul(
                a_q[group, :, :group_k].to(torch.int32),
                b_q[group, :group_k, :].to(torch.int32),
            ).float()
            partial *= a_scale[group, :, None].float()
            partial *= b_scale[group, None, :].float()
            out[group] = partial
            continue
        subchannel = scale.subchannel_size or 1
        for scale_index, k0 in enumerate(range(0, contraction, subchannel)):
            k1 = min(k0 + subchannel, group_k)
            if k1 <= k0:
                continue
            partial = torch.matmul(
                a_q[group, :, k0:k1].to(torch.int32),
                b_q[group, k0:k1, :].to(torch.int32),
            ).float()
            partial *= a_scale[group, :, scale_index, None].float()
            partial *= b_scale[group, scale_index, None, :].float()
            out[group] += partial
    return out


@pytest.mark.parametrize("case", RAGGED_FWD_CASES, ids=lambda case: _case_id(RAGGED_FWD, case))
@pytest.mark.parametrize("shape_offset", RUNTIME_SHAPE_OFFSETS, ids=("subtile", "exact", "tail"))
def test_all_native_ragged_forward_artifacts_match_cpu_reference(
    case,
    shape_offset,
    native_runtime,
) -> None:
    layout, scale, variant = case
    native_root, library = native_runtime
    config = replace(RaggedDotConfig(), enable_even_k_fast_path=variant == RAGGED_EVEN_K)
    rows, cols, groups = config.block_m + shape_offset, config.block_n + shape_offset, 3
    aligned_contraction = _scale_aligned_contraction(scale)
    contraction = aligned_contraction if variant == RAGGED_EVEN_K else aligned_contraction - 2
    first_group_rows = rows // 2
    group_sizes = torch.tensor([first_group_rows, 0, rows - first_group_rows], dtype=torch.int32)
    generator = torch.Generator().manual_seed(
        _stable_seed(f"{_case_id(RAGGED_FWD, case)}-{shape_offset}")
    )
    a_q = torch.randint(-4, 5, (rows, contraction), generator=generator, dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, contraction, cols), generator=generator, dtype=torch.int8)
    lhs, rhs = _pack_forward_args(a_q, b_q, layout)
    a_scale, b_scale = _forward_scales(
        scale,
        rows=rows,
        groups=groups,
        cols=cols,
        contraction=contraction,
    )
    expected = _forward_reference(a_q, b_q, group_sizes, a_scale, b_scale, scale)
    _assert_reference_has_signal(expected)

    actual = ragged_dot_int4(
        lhs.to("cuda"),
        rhs.to("cuda"),
        group_sizes.to("cuda"),
        a_scale=a_scale.to("cuda"),
        b_scale=b_scale.to("cuda"),
        scale=scale,
        config=config,
        layout=layout,
        use_native=True,
        native_root=str(native_root),
        native_library_path=str(library),
    )
    torch.cuda.synchronize()

    assert actual.dtype == torch.bfloat16
    torch.testing.assert_close(actual.cpu(), expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize("case", RAGGED_BWD_CASES, ids=lambda case: _case_id(RAGGED_BWD, case))
@pytest.mark.parametrize("shape_offset", RUNTIME_SHAPE_OFFSETS, ids=("subtile", "exact", "tail"))
def test_all_native_ragged_backward_artifacts_match_cpu_reference(
    case,
    shape_offset,
    native_runtime,
) -> None:
    layout, scale, variant = case
    native_root, library = native_runtime
    config = replace(RaggedBwdDotConfig(), enable_even_k_fast_path=variant == RAGGED_EVEN_K)
    groups, rows, cols = 3, config.block_m + shape_offset, config.block_n + shape_offset
    contraction = _scale_aligned_contraction(scale)
    group_sizes = (
        torch.tensor([contraction, 0, contraction], dtype=torch.int64)
        if variant == RAGGED_EVEN_K
        else torch.tensor([contraction - 1, 0, contraction - 3], dtype=torch.int64)
    )
    generator = torch.Generator().manual_seed(
        _stable_seed(f"{_case_id(RAGGED_BWD, case)}-{shape_offset}")
    )
    a_q = torch.randint(-4, 5, (groups, rows, contraction), generator=generator, dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, contraction, cols), generator=generator, dtype=torch.int8)
    lhs, rhs = _pack_backward_args(a_q, b_q, layout)
    a_scale, b_scale = _backward_scales(
        scale,
        groups=groups,
        rows=rows,
        cols=cols,
        contraction=contraction,
    )
    expected = _backward_reference(a_q, b_q, group_sizes, a_scale, b_scale, scale)
    _assert_reference_has_signal(expected)

    actual = ragged_dot_int4_bwd(
        lhs.to("cuda"),
        rhs.to("cuda"),
        group_sizes.to("cuda"),
        a_scale=a_scale.to("cuda"),
        b_scale=b_scale.to("cuda"),
        scale=scale,
        config=config,
        layout=layout,
        use_native=True,
        native_root=str(native_root),
        native_library_path=str(library),
    )
    torch.cuda.synchronize()

    assert actual.dtype == torch.float32
    torch.testing.assert_close(actual.cpu(), expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)


@pytest.mark.parametrize("range_dtype", [torch.int32, torch.int64])
@pytest.mark.parametrize("shape_offset", RUNTIME_SHAPE_OFFSETS, ids=("subtile", "exact", "tail"))
@pytest.mark.parametrize(
    "output_dtype",
    [torch.float32, torch.bfloat16],
    ids=("fp32", "bf16"),
)
def test_native_ragged_backward_accum_artifact_matches_cpu_reference(
    range_dtype,
    shape_offset,
    output_dtype,
    native_runtime,
) -> None:
    native_root, library = native_runtime
    tasks, experts = 5, 3
    rows = RAGGED_BWD_ACCUM_CONFIG.block_m + shape_offset
    cols = RAGGED_BWD_ACCUM_CONFIG.block_n + shape_offset
    task_rows = RAGGED_BWD_ACCUM_CONFIG.block_k
    generator = torch.Generator().manual_seed(
        _stable_seed(f"{RAGGED_BWD_ACCUM}-{range_dtype}-{shape_offset}")
    )
    a_q = torch.randint(-4, 5, (tasks, rows, task_rows), generator=generator, dtype=torch.int8)
    b_q = torch.randint(-4, 5, (tasks, task_rows, cols), generator=generator, dtype=torch.int8)
    lhs, rhs = _pack_backward_args(a_q, b_q, GemmLayout.TN)
    a_scale = torch.linspace(SCALE_LOW, SCALE_HIGH, tasks * rows, dtype=torch.bfloat16).reshape(
        tasks, rows
    )
    b_scale = torch.linspace(SCALE_HIGH, SCALE_LOW, tasks * cols, dtype=torch.bfloat16).reshape(
        tasks, cols
    )
    task_ranges = torch.tensor([[0, 2], [2, 2], [2, 5]], dtype=range_dtype)
    expected = torch.zeros((experts, rows, cols), dtype=torch.float32)
    for expert, (start, end) in enumerate(task_ranges.tolist()):
        for task in range(start, end):
            partial = torch.matmul(a_q[task].to(torch.int32), b_q[task].to(torch.int32)).float()
            partial *= a_scale[task, :, None].float()
            partial *= b_scale[task, None, :].float()
            expected[expert] += partial
    _assert_reference_has_signal(expected)

    actual = ragged_dot_int4_bwd_accum(
        lhs.to("cuda"),
        rhs.to("cuda"),
        task_ranges.to("cuda"),
        a_scale=a_scale.to("cuda"),
        b_scale=b_scale.to("cuda"),
        config=RAGGED_BWD_ACCUM_CONFIG,
        output_dtype=output_dtype,
        use_native=True,
        native_root=str(native_root),
        native_library_path=str(library),
    )
    torch.cuda.synchronize()

    assert actual.dtype == output_dtype
    if output_dtype == torch.bfloat16:
        fp32_actual = ragged_dot_int4_bwd_accum(
            lhs.to("cuda"),
            rhs.to("cuda"),
            task_ranges.to("cuda"),
            a_scale=a_scale.to("cuda"),
            b_scale=b_scale.to("cuda"),
            config=RAGGED_BWD_ACCUM_CONFIG,
            output_dtype=torch.float32,
            use_native=True,
            native_root=str(native_root),
            native_library_path=str(library),
        )
        torch.cuda.synchronize()
        assert torch.equal(actual, fp32_actual.to(torch.bfloat16))
        torch.testing.assert_close(fp32_actual.cpu(), expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)
    else:
        torch.testing.assert_close(actual.cpu(), expected, rtol=STRICT_RTOL, atol=STRICT_ATOL)

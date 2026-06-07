import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import (
    GemmLayout,
    RaggedBwdDotConfig,
    RaggedDotConfig,
    ScaleMode,
    ScaleSpec,
    calculate_group_info,
    ragged_dot_int4_bwd,
    ragged_dot_int4,
)
from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major, pack_ragged_rhs_subchannel_scales
from amd_strix_halo_kernels.ragged import _can_use_bwd_even_k_fast_path, _can_use_even_k_fast_path


def _manual_grouped_reference(a_q, b_q, group_sizes, a_scale, b_scale):
    out = torch.empty((a_q.shape[0], b_q.shape[2]), device=a_q.device, dtype=torch.float32)
    row = 0
    for group, group_size in enumerate(group_sizes.tolist()):
        next_row = row + int(group_size)
        partial = torch.matmul(
            a_q[row:next_row].to(torch.float32),
            b_q[group].to(torch.float32),
        ).to(torch.float32)
        partial *= a_scale[row:next_row, None].to(torch.float32)
        partial *= b_scale[group, None, :].to(torch.float32)
        out[row:next_row] = partial
        row = next_row
    return out


def _manual_grouped_subchannel_reference(a_q, b_q, group_sizes, a_scale, b_scale, subchannel):
    out = torch.empty((a_q.shape[0], b_q.shape[2]), device=a_q.device, dtype=torch.float32)
    row = 0
    for group, group_size in enumerate(group_sizes.tolist()):
        next_row = row + int(group_size)
        partial = torch.zeros((next_row - row, b_q.shape[2]), device=a_q.device, dtype=torch.float32)
        for scale_idx, k0 in enumerate(range(0, a_q.shape[1], subchannel)):
            k1 = min(k0 + subchannel, a_q.shape[1])
            chunk = torch.matmul(
                a_q[row:next_row, k0:k1].to(torch.float32),
                b_q[group, k0:k1, :].to(torch.float32),
            )
            chunk *= a_scale[row:next_row, scale_idx, None].to(torch.float32)
            chunk *= b_scale[group, scale_idx, None, :].to(torch.float32)
            partial += chunk
        out[row:next_row] = partial
        row = next_row
    return out


def _pack_forward_args(a_q, b_q, layout):
    a_trans = layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = layout in {GemmLayout.NT, GemmLayout.TT}
    lhs = pack_int4_k_major(a_q)
    if a_trans:
        lhs = lhs.transpose(0, 1).contiguous()
    rhs_groups = []
    for group in range(b_q.shape[0]):
        packed = pack_int4_k_major(b_q[group].transpose(0, 1))
        rhs_groups.append(packed.contiguous() if b_trans else packed.transpose(0, 1).contiguous())
    return lhs, torch.stack(rhs_groups).contiguous()


def _pack_bwd_args(a_q, b_q, layout):
    a_trans = layout in {GemmLayout.TN, GemmLayout.TT}
    b_trans = layout in {GemmLayout.NT, GemmLayout.TT}
    lhs_groups = []
    rhs_groups = []
    for group in range(a_q.shape[0]):
        lhs = pack_int4_k_major(a_q[group])
        if a_trans:
            lhs = lhs.transpose(0, 1).contiguous()
        rhs = pack_int4_k_major(b_q[group].transpose(0, 1))
        rhs = rhs.contiguous() if b_trans else rhs.transpose(0, 1).contiguous()
        lhs_groups.append(lhs)
        rhs_groups.append(rhs)
    return torch.stack(lhs_groups).contiguous(), torch.stack(rhs_groups).contiguous()


def _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale):
    groups, rows, _ = a_q.shape
    cols = b_q.shape[2]
    out = torch.empty((groups, rows, cols), device=a_q.device, dtype=torch.float32)
    for group, group_k in enumerate(group_sizes.tolist()):
        k1 = int(group_k)
        partial = torch.matmul(
            a_q[group, :, :k1].to(torch.float32),
            b_q[group, :k1, :].to(torch.float32),
        )
        partial *= a_scale[group, :, None].to(torch.float32)
        partial *= b_scale[group, None, :].to(torch.float32)
        out[group] = partial
    return out


def _manual_bwd_subchannel_reference(a_q, b_q, group_sizes, a_scale, b_scale, subchannel):
    groups, rows, k_capacity = a_q.shape
    cols = b_q.shape[2]
    out = torch.zeros((groups, rows, cols), device=a_q.device, dtype=torch.float32)
    for group, group_k in enumerate(group_sizes.tolist()):
        group_k = int(group_k)
        for scale_idx, k0 in enumerate(range(0, k_capacity, subchannel)):
            k1 = min(k0 + subchannel, group_k)
            if k1 <= k0:
                continue
            partial = torch.matmul(
                a_q[group, :, k0:k1].to(torch.float32),
                b_q[group, k0:k1, :].to(torch.float32),
            )
            partial *= a_scale[group, :, scale_idx, None].to(torch.float32)
            partial *= b_scale[group, scale_idx, None, :].to(torch.float32)
            out[group] += partial
    return out


def test_calculate_group_info_matches_aligned_example() -> None:
    group_sizes = torch.tensor([17, 31, 24], dtype=torch.int32)

    info = calculate_group_info(group_sizes, tile=32, align_tile=8)

    assert info.num_tasks == 3
    assert info.group_id.tolist() == [0, 1, 2]
    assert info.block_start.tolist() == [0, 16, 48]
    assert info.actual_start.tolist() == [0, 17, 48]
    assert info.actual_end.tolist() == [17, 48, 72]
    assert info.start_within_block.tolist() == [0, 1, 0]
    assert info.actual_size.tolist() == [17, 31, 24]


def test_calculate_group_info_tid_size_zero_fills_extra_tasks() -> None:
    group_sizes = torch.tensor([2, 0, 7], dtype=torch.int64)

    info = calculate_group_info(group_sizes, tile=16, tid_size=4, align_tile=8)

    assert info.num_tasks == 2
    assert info.group_id.tolist() == [0, 2, 0, 0]
    assert info.block_start.tolist() == [0, 0, 0, 0]
    assert info.actual_start.tolist() == [0, 2, 0, 0]
    assert info.actual_end.tolist() == [2, 9, 0, 0]
    assert info.actual_size.tolist() == [2, 7, 0, 0]


def test_calculate_group_info_rejects_small_tid_size() -> None:
    group_sizes = torch.tensor([17, 31, 24], dtype=torch.int32)

    with pytest.raises(ValueError, match="tid_size must be at least 3"):
        calculate_group_info(group_sizes, tile=32, tid_size=2, align_tile=8)


def test_ragged_dot_config_rejects_invalid_swizzle_width() -> None:
    with pytest.raises(ValueError, match="group_size_tasks must be positive"):
        RaggedDotConfig(group_size_tasks=0)


def test_even_k_fast_path_eligibility_requires_only_k_tile_multiple() -> None:
    config = RaggedDotConfig(block_m=16, block_n=32, block_k=32)

    assert _can_use_even_k_fast_path(
        logical_k=64,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=config,
    )
    assert not _can_use_even_k_fast_path(
        logical_k=48,
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=config,
    )
    assert _can_use_even_k_fast_path(
        logical_k=64,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        config=config,
    )
    assert not _can_use_even_k_fast_path(
        logical_k=96,
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 64),
        config=config,
    )


def test_bwd_even_k_fast_path_selection_requires_tile_aligned_groups() -> None:
    config = RaggedBwdDotConfig(block_k=16)

    assert _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=torch.tensor([32, 0, 64], dtype=torch.int32),
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=config,
    )
    assert not _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=torch.tensor([32, 7, 64], dtype=torch.int32),
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=config,
    )
    assert _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=torch.tensor([32, 0, 64], dtype=torch.int32),
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        config=config,
    )
    assert not _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=torch.tensor([16, 0, 32], dtype=torch.int32),
        scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        config=config,
    )
    assert not _can_use_bwd_even_k_fast_path(
        torch,
        group_sizes=torch.tensor([32, 0, 64], dtype=torch.int32),
        scale=ScaleSpec(ScaleMode.PER_CHANNEL),
        config=RaggedBwdDotConfig(block_k=16, enable_even_k_fast_path=False),
    )


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4 requires CUDA/HIP")
def test_ragged_dot_rejects_logical_subchannel_rhs_scale_layout() -> None:
    pytest.importorskip("triton")
    group_sizes = torch.tensor([4, 4], device="cuda", dtype=torch.int32)
    lhs = torch.zeros((8, 16), device="cuda", dtype=torch.uint8)
    rhs = torch.zeros((2, 16, 8), device="cuda", dtype=torch.uint8)
    a_scale = torch.ones((8, 1), device="cuda", dtype=torch.bfloat16)
    b_scale_logical = torch.ones((2, 8, 1), device="cuda", dtype=torch.bfloat16)

    with pytest.raises(ValueError, match="weight-matched layout"):
        ragged_dot_int4(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale_logical,
            scale=ScaleSpec(ScaleMode.SUBCHANNEL, 32),
        )


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4 requires CUDA/HIP")
def test_ragged_dot_int4_matches_grouped_torch_reference() -> None:
    pytest.importorskip("triton")
    torch.manual_seed(19)
    m, k, n, groups = 9, 32, 16, 3
    group_sizes = torch.tensor([2, 0, 7], device="cuda", dtype=torch.int32)
    a_bf16 = torch.randn((m, k), device="cuda", dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((groups, k, n), device="cuda", dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.1)

    lhs = pack_int4_k_major(a_q)
    rhs = torch.stack(
        [pack_int4_k_major(b_q[group].transpose(0, 1)).transpose(0, 1).contiguous() for group in range(groups)]
    )
    a_scale = torch.linspace(0.75, 1.25, m, device="cuda", dtype=torch.bfloat16)
    b_scale = torch.linspace(1.10, 0.90, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)

    try:
        actual = ragged_dot_int4(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=ScaleSpec(ScaleMode.PER_CHANNEL),
            config=RaggedDotConfig(
                block_m=16,
                block_n=16,
                block_k=32,
                group_size_tasks=4,
                num_warps=4,
                num_stages=3,
            ),
            output_dtype=torch.float32,
        )
    except Exception as exc:
        message = str(exc).lower()
        if "dot_scaled" in message or "int4" in message:
            pytest.skip(f"local Triton build does not support int4 dot_scaled: {exc}")
        raise

    expected = _manual_grouped_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    torch.testing.assert_close(actual, expected, rtol=1.0e-4, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4 requires CUDA/HIP")
@pytest.mark.parametrize("layout", list(GemmLayout))
@pytest.mark.parametrize("scale_spec", [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)])
def test_ragged_dot_int4_all_layouts_match_grouped_torch_reference(layout, scale_spec) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(101 + list(GemmLayout).index(layout) + (scale_spec.subchannel_size or 0))
    m, k, n, groups = 17, 64, 24, 3
    group_sizes = torch.tensor([5, 0, 12], device="cuda", dtype=torch.int32)
    a_bf16 = torch.randn((m, k), device="cuda", dtype=torch.bfloat16) * 0.01
    b_bf16 = torch.randn((groups, k, n), device="cuda", dtype=torch.bfloat16) * 0.01
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.01)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.01)
    lhs, rhs = _pack_forward_args(a_q, b_q, layout)

    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.008, 0.012, m, device="cuda", dtype=torch.bfloat16)
        b_scale = torch.linspace(0.011, 0.009, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)
        expected = _manual_grouped_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        scale_cols = (k + scale_spec.subchannel_size - 1) // scale_spec.subchannel_size
        a_scale = torch.linspace(0.008, 0.012, m * scale_cols, device="cuda", dtype=torch.bfloat16).reshape(
            m, scale_cols
        )
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * n,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, n)
        expected = _manual_grouped_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            scale_spec.subchannel_size,
        )

    try:
        actual = ragged_dot_int4(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale_spec,
            config=RaggedDotConfig(
                block_m=16,
                block_n=16,
                block_k=32,
                group_size_tasks=2,
                num_warps=4,
                num_stages=3,
            ),
            layout=layout,
            output_dtype=torch.float32,
        )
    except Exception as exc:
        message = str(exc).lower()
        if "dot_scaled" in message or "int4" in message:
            pytest.skip(f"local Triton build does not support int4 dot_scaled: {exc}")
        raise

    torch.testing.assert_close(actual, expected, rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4_bwd requires CUDA/HIP")
@pytest.mark.parametrize("layout", list(GemmLayout))
@pytest.mark.parametrize("scale_spec", [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)])
@pytest.mark.parametrize("split_k", [1, 2])
def test_ragged_dot_int4_bwd_tile_aligned_fast_path_matches_grouped_torch_reference(
    layout,
    scale_spec,
    split_k,
) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(607 + list(GemmLayout).index(layout) * 11 + split_k + (scale_spec.subchannel_size or 0))
    groups, m, k_capacity, n = 3, 16, 32, 20
    group_sizes = torch.tensor([32, 0, 32], device="cuda", dtype=torch.int32)
    a_bf16 = torch.randn((groups, m, k_capacity), device="cuda", dtype=torch.bfloat16) * 0.01
    b_bf16 = torch.randn((groups, k_capacity, n), device="cuda", dtype=torch.bfloat16) * 0.01
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.01)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.01)
    lhs, rhs = _pack_bwd_args(a_q, b_q, layout)

    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.008, 0.012, groups * m, device="cuda", dtype=torch.bfloat16).reshape(groups, m)
        b_scale = torch.linspace(0.011, 0.009, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)
        expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        scale_cols = (k_capacity + scale_spec.subchannel_size - 1) // scale_spec.subchannel_size
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * m * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, m, scale_cols)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * n,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, n)
        expected = _manual_bwd_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            scale_spec.subchannel_size,
        )

    try:
        actual = ragged_dot_int4_bwd(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale_spec,
            config=RaggedBwdDotConfig(
                block_m=16,
                block_n=16,
                block_k=16,
                split_k=split_k,
                num_warps=4,
                num_stages=3,
            ),
            layout=layout,
        )
    except Exception as exc:
        message = str(exc).lower()
        if "dot_scaled" in message or "int4" in message:
            pytest.skip(f"local Triton build does not support int4 dot_scaled: {exc}")
        raise

    torch.testing.assert_close(actual, expected, rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4 requires CUDA/HIP")
@pytest.mark.parametrize("scale_spec", [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)])
def test_ragged_dot_int4_even_k_fast_path_matches_grouped_torch_reference(scale_spec) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(23)
    m, k, n, groups = 33, 64, 24, 3
    group_sizes = torch.tensor([5, 12, 16], device="cuda", dtype=torch.int32)
    a_bf16 = torch.randn((m, k), device="cuda", dtype=torch.bfloat16) * 0.1
    b_bf16 = torch.randn((groups, k, n), device="cuda", dtype=torch.bfloat16) * 0.1
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.1)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.1)
    lhs = pack_int4_k_major(a_q)
    rhs = torch.stack(
        [pack_int4_k_major(b_q[group].transpose(0, 1)).transpose(0, 1).contiguous() for group in range(groups)]
    )

    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.8, 1.2, m, device="cuda", dtype=torch.bfloat16)
        b_scale = torch.linspace(1.1, 0.9, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)
        expected = _manual_grouped_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        scale_cols = (k + scale_spec.subchannel_size - 1) // scale_spec.subchannel_size
        a_scale = torch.linspace(0.8, 1.2, m * scale_cols, device="cuda", dtype=torch.bfloat16).reshape(
            m, scale_cols
        )
        b_scale_logical = torch.linspace(
            1.1,
            0.9,
            groups * n * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, n, scale_cols)
        b_scale = pack_ragged_rhs_subchannel_scales(b_scale_logical)
        expected = _manual_grouped_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            scale_spec.subchannel_size,
        )

    try:
        actual = ragged_dot_int4(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale_spec,
            config=RaggedDotConfig(
                block_m=16,
                block_n=16,
                block_k=32,
                group_size_tasks=2,
                enable_even_k_fast_path=True,
                num_warps=4,
                num_stages=3,
            ),
            output_dtype=torch.float32,
        )
    except Exception as exc:
        message = str(exc).lower()
        if "dot_scaled" in message or "int4" in message:
            pytest.skip(f"local Triton build does not support int4 dot_scaled: {exc}")
        raise

    torch.testing.assert_close(actual, expected, rtol=1.0e-4, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4_bwd requires CUDA/HIP")
@pytest.mark.parametrize("layout", list(GemmLayout))
@pytest.mark.parametrize("scale_spec", [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)])
@pytest.mark.parametrize("split_k", [1, 2])
def test_ragged_dot_int4_bwd_all_layouts_match_grouped_torch_reference(layout, scale_spec, split_k) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(211 + list(GemmLayout).index(layout) * 17 + split_k + (scale_spec.subchannel_size or 0))
    groups, m, k_capacity, n = 3, 16, 39, 20
    group_sizes = torch.tensor([5, 0, 37], device="cuda", dtype=torch.int32)
    a_bf16 = torch.randn((groups, m, k_capacity), device="cuda", dtype=torch.bfloat16) * 0.01
    b_bf16 = torch.randn((groups, k_capacity, n), device="cuda", dtype=torch.bfloat16) * 0.01
    a_q = fake_quant_int(a_bf16, bits=4, scale=0.01)
    b_q = fake_quant_int(b_bf16, bits=4, scale=0.01)
    lhs, rhs = _pack_bwd_args(a_q, b_q, layout)

    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(0.008, 0.012, groups * m, device="cuda", dtype=torch.bfloat16).reshape(groups, m)
        b_scale = torch.linspace(0.011, 0.009, groups * n, device="cuda", dtype=torch.bfloat16).reshape(groups, n)
        expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        scale_cols = (k_capacity + scale_spec.subchannel_size - 1) // scale_spec.subchannel_size
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * m * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, m, scale_cols)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * n,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, n)
        expected = _manual_bwd_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            scale_spec.subchannel_size,
        )

    try:
        actual = ragged_dot_int4_bwd(
            lhs,
            rhs,
            group_sizes,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale_spec,
            config=RaggedBwdDotConfig(
                block_m=16,
                block_n=16,
                block_k=16,
                split_k=split_k,
                num_warps=4,
                num_stages=3,
            ),
            layout=layout,
        )
    except Exception as exc:
        message = str(exc).lower()
        if "dot_scaled" in message or "int4" in message:
            pytest.skip(f"local Triton build does not support int4 dot_scaled: {exc}")
        raise

    torch.testing.assert_close(actual, expected, rtol=1.0e-3, atol=1.0e-3)

import os
from dataclasses import replace
from pathlib import Path

import pytest

torch = pytest.importorskip("torch")

from amd_strix_halo_kernels import (
    GemmLayout,
    RaggedBwdGroupInfo,
    RaggedBwdDotConfig,
    RaggedDotConfig,
    SUPPORTED_SUBCHANNELS,
    ScaleMode,
    ScaleSpec,
    calculate_group_info,
    default_ragged_bwd_config,
    prepare_ragged_bwd_group_info,
    prepare_ragged_group_info,
    ragged_group_info_capacity,
    ragged_dot_int4_bwd,
    ragged_dot_int4_bwd_accum,
    ragged_dot_int4,
)
from amd_strix_halo_kernels.native import NATIVE_LIBRARY_NAME, dispatch_runtime_status
from amd_strix_halo_kernels.quant import fake_quant_int, pack_int4_k_major, pack_ragged_rhs_subchannel_scales
from amd_strix_halo_kernels.ragged import (
    RAGGED_BWD_ACCUM_CONFIG,
    _can_use_bwd_even_k_fast_path,
    _can_use_even_k_fast_path,
    _ragged_dot_int4_even_k_kernel,
    _ragged_dot_int4_bwd_kernel,
    _ragged_dot_int4_kernel,
    _should_try_native_bwd,
)


STRICT_RTOL = 1.0e-3
STRICT_ATOL = 1.0e-3
ALL_RAGGED_SCALES = (ScaleSpec(ScaleMode.PER_CHANNEL),) + tuple(
    ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS
)


def _assert_reference_has_signal(expected) -> None:
    max_abs = float(expected.float().abs().max())
    assert max_abs >= 10 * STRICT_ATOL, f"reference signal is too small: max_abs={max_abs}"


@pytest.mark.parametrize("factory", [_ragged_dot_int4_even_k_kernel, _ragged_dot_int4_kernel])
def test_ragged_forward_kernel_factory_separates_generic_artifacts_from_specialized_jit(factory) -> None:
    pytest.importorskip("triton")
    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS", "NUM_TASKS")

    generic = factory(specialize_runtime_args=False)
    specialized = factory(specialize_runtime_args=True)

    assert generic.do_not_specialize == runtime_args
    assert generic.do_not_specialize_on_alignment == runtime_args
    assert specialized.do_not_specialize == []
    assert specialized.do_not_specialize_on_alignment == []


def test_ragged_backward_kernel_factory_separates_generic_artifacts_from_specialized_jit() -> None:
    pytest.importorskip("triton")
    runtime_args = ("M", "N", "K_PACKED", "SCALE_COLS")

    generic = _ragged_dot_int4_bwd_kernel(specialize_runtime_args=False)
    specialized = _ragged_dot_int4_bwd_kernel(specialize_runtime_args=True)

    assert generic.do_not_specialize == runtime_args
    assert generic.do_not_specialize_on_alignment == runtime_args
    assert specialized.do_not_specialize == []
    assert specialized.do_not_specialize_on_alignment == []


@pytest.mark.skipif(not torch.cuda.is_available(), reason="requires CUDA/HIP")
def test_prepare_ragged_bwd_group_info_rejects_odd_packed_capacity() -> None:
    group_sizes = torch.tensor([3], device="cuda", dtype=torch.int32)

    with pytest.raises(ValueError, match="must be even"):
        prepare_ragged_bwd_group_info(group_sizes, k_capacity=3)


@pytest.mark.parametrize(
    ("layout", "scale", "variant", "expected"),
    [
        (GemmLayout.NN, ScaleSpec(ScaleMode.PER_CHANNEL), "evenk", (64, 64, 4)),
        (GemmLayout.TN, ScaleSpec(ScaleMode.SUBCHANNEL, 256), "evenk", (64, 64, 4)),
        (GemmLayout.TT, ScaleSpec(ScaleMode.PER_CHANNEL), "evenk", (64, 64, 4)),
        (GemmLayout.NT, ScaleSpec(ScaleMode.SUBCHANNEL, 256), "maskk", (64, 64, 4)),
        (GemmLayout.TN, ScaleSpec(ScaleMode.PER_CHANNEL), "maskk", (64, 64, 4)),
        (GemmLayout.TT, ScaleSpec(ScaleMode.SUBCHANNEL, 256), "maskk", (64, 64, 4)),
    ],
)
def test_default_ragged_bwd_config_uses_layout_scale_and_variant_policy(
    layout,
    scale,
    variant,
    expected,
) -> None:
    config = default_ragged_bwd_config(
        layout=layout,
        scale=scale,
        variant=variant,
        output_dtype="bfloat16",
    )

    assert (config.block_m, config.block_n, config.num_warps) == expected
    assert config.enable_even_k_fast_path is (variant == "evenk")
    fp32 = default_ragged_bwd_config(
        layout=layout,
        scale=scale,
        variant=variant,
        output_dtype="float32",
    )
    assert (fp32.block_m, fp32.block_n, fp32.num_warps) == (64, 256, 8)


@pytest.mark.parametrize(
    ("overrides", "expected"),
    [
        ({}, True),
        ({"layout": GemmLayout.TN}, True),
        ({"layout": GemmLayout.NT}, False),
        ({"layout": GemmLayout.TT}, False),
        ({"logical_k_capacity": 512}, False),
        ({"rows": 2048}, False),
        ({"out_data_ptr": 2}, False),
        ({"output_is_bf16": False}, True),
        ({"split_k": 2}, True),
        ({"use_native": True, "logical_k_capacity": 512}, True),
        ({"use_native": False}, False),
    ],
)
def test_default_ragged_bwd_native_policy_requires_eligible_specialization(
    overrides,
    expected,
) -> None:
    kwargs = {
        "use_native": None,
        "layout": GemmLayout.NN,
        "output_is_bf16": True,
        "split_k": 1,
        "rows": 4096,
        "cols": 4096,
        "logical_k_capacity": 4096,
        "out_data_ptr": 16,
    }
    kwargs.update(overrides)

    assert _should_try_native_bwd(**kwargs) is expected


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


def _manual_bwd_accum_reference(a_q, b_q, task_ranges, a_scale, b_scale):
    experts = task_ranges.shape[0]
    out = torch.zeros((experts, a_q.shape[1], b_q.shape[2]), device=a_q.device, dtype=torch.float32)
    for expert, (start, end) in enumerate(task_ranges.tolist()):
        for task in range(start, end):
            partial = torch.matmul(a_q[task].float(), b_q[task].float())
            partial *= a_scale[task, :, None].float()
            partial *= b_scale[task, None, :].float()
            out[expert] += partial
    return out


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged int4 dW accumulation requires CUDA/HIP")
@pytest.mark.parametrize("range_dtype", [torch.int32, torch.int64])
def test_ragged_dot_int4_bwd_accum_matches_task_sum_reference(range_dtype) -> None:
    torch.manual_seed(709)
    tasks, experts, rows, cols, task_rows = 5, 3, 64, 96, 64
    a_q = torch.randint(-8, 8, (tasks, rows, task_rows), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-8, 8, (tasks, task_rows, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, GemmLayout.TN)
    a_scale = torch.rand((tasks, rows), device="cuda", dtype=torch.bfloat16) * 0.02 + 0.001
    b_scale = torch.rand((tasks, cols), device="cuda", dtype=torch.bfloat16) * 0.02 + 0.001
    task_ranges = torch.tensor([[0, 2], [2, 2], [2, 5]], device="cuda", dtype=range_dtype)
    expected = _manual_bwd_accum_reference(a_q, b_q, task_ranges, a_scale, b_scale)

    actual = ragged_dot_int4_bwd_accum(
        lhs,
        rhs,
        task_ranges,
        a_scale=a_scale,
        b_scale=b_scale,
        config=RaggedBwdDotConfig(block_m=32, block_n=32, block_k=64, num_warps=4, num_stages=2),
        use_native=False,
    )

    torch.testing.assert_close(actual, expected, rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged int4 dW accumulation requires CUDA/HIP")
@pytest.mark.parametrize(
    "ranges",
    [
        [[-1, 1]],
        [[2, 1]],
        [[0, 3]],
    ],
)
def test_ragged_dot_int4_bwd_accum_rejects_unsafe_ranges(ranges) -> None:
    tasks, rows, cols, task_rows = 2, 32, 32, 64
    lhs = torch.zeros((tasks, task_rows // 2, rows), device="cuda", dtype=torch.uint8)
    rhs = torch.zeros((tasks, task_rows // 2, cols), device="cuda", dtype=torch.uint8)
    a_scale = torch.ones((tasks, rows), device="cuda", dtype=torch.bfloat16)
    b_scale = torch.ones((tasks, cols), device="cuda", dtype=torch.bfloat16)
    task_ranges = torch.tensor(ranges, device="cuda", dtype=torch.int32)

    with pytest.raises(ValueError, match="0 <= start <= end <= tasks"):
        ragged_dot_int4_bwd_accum(
            lhs,
            rhs,
            task_ranges,
            a_scale=a_scale,
            b_scale=b_scale,
            config=RaggedBwdDotConfig(block_m=32, block_n=32, block_k=64, num_warps=4),
            use_native=False,
        )


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


def test_ragged_group_info_capacity_bounds_all_small_partitions() -> None:
    tile = 4
    align_tile = 2
    for rows in range(13):
        for groups in range(1, 5):
            capacity = ragged_group_info_capacity(rows, groups, tile, align_tile=align_tile)

            def visit(prefix, remaining, slots):
                if slots == 1:
                    sizes = prefix + [remaining]
                    info = calculate_group_info(
                        torch.tensor(sizes, dtype=torch.int32),
                        tile,
                        align_tile=align_tile,
                    )
                    assert info.num_tasks <= capacity, (rows, groups, sizes, info.num_tasks, capacity)
                    return
                for size in range(remaining + 1):
                    visit(prefix + [size], remaining - size, slots - 1)

            visit([], rows, groups)


def test_prepare_ragged_group_info_matches_exact_metadata_and_zero_fills_capacity() -> None:
    group_sizes = torch.tensor([17, 0, 31, 24], dtype=torch.int32)
    exact = calculate_group_info(group_sizes, tile=16, align_tile=8)
    prepared = prepare_ragged_group_info(
        group_sizes,
        tile=16,
        rows=72,
        align_tile=8,
        allow_triton=False,
    )

    assert prepared.fixed_capacity is True
    assert prepared.rows == 72
    assert prepared.groups == 4
    assert prepared.tile == 16
    assert prepared.align_tile == 8
    assert prepared.num_tasks >= exact.num_tasks
    for field in ("group_id", "block_start", "actual_start", "actual_end", "start_within_block", "actual_size"):
        torch.testing.assert_close(getattr(prepared, field)[: exact.num_tasks], getattr(exact, field))
    assert torch.count_nonzero(prepared.actual_size[exact.num_tasks:]).item() == 0


def test_prepare_ragged_group_info_rejects_unsafe_capacity() -> None:
    group_sizes = torch.tensor([8, 8], dtype=torch.int32)
    safe_capacity = ragged_group_info_capacity(16, 2, 16, align_tile=8)

    with pytest.raises(ValueError, match="static safe bound"):
        prepare_ragged_group_info(
            group_sizes,
            tile=16,
            rows=16,
            task_capacity=safe_capacity - 1,
            align_tile=8,
        )


@pytest.mark.skipif(not torch.cuda.is_available(), reason="needs CUDA/HIP to compare the Triton build path")
@pytest.mark.parametrize(
    "sizes,tile,tid_size",
    [
        ([512] * 8, 64, None),
        ([300, 0, 1000, 17, 2779], 64, None),
        ([1] * 16, 32, None),
        ([4096], 128, None),
        ([7, 9, 0, 40], 16, None),
        ([512] * 8, 64, 600),
    ],
)
def test_calculate_group_info_torch_matches_triton_on_cuda(sizes, tile, tid_size) -> None:
    gs = torch.tensor(sizes, dtype=torch.int32, device="cuda")
    triton_info = calculate_group_info(gs, tile, tid_size=tid_size, allow_triton=True)
    torch_info = calculate_group_info(gs, tile, tid_size=tid_size, allow_triton=False)
    assert triton_info.num_tasks == torch_info.num_tasks
    for field in ("group_id", "block_start", "actual_start", "actual_end", "start_within_block", "actual_size"):
        assert torch.equal(getattr(triton_info, field), getattr(torch_info, field)), field


@pytest.mark.skipif(not torch.cuda.is_available(), reason="requires CUDA/HIP graph capture")
@pytest.mark.parametrize(
    ("allow_triton", "group_dtype", "extra_capacity"),
    [
        pytest.param(True, torch.int32, 0, id="triton-int32-min-capacity"),
        pytest.param(True, torch.int64, 3, id="triton-int64-extra-capacity"),
        pytest.param(False, torch.int32, 3, id="torch-int32-extra-capacity"),
        pytest.param(False, torch.int64, 0, id="torch-int64-min-capacity"),
    ],
)
def test_prepare_ragged_group_info_cudagraph_replays_all_metadata(
    allow_triton,
    group_dtype,
    extra_capacity,
) -> None:
    if allow_triton:
        pytest.importorskip("triton")

    rows, groups, tile, align_tile = 128, 4, 64, 8
    partitions = ([32, 32, 32, 32], [0, 64, 16, 48], [1, 1, 1, 125])
    group_sizes = torch.tensor(partitions[0], device="cuda", dtype=group_dtype)
    minimum_capacity = ragged_group_info_capacity(rows, groups, tile, align_tile=align_tile)
    capacity = minimum_capacity + extra_capacity

    def prepare():
        return prepare_ragged_group_info(
            group_sizes,
            tile,
            rows=rows,
            task_capacity=capacity,
            align_tile=align_tile,
            allow_triton=allow_triton,
        )

    prepare()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = prepare()

    assert captured.fixed_capacity is True
    assert captured.num_tasks == capacity
    fields = ("group_id", "block_start", "actual_start", "actual_end", "start_within_block", "actual_size")
    observed_group_ids = []
    for partition in partitions:
        group_sizes.copy_(torch.tensor(partition, device="cuda", dtype=group_dtype))
        graph.replay()
        torch.cuda.synchronize()
        expected = calculate_group_info(
            torch.tensor(partition, dtype=group_dtype),
            tile,
            tid_size=capacity,
            align_tile=align_tile,
            allow_triton=False,
        )
        for field in fields:
            actual_field = getattr(captured, field).cpu()
            assert torch.equal(actual_field, getattr(expected, field)), field
        observed_group_ids.append(captured.group_id.cpu().clone())

    assert not torch.equal(observed_group_ids[0], observed_group_ids[1])
    assert not torch.equal(observed_group_ids[1], observed_group_ids[2])


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
def test_ragged_dot_int4_rejects_prepared_metadata_for_another_tile() -> None:
    group_sizes = torch.tensor([4, 4], device="cuda", dtype=torch.int32)
    group_info = prepare_ragged_group_info(group_sizes, tile=16, rows=8)
    lhs = torch.zeros((8, 16), device="cuda", dtype=torch.uint8)
    rhs = torch.zeros((2, 16, 8), device="cuda", dtype=torch.uint8)
    a_scale = torch.ones((8,), device="cuda", dtype=torch.bfloat16)
    b_scale = torch.ones((2, 8), device="cuda", dtype=torch.bfloat16)

    with pytest.raises(ValueError, match="group_info tile"):
        ragged_dot_int4(
            lhs,
            rhs,
            None,
            group_info=group_info,
            a_scale=a_scale,
            b_scale=b_scale,
            config=RaggedDotConfig(block_m=32, block_n=16, block_k=32, num_warps=4),
        )


def _native_test_root() -> Path | None:
    configured = os.environ.get("AMD_STRIX_HALO_NATIVE_ROOT")
    if configured:
        return Path(configured)
    package_dir = Path(__file__).resolve().parents[1] / "src" / "amd_strix_halo_kernels"
    return package_dir if (package_dir / NATIVE_LIBRARY_NAME).exists() else None


@pytest.mark.skipif(not torch.cuda.is_available() or torch.version.hip is None, reason="requires ROCm")
def test_native_ragged_dot_int4_bwd_accum_matches_task_sum_reference() -> None:
    native_root = _native_test_root()
    if native_root is None:
        pytest.skip("native kernels require a built wheel or AMD_STRIX_HALO_NATIVE_ROOT")
    library = native_root / NATIVE_LIBRARY_NAME
    status = dispatch_runtime_status(library)
    if not status.has_linked_kernels:
        pytest.skip("native dispatch library does not have linked ROCm kernel support")

    torch.manual_seed(719)
    tasks, experts, rows, cols, task_rows = 5, 3, 64, 128, 64
    a_q = torch.randint(-8, 8, (tasks, rows, task_rows), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-8, 8, (tasks, task_rows, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, GemmLayout.TN)
    a_scale = torch.rand((tasks, rows), device="cuda", dtype=torch.bfloat16) * 0.02 + 0.001
    b_scale = torch.rand((tasks, cols), device="cuda", dtype=torch.bfloat16) * 0.02 + 0.001
    task_ranges = torch.tensor([[0, 2], [2, 2], [2, 5]], device="cuda", dtype=torch.int32)
    expected = _manual_bwd_accum_reference(a_q, b_q, task_ranges, a_scale, b_scale)

    actual = ragged_dot_int4_bwd_accum(
        lhs,
        rhs,
        task_ranges,
        a_scale=a_scale,
        b_scale=b_scale,
        config=RAGGED_BWD_ACCUM_CONFIG,
        use_native=True,
        native_root=str(native_root),
        native_library_path=str(library),
    )

    torch.testing.assert_close(actual, expected, rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available() or torch.version.hip is None, reason="requires ROCm")
def test_ragged_dot_int4_bwd_accum_bf16_matches_single_final_rounding() -> None:
    pytest.importorskip("triton")
    torch.manual_seed(727)
    tasks, experts, rows, cols, task_rows = 4, 3, 64, 128, 64
    a_q = torch.randint(-4, 5, (tasks, rows, task_rows), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-4, 5, (tasks, task_rows, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, GemmLayout.TN)
    a_scale = torch.rand((tasks, rows), device="cuda", dtype=torch.bfloat16) * 0.01
    b_scale = torch.rand((tasks, cols), device="cuda", dtype=torch.bfloat16) * 0.01
    task_ranges = torch.tensor([[0, 2], [2, 2], [2, 4]], device="cuda", dtype=torch.int32)

    fp32 = ragged_dot_int4_bwd_accum(
        lhs,
        rhs,
        task_ranges,
        a_scale=a_scale,
        b_scale=b_scale,
        use_native=False,
    )
    bf16_out = torch.empty_like(fp32, dtype=torch.bfloat16)
    bf16 = ragged_dot_int4_bwd_accum(
        lhs,
        rhs,
        task_ranges,
        a_scale=a_scale,
        b_scale=b_scale,
        out=bf16_out,
        output_dtype=torch.bfloat16,
        use_native=False,
    )

    assert bf16 is bf16_out
    assert torch.equal(bf16, fp32.to(torch.bfloat16))
    assert torch.count_nonzero(bf16[1]) == 0
    with pytest.raises(ValueError, match="output_dtype must be"):
        ragged_dot_int4_bwd_accum(
            lhs,
            rhs,
            task_ranges,
            a_scale=a_scale,
            b_scale=b_scale,
            output_dtype=torch.float16,
            use_native=False,
        )
    with pytest.raises(ValueError, match="does not match output_dtype"):
        ragged_dot_int4_bwd_accum(
            lhs,
            rhs,
            task_ranges,
            a_scale=a_scale,
            b_scale=b_scale,
            out=bf16_out,
            use_native=False,
        )


@pytest.mark.skipif(not torch.cuda.is_available() or torch.version.hip is None, reason="requires ROCm")
@pytest.mark.parametrize(
    ("backend", "layout", "scale", "contraction"),
    [
        pytest.param("native", GemmLayout.NN, ScaleSpec(ScaleMode.PER_CHANNEL), 64, id="native-nn-pc-evenk"),
        pytest.param(
            "native", GemmLayout.NT, ScaleSpec(ScaleMode.SUBCHANNEL, 32), 64, id="native-nt-sc32-evenk"
        ),
        pytest.param("native", GemmLayout.TN, ScaleSpec(ScaleMode.PER_CHANNEL), 96, id="native-tn-pc-maskk"),
        pytest.param(
            "native", GemmLayout.TT, ScaleSpec(ScaleMode.SUBCHANNEL, 32), 96, id="native-tt-sc32-maskk"
        ),
        pytest.param(
            "triton", GemmLayout.TT, ScaleSpec(ScaleMode.SUBCHANNEL, 32), 96, id="triton-tt-sc32-maskk"
        ),
    ],
)
def test_ragged_dot_int4_cudagraph_replays_dynamic_inputs(backend, layout, scale, contraction) -> None:
    pytest.importorskip("triton")
    native_root = None
    library = None
    if backend == "native":
        native_root = _native_test_root()
        if native_root is None:
            pytest.skip("native kernels require a built wheel or AMD_STRIX_HALO_NATIVE_ROOT")
        library = native_root / NATIVE_LIBRARY_NAME
        status = dispatch_runtime_status(library)
        if not status.has_linked_kernels:
            pytest.skip("native dispatch library does not have linked ROCm kernel support")

    torch.manual_seed(503 + list(GemmLayout).index(layout) * 17 + (scale.subchannel_size or 0) + contraction)
    rows, output, groups = 128, 256, 4
    config = RaggedDotConfig()
    group_sizes = torch.tensor([32, 32, 32, 32], device="cuda", dtype=torch.int32)
    quantized_inputs = []
    packed_inputs = []
    for _ in range(2):
        a_q = fake_quant_int(torch.randn((rows, contraction), device="cuda") * 0.01, bits=4, scale=0.01)
        b1_q = fake_quant_int(
            torch.randn((groups, contraction, output), device="cuda") * 0.01,
            bits=4,
            scale=0.01,
        )
        b2_q = fake_quant_int(
            torch.randn((groups, contraction, output), device="cuda") * 0.01,
            bits=4,
            scale=0.01,
        )
        lhs_state, rhs1_state = _pack_forward_args(a_q, b1_q, layout)
        _, rhs2_state = _pack_forward_args(a_q, b2_q, layout)
        quantized_inputs.append((a_q, b1_q, b2_q))
        packed_inputs.append((lhs_state, rhs1_state, rhs2_state))

    if scale.mode is ScaleMode.PER_CHANNEL:
        base_a_scale = torch.linspace(0.01, 0.03, rows, device="cuda", dtype=torch.bfloat16)
        base_b_scale = torch.linspace(
            0.03,
            0.01,
            groups * output,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, output)
    else:
        subchannel = scale.subchannel_size or 1
        scale_cols = (contraction + subchannel - 1) // subchannel
        base_a_scale = torch.linspace(
            0.01,
            0.03,
            rows * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(rows, scale_cols)
        b_scale_logical = torch.linspace(
            0.03,
            0.01,
            groups * output * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, output, scale_cols)
        base_b_scale = pack_ragged_rhs_subchannel_scales(b_scale_logical)
    replay_scales = [
        (base_a_scale, base_b_scale),
        ((base_a_scale * 0.75).to(torch.bfloat16), (base_b_scale * 1.125).to(torch.bfloat16)),
    ]
    lhs = packed_inputs[0][0].clone()
    rhs1 = packed_inputs[0][1].clone()
    rhs2 = packed_inputs[0][2].clone()
    a_scale = replay_scales[0][0].clone()
    b_scale = replay_scales[0][1].clone()

    def run_pair():
        info = prepare_ragged_group_info(group_sizes, config.block_m, rows=rows)
        first = ragged_dot_int4(
            lhs,
            rhs1,
            None,
            group_info=info,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale,
            config=config,
            layout=layout,
            use_native=backend == "native",
            native_root=None if native_root is None else str(native_root),
            native_library_path=None if library is None else str(library),
        )
        second = ragged_dot_int4(
            lhs,
            rhs2,
            None,
            group_info=info,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale,
            config=config,
            layout=layout,
            use_native=backend == "native",
            native_root=None if native_root is None else str(native_root),
            native_library_path=None if library is None else str(library),
        )
        return info, first, second

    run_pair()
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured_info, captured_first, captured_second = run_pair()

    assert captured_info.fixed_capacity is True
    assert captured_info.num_tasks == ragged_group_info_capacity(rows, groups, config.block_m)
    observed_first = []
    replay_cases = (([32, 32, 32, 32], 0), ([0, 64, 16, 48], 1), ([1, 1, 1, 125], 0))
    for sizes, input_index in replay_cases:
        lhs_state, rhs1_state, rhs2_state = packed_inputs[input_index]
        a_scale_state, b_scale_state = replay_scales[input_index]
        lhs.copy_(lhs_state)
        rhs1.copy_(rhs1_state)
        rhs2.copy_(rhs2_state)
        a_scale.copy_(a_scale_state)
        b_scale.copy_(b_scale_state)
        group_sizes.copy_(torch.tensor(sizes, device="cuda", dtype=torch.int32))
        graph.replay()
        torch.cuda.synchronize()
        a_q, b1_q, b2_q = quantized_inputs[input_index]
        if scale.mode is ScaleMode.PER_CHANNEL:
            expected_first = _manual_grouped_reference(a_q, b1_q, group_sizes, a_scale_state, b_scale_state)
            expected_second = _manual_grouped_reference(a_q, b2_q, group_sizes, a_scale_state, b_scale_state)
        else:
            subchannel = scale.subchannel_size or 1
            expected_first = _manual_grouped_subchannel_reference(
                a_q, b1_q, group_sizes, a_scale_state, b_scale_state, subchannel
            )
            expected_second = _manual_grouped_subchannel_reference(
                a_q, b2_q, group_sizes, a_scale_state, b_scale_state, subchannel
            )
        expected_first = expected_first.to(torch.bfloat16)
        expected_second = expected_second.to(torch.bfloat16)
        _assert_reference_has_signal(expected_first)
        _assert_reference_has_signal(expected_second)
        torch.testing.assert_close(captured_first, expected_first, rtol=STRICT_RTOL, atol=STRICT_ATOL)
        torch.testing.assert_close(captured_second, expected_second, rtol=STRICT_RTOL, atol=STRICT_ATOL)
        observed_first.append(captured_first.clone())

    assert not torch.equal(observed_first[0], observed_first[1])
    assert not torch.equal(observed_first[1], observed_first[2])


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

    expected_dtype = torch.bfloat16 if split_k == 1 else torch.float32
    assert actual.dtype == expected_dtype
    torch.testing.assert_close(actual, expected.to(actual.dtype), rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="requires CUDA/HIP graph capture")
@pytest.mark.parametrize("layout", list(GemmLayout))
@pytest.mark.parametrize(
    "scale_spec",
    [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)],
)
def test_prepared_ragged_bwd_cudagraph_replays_dynamic_group_sizes(
    layout,
    scale_spec,
) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(811 + list(GemmLayout).index(layout) * 17 + (scale_spec.subchannel_size or 0))
    groups, rows, k_values, cols = 3, 32, 65, 34
    a_q = torch.randint(-4, 5, (groups, rows, k_values), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, k_values, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, layout)
    k_capacity = 2 * (lhs.shape[1] if layout in {GemmLayout.TN, GemmLayout.TT} else lhs.shape[2])
    group_sizes = torch.tensor([16, 32, 64], device="cuda", dtype=torch.int32)
    config = RaggedBwdDotConfig(
        block_m=16,
        block_n=16,
        block_k=16,
        num_warps=4,
        num_stages=3,
    )
    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, cols)
    else:
        scale_cols = (k_capacity + (scale_spec.subchannel_size or 1) - 1) // (
            scale_spec.subchannel_size or 1
        )
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows, scale_cols)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, cols)

    group_info = prepare_ragged_bwd_group_info(
        group_sizes,
        k_capacity=k_capacity,
        scale=scale_spec,
        config=config,
        dynamic_group_sizes=True,
    )
    assert isinstance(group_info, RaggedBwdGroupInfo)
    assert group_info.group_sizes is group_sizes
    assert group_info.variant == "maskk"
    out = torch.empty((groups, rows, cols), device="cuda", dtype=torch.bfloat16)
    if layout is GemmLayout.NN and scale_spec.mode is ScaleMode.PER_CHANNEL:
        with pytest.raises(ValueError, match="requires use_native"):
            ragged_dot_int4_bwd(
                lhs,
                rhs,
                None,
                group_info=group_info,
                a_scale=a_scale,
                b_scale=b_scale,
                scale=scale_spec,
                config=config,
                layout=layout,
                out=out,
            )
        with pytest.raises(ValueError, match="preallocated out"):
            ragged_dot_int4_bwd(
                lhs,
                rhs,
                None,
                group_info=group_info,
                a_scale=a_scale,
                b_scale=b_scale,
                scale=scale_spec,
                config=config,
                layout=layout,
                use_native=False,
            )

    def run():
        return ragged_dot_int4_bwd(
            lhs,
            rhs,
            None,
            group_info=group_info,
            a_scale=a_scale,
            b_scale=b_scale,
            scale=scale_spec,
            config=config,
            layout=layout,
            out=out,
            use_native=False,
        )

    assert run() is out
    torch.cuda.synchronize()
    graph = torch.cuda.CUDAGraph()
    with torch.cuda.graph(graph):
        captured = run()
    assert captured is out

    for replay_sizes in ([0, 1, 65], [16, 32, 48], [65, 17, 2]):
        group_sizes.copy_(torch.tensor(replay_sizes, device="cuda", dtype=torch.int32))
        graph.replay()
        torch.cuda.synchronize()
        if scale_spec.mode is ScaleMode.PER_CHANNEL:
            expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
        else:
            expected = _manual_bwd_subchannel_reference(
                a_q,
                b_q,
                group_sizes,
                a_scale,
                b_scale,
                scale_spec.subchannel_size,
            )
        torch.testing.assert_close(
            captured,
            expected.to(torch.bfloat16),
            rtol=STRICT_RTOL,
            atol=STRICT_ATOL,
        )


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4_bwd requires CUDA/HIP")
@pytest.mark.parametrize("cols", [20, 21], ids=("packed-even-n", "scalar-odd-n"))
def test_ragged_dot_int4_bwd_output_dtype_contract_and_single_rounding(cols) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(701)
    groups, rows, contraction = 2, 16, 32
    group_sizes = torch.tensor([32, 19], device="cuda", dtype=torch.int32)
    a_q = torch.randint(-4, 5, (groups, rows, contraction), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, contraction, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, GemmLayout.NN)
    a_scale = torch.linspace(0.008, 0.012, groups * rows, device="cuda", dtype=torch.bfloat16).reshape(
        groups, rows
    )
    b_scale = torch.linspace(0.011, 0.009, groups * cols, device="cuda", dtype=torch.bfloat16).reshape(
        groups, cols
    )
    config = RaggedBwdDotConfig(block_m=16, block_n=16, block_k=16, split_k=1, num_warps=4, num_stages=3)
    common = {
        "a_scale": a_scale,
        "b_scale": b_scale,
        "config": config,
        "layout": GemmLayout.NN,
        "use_native": False,
    }

    fp32 = ragged_dot_int4_bwd(lhs, rhs, group_sizes, output_dtype=torch.float32, **common)
    bf16 = ragged_dot_int4_bwd(lhs, rhs, group_sizes, output_dtype=torch.bfloat16, **common)
    default = ragged_dot_int4_bwd(lhs, rhs, group_sizes, **common)
    fp32_out = torch.empty_like(fp32)
    inferred = ragged_dot_int4_bwd(lhs, rhs, group_sizes, out=fp32_out, **common)

    assert default.dtype == torch.bfloat16
    assert inferred is fp32_out
    assert torch.equal(inferred, fp32)
    assert torch.equal(bf16, fp32.to(torch.bfloat16))
    assert torch.equal(default, bf16)
    expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    torch.testing.assert_close(fp32, expected, rtol=1.0e-3, atol=1.0e-3)
    torch.testing.assert_close(bf16, expected.to(torch.bfloat16), rtol=1.0e-3, atol=1.0e-3)

    with pytest.raises(ValueError, match="output_dtype must be"):
        ragged_dot_int4_bwd(lhs, rhs, group_sizes, output_dtype=torch.float16, **common)
    with pytest.raises(ValueError, match="does not match output_dtype"):
        ragged_dot_int4_bwd(
            lhs,
            rhs,
            group_sizes,
            out=torch.empty_like(bf16),
            output_dtype=torch.float32,
            **common,
        )
    with pytest.raises(ValueError, match="split_k > 1 requires"):
        ragged_dot_int4_bwd(
            lhs,
            rhs,
            group_sizes,
            output_dtype=torch.bfloat16,
            **{**common, "config": replace(config, split_k=2)},
        )


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

    expected_dtype = torch.bfloat16 if split_k == 1 else torch.float32
    assert actual.dtype == expected_dtype
    torch.testing.assert_close(actual, expected.to(actual.dtype), rtol=1.0e-3, atol=1.0e-3)


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4_bwd requires CUDA/HIP")
@pytest.mark.parametrize("layout", list(GemmLayout))
@pytest.mark.parametrize("scale_spec", ALL_RAGGED_SCALES)
@pytest.mark.parametrize("variant", ["evenk", "maskk"])
def test_ragged_dot_int4_bwd_auto_config_all_layouts_scales_and_k_variants(
    layout,
    scale_spec,
    variant,
) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(
        947
        + list(GemmLayout).index(layout) * 19
        + (scale_spec.subchannel_size or 0)
        + (variant == "maskk")
    )
    expected_config = default_ragged_bwd_config(
        layout=layout,
        scale=scale_spec,
        variant=variant,
        output_dtype="bfloat16",
    )
    groups = 3
    rows = expected_config.block_m
    cols = expected_config.block_n
    k_capacity = 64 if scale_spec.mode is ScaleMode.PER_CHANNEL else 2 * (scale_spec.subchannel_size or 1)
    group_values = [k_capacity, 0, k_capacity] if variant == "evenk" else [k_capacity - 1, 0, k_capacity - 3]
    group_sizes = torch.tensor(group_values, device="cuda", dtype=torch.int32)
    a_q = torch.randint(-4, 5, (groups, rows, k_capacity), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, k_capacity, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, layout)
    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, cols)
        expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        subchannel = scale_spec.subchannel_size or 1
        scale_cols = (k_capacity + subchannel - 1) // subchannel
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows, scale_cols)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, cols)
        expected = _manual_bwd_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            subchannel,
        )

    actual = ragged_dot_int4_bwd(
        lhs,
        rhs,
        group_sizes,
        a_scale=a_scale,
        b_scale=b_scale,
        scale=scale_spec,
        config=None,
        layout=layout,
        use_native=False,
    )

    assert actual.dtype == torch.bfloat16
    torch.testing.assert_close(
        actual,
        expected.to(torch.bfloat16),
        rtol=STRICT_RTOL,
        atol=STRICT_ATOL,
    )


@pytest.mark.skipif(not torch.cuda.is_available(), reason="ragged_dot_int4_bwd requires CUDA/HIP")
@pytest.mark.parametrize(
    "group_values",
    [(0, 1, 2), (15, 16, 17), (31, 32, 33), (63, 64, 65)],
    ids=("tiny", "block-tail", "two-block-tail", "many-block-tail"),
)
@pytest.mark.parametrize(
    "scale_spec",
    [ScaleSpec(ScaleMode.PER_CHANNEL), ScaleSpec(ScaleMode.SUBCHANNEL, 32)],
)
@pytest.mark.parametrize("split_k", [1, 2])
def test_ragged_dot_int4_bwd_full_blocks_and_single_tail_match_reference(
    group_values,
    scale_spec,
    split_k,
) -> None:
    pytest.importorskip("triton")
    torch.manual_seed(907 + sum(group_values) + split_k + (scale_spec.subchannel_size or 0))
    groups, rows, k_capacity, cols = 3, 17, 66, 19
    group_sizes = torch.tensor(group_values, device="cuda", dtype=torch.int32)
    a_q = torch.randint(-4, 5, (groups, rows, k_capacity), device="cuda", dtype=torch.int8)
    b_q = torch.randint(-4, 5, (groups, k_capacity, cols), device="cuda", dtype=torch.int8)
    lhs, rhs = _pack_bwd_args(a_q, b_q, GemmLayout.NN)
    if scale_spec.mode is ScaleMode.PER_CHANNEL:
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, cols)
        expected = _manual_bwd_reference(a_q, b_q, group_sizes, a_scale, b_scale)
    else:
        subchannel = scale_spec.subchannel_size or 1
        scale_cols = (k_capacity + subchannel - 1) // subchannel
        a_scale = torch.linspace(
            0.008,
            0.012,
            groups * rows * scale_cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, rows, scale_cols)
        b_scale = torch.linspace(
            0.011,
            0.009,
            groups * scale_cols * cols,
            device="cuda",
            dtype=torch.bfloat16,
        ).reshape(groups, scale_cols, cols)
        expected = _manual_bwd_subchannel_reference(
            a_q,
            b_q,
            group_sizes,
            a_scale,
            b_scale,
            subchannel,
        )

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
        layout=GemmLayout.NN,
        use_native=False,
    )

    expected_dtype = torch.bfloat16 if split_k == 1 else torch.float32
    assert actual.dtype == expected_dtype
    torch.testing.assert_close(
        actual,
        expected.to(expected_dtype),
        rtol=STRICT_RTOL,
        atol=STRICT_ATOL,
    )

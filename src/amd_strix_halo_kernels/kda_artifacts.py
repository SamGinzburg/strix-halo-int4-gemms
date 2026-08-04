from __future__ import annotations

from dataclasses import dataclass
from typing import Any, Iterable

from .metadata import ARCH


KDA_FAMILY = "kimi_delta_attention"
KDA_FORWARD = "forward"
KDA_BACKWARD_PREPROCESS = "backward_preprocess"
KDA_BACKWARD_RECURRENT = "backward_recurrent"
KDA_BACKWARD_NORMALIZE = "backward_normalize"
KDA_PHASES = (
    KDA_FORWARD,
    KDA_BACKWARD_PREPROCESS,
    KDA_BACKWARD_RECURRENT,
    KDA_BACKWARD_NORMALIZE,
)
KDA_MODES = ("bf16-bf16", "int4-bf16", "bf16-int4", "int4-int4")
# Artifact names retain the generation shape for reproducibility, but B, T, and
# H are runtime scalar arguments.  The packaged profile accepts positive B/H
# and 1 <= T <= this generation-time maximum, subject to the RDNA 3.5 buffer
# descriptor limits recorded in ``runtime_constraints``.
KDA_PRECOMPILED_BATCH = 4
KDA_PRECOMPILED_SEQUENCE = 2048
KDA_PRECOMPILED_HEADS = 32
KDA_PRECOMPILED_MIN_SEQUENCE = 1
KDA_PRECOMPILED_MAX_SEQUENCE = KDA_PRECOMPILED_SEQUENCE
KDA_PRECOMPILED_HEAD_DIM = 128
KDA_PRECOMPILED_VALUE_DIM = 128
KDA_PRECOMPILED_VALUE_BLOCK = 64
KDA_PRECOMPILED_CHECKPOINT_INTERVAL = 4
KDA_PRECOMPILED_NUM_CHECKPOINTS = (
    KDA_PRECOMPILED_SEQUENCE // KDA_PRECOMPILED_CHECKPOINT_INTERVAL + 1
)
KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD = 127
KDA_PROFILE_STANDARD = "standard"
KDA_PROFILE_QWEN36 = "qwen36"
KDA_PROFILES = (KDA_PROFILE_STANDARD, KDA_PROFILE_QWEN36)
KDA_QWEN36_PRECOMPILED_BATCH = 7
KDA_QWEN36_PRECOMPILED_HEADS = 48
KDA_QWEN36_PRECOMPILED_CHECKPOINT_INTERVAL = 8
KDA_QWEN36_PRECOMPILED_NUM_CHECKPOINTS = (
    KDA_PRECOMPILED_SEQUENCE // KDA_QWEN36_PRECOMPILED_CHECKPOINT_INTERVAL + 1
)
# CI=8 gives each B/H cache slice 257 * 128 * 128 FP32 elements, so 255
# slices fit in one 32-bit RDNA 3.5 buffer-descriptor page.
KDA_QWEN36_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD = 255
KDA_ARGUMENT_NAMES = {
    KDA_FORWARD: (
        "query",
        "key",
        "value",
        "log_decay",
        "beta",
        "query_scale",
        "key_scale",
        "value_scale",
        "initial_state",
        "output",
        "final_state",
        "state_cache",
        "state_cache_tail",
        "sequence",
        "heads",
        "head_dim",
        "packed_head_dim",
        "value_dim",
        "packed_value_dim",
        "num_checkpoints",
        "output_scale",
    ),
    KDA_BACKWARD_PREPROCESS: (
        "query",
        "key",
        "query_scale",
        "key_scale",
        "query_logical",
        "key_logical",
        "rows",
        "head_dim",
        "packed_head_dim",
    ),
    KDA_BACKWARD_RECURRENT: (
        "query_logical_workspace",
        "key_logical_workspace",
        "value",
        "log_decay",
        "beta",
        "value_scale",
        "grad_output",
        "grad_final_state",
        "state_cache",
        "state_cache_tail",
        "grad_query_normalized",
        "grad_key_normalized",
        "grad_value",
        "grad_log_decay",
        "grad_beta",
        "grad_initial_state",
        "sequence",
        "heads",
        "head_dim",
        "value_dim",
        "packed_value_dim",
        "num_checkpoints",
        "output_scale",
    ),
    KDA_BACKWARD_NORMALIZE: (
        "query",
        "key",
        "query_scale",
        "key_scale",
        "grad_query_normalized",
        "grad_key_normalized",
        "grad_query",
        "grad_key",
        "rows",
        "head_dim",
        "packed_head_dim",
    ),
}


def kda_mode(*, qk_int4: bool, value_int4: bool) -> str:
    return f"{'int4' if qk_int4 else 'bf16'}-{'int4' if value_int4 else 'bf16'}"


@dataclass(frozen=True, slots=True)
class KdaArtifactJob:
    phase: str
    qk_int4: bool = False
    value_int4: bool = False
    store_state_cache: bool = False
    profile: str = KDA_PROFILE_STANDARD

    def __post_init__(self) -> None:
        if self.phase not in KDA_PHASES:
            raise ValueError(f"unsupported KDA artifact phase {self.phase!r}")
        if self.profile not in KDA_PROFILES:
            raise ValueError(f"unsupported KDA artifact profile {self.profile!r}")
        if self.phase != KDA_FORWARD and self.store_state_cache:
            raise ValueError("only KDA forward artifacts can store the state cache")
        if self.phase in {KDA_BACKWARD_PREPROCESS, KDA_BACKWARD_NORMALIZE} and self.value_int4:
            raise ValueError(f"{self.phase} does not consume V")
        if self.phase == KDA_BACKWARD_RECURRENT and self.qk_int4:
            raise ValueError("backward_recurrent consumes materialized FP32 Q/K")

    @property
    def mode(self) -> str:
        return kda_mode(qk_int4=self.qk_int4, value_int4=self.value_int4)

    @property
    def generation_batch(self) -> int:
        return (
            KDA_QWEN36_PRECOMPILED_BATCH
            if self.profile == KDA_PROFILE_QWEN36
            else KDA_PRECOMPILED_BATCH
        )

    @property
    def generation_heads(self) -> int:
        return (
            KDA_QWEN36_PRECOMPILED_HEADS
            if self.profile == KDA_PROFILE_QWEN36
            else KDA_PRECOMPILED_HEADS
        )

    @property
    def checkpoint_interval(self) -> int:
        return (
            KDA_QWEN36_PRECOMPILED_CHECKPOINT_INTERVAL
            if self.profile == KDA_PROFILE_QWEN36
            else KDA_PRECOMPILED_CHECKPOINT_INTERVAL
        )

    @property
    def num_checkpoints(self) -> int:
        return (
            KDA_QWEN36_PRECOMPILED_NUM_CHECKPOINTS
            if self.profile == KDA_PROFILE_QWEN36
            else KDA_PRECOMPILED_NUM_CHECKPOINTS
        )

    @property
    def cache_split_batch_head(self) -> int:
        return (
            KDA_QWEN36_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD
            if self.profile == KDA_PROFILE_QWEN36
            else KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD
        )


def kda_precompiled_jobs(
    *, profiles: Iterable[str] = (KDA_PROFILE_STANDARD,)
) -> tuple[KdaArtifactJob, ...]:
    jobs: list[KdaArtifactJob] = []
    selected_profiles = tuple(profiles)
    if any(profile not in KDA_PROFILES for profile in selected_profiles):
        raise ValueError(f"profiles must be drawn from {KDA_PROFILES}")
    for profile in selected_profiles:
        for qk_int4 in (False, True):
            for value_int4 in (False, True):
                for store_state_cache in (False, True):
                    jobs.append(
                        KdaArtifactJob(
                            KDA_FORWARD,
                            qk_int4=qk_int4,
                            value_int4=value_int4,
                            store_state_cache=store_state_cache,
                            profile=profile,
                        )
                    )
        for qk_int4 in (False, True):
            jobs.append(
                KdaArtifactJob(
                    KDA_BACKWARD_PREPROCESS,
                    qk_int4=qk_int4,
                    profile=profile,
                )
            )
        for value_int4 in (False, True):
            jobs.append(
                KdaArtifactJob(
                    KDA_BACKWARD_RECURRENT,
                    value_int4=value_int4,
                    profile=profile,
                )
            )
        for qk_int4 in (False, True):
            jobs.append(
                KdaArtifactJob(
                    KDA_BACKWARD_NORMALIZE,
                    qk_int4=qk_int4,
                    profile=profile,
                )
            )
    return tuple(jobs)


def kda_artifact_profile(*, checkpoint_interval: int) -> str | None:
    if checkpoint_interval == KDA_PRECOMPILED_CHECKPOINT_INTERVAL:
        return KDA_PROFILE_STANDARD
    if checkpoint_interval == KDA_QWEN36_PRECOMPILED_CHECKPOINT_INTERVAL:
        return KDA_PROFILE_QWEN36
    return None


def kda_kernel_id(job: KdaArtifactJob, *, arch: str = ARCH) -> str:
    if job.phase == KDA_FORWARD:
        phase = "fwd_cache" if job.store_state_cache else "fwd"
        mode = job.mode.replace("-", "x")
    elif job.phase == KDA_BACKWARD_PREPROCESS:
        phase = "bwd_pre"
        mode = "int4" if job.qk_int4 else "bf16"
    elif job.phase == KDA_BACKWARD_RECURRENT:
        phase = "bwd_recurrent"
        mode = "int4" if job.value_int4 else "bf16"
    else:
        phase = "bwd_norm"
        mode = "int4" if job.qk_int4 else "bf16"
    return (
        f"{arch}_kda_{phase}_{mode}_b{job.generation_batch}_"
        f"t{KDA_PRECOMPILED_SEQUENCE}_h{job.generation_heads}_"
        f"d{KDA_PRECOMPILED_HEAD_DIM}_dv{KDA_PRECOMPILED_VALUE_DIM}_"
        f"vb{KDA_PRECOMPILED_VALUE_BLOCK}_ci{job.checkpoint_interval}"
    )


def kda_metadata_dict(
    *,
    job: KdaArtifactJob,
    kernel_id: str,
    amdgcn_symbol: str,
    launch_metadata: dict[str, int],
    asm_keys: Iterable[str],
    source_triton_commit: str | None,
    amdgcn: str,
    kernel_arg_layout: dict[str, Any],
) -> dict[str, Any]:
    return {
        "kernel_id": kernel_id,
        "family": KDA_FAMILY,
        "phase": job.phase,
        "profile": job.profile,
        "arch": ARCH,
        "mode": job.mode,
        "qk_dtype": "int4" if job.qk_int4 else "bfloat16",
        "value_dtype": "int4" if job.value_int4 else "bfloat16",
        "output_dtype": "bfloat16" if job.phase == KDA_FORWARD else None,
        "accumulation_dtype": "float32",
        "normalize_qk": True,
        "stores_state_cache": job.store_state_cache,
        "shape_specialization": {
            "batch": "runtime",
            "sequence": "runtime",
            "heads": "runtime",
            "head_dim": KDA_PRECOMPILED_HEAD_DIM,
            "value_dim": KDA_PRECOMPILED_VALUE_DIM,
        },
        "generation_shape": {
            "batch": job.generation_batch,
            "sequence": KDA_PRECOMPILED_SEQUENCE,
            "heads": job.generation_heads,
            "head_dim": KDA_PRECOMPILED_HEAD_DIM,
            "value_dim": KDA_PRECOMPILED_VALUE_DIM,
        },
        "runtime_constraints": {
            "batch_min": 1,
            "sequence_min": KDA_PRECOMPILED_MIN_SEQUENCE,
            "sequence_max": KDA_PRECOMPILED_MAX_SEQUENCE,
            "heads_min": 1,
            "max_buffer_descriptor_bytes": 2**32,
        },
        "config": {
            "value_block": KDA_PRECOMPILED_VALUE_BLOCK,
            "checkpoint_interval": job.checkpoint_interval,
            "num_checkpoints": job.num_checkpoints,
            "cache_split_batch_head": job.cache_split_batch_head,
        },
        "asm_keys": sorted(asm_keys),
        "status": "generated",
        "source_triton_commit": source_triton_commit,
        "amdgcn_symbol": amdgcn_symbol,
        "launch_metadata": launch_metadata,
        "kernel_arg_layout": kernel_arg_layout,
        "amdgcn_stats": {
            "buffer_load": amdgcn.count("buffer_load"),
            "buffer_store": amdgcn.count("buffer_store"),
            "waitcnt": amdgcn.count("s_waitcnt"),
            "lines": len(amdgcn.splitlines()),
        },
    }

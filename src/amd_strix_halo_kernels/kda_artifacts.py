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

    def __post_init__(self) -> None:
        if self.phase not in KDA_PHASES:
            raise ValueError(f"unsupported KDA artifact phase {self.phase!r}")
        if self.phase != KDA_FORWARD and self.store_state_cache:
            raise ValueError("only KDA forward artifacts can store the state cache")
        if self.phase in {KDA_BACKWARD_PREPROCESS, KDA_BACKWARD_NORMALIZE} and self.value_int4:
            raise ValueError(f"{self.phase} does not consume V")
        if self.phase == KDA_BACKWARD_RECURRENT and self.qk_int4:
            raise ValueError("backward_recurrent consumes materialized FP32 Q/K")

    @property
    def mode(self) -> str:
        return kda_mode(qk_int4=self.qk_int4, value_int4=self.value_int4)


def kda_precompiled_jobs() -> tuple[KdaArtifactJob, ...]:
    jobs: list[KdaArtifactJob] = []
    for qk_int4 in (False, True):
        for value_int4 in (False, True):
            for store_state_cache in (False, True):
                jobs.append(
                    KdaArtifactJob(
                        KDA_FORWARD,
                        qk_int4=qk_int4,
                        value_int4=value_int4,
                        store_state_cache=store_state_cache,
                    )
                )
    for qk_int4 in (False, True):
        jobs.append(KdaArtifactJob(KDA_BACKWARD_PREPROCESS, qk_int4=qk_int4))
    for value_int4 in (False, True):
        jobs.append(KdaArtifactJob(KDA_BACKWARD_RECURRENT, value_int4=value_int4))
    for qk_int4 in (False, True):
        jobs.append(KdaArtifactJob(KDA_BACKWARD_NORMALIZE, qk_int4=qk_int4))
    return tuple(jobs)


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
        f"{arch}_kda_{phase}_{mode}_b{KDA_PRECOMPILED_BATCH}_"
        f"t{KDA_PRECOMPILED_SEQUENCE}_h{KDA_PRECOMPILED_HEADS}_"
        f"d{KDA_PRECOMPILED_HEAD_DIM}_dv{KDA_PRECOMPILED_VALUE_DIM}_"
        f"vb{KDA_PRECOMPILED_VALUE_BLOCK}_ci{KDA_PRECOMPILED_CHECKPOINT_INTERVAL}"
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
            "batch": KDA_PRECOMPILED_BATCH,
            "sequence": KDA_PRECOMPILED_SEQUENCE,
            "heads": KDA_PRECOMPILED_HEADS,
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
            "checkpoint_interval": KDA_PRECOMPILED_CHECKPOINT_INTERVAL,
            "num_checkpoints": KDA_PRECOMPILED_NUM_CHECKPOINTS,
            "cache_split_batch_head": KDA_PRECOMPILED_CACHE_SPLIT_BATCH_HEAD,
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

from __future__ import annotations

from dataclasses import asdict, dataclass
from enum import Enum
from pathlib import Path
from typing import Any


ARCH = "gfx1151"
ACC_DTYPE = "int32"
SUPPORTED_SUBCHANNELS = (32, 64, 128, 256)
SUPPORTED_SPLIT_K = (1, 2, 4, 8)
OUTPUT_DTYPE_BF16 = "bfloat16"
OUTPUT_DTYPE_FLOAT32 = "float32"
SCALE_DTYPE_BF16 = "bfloat16"
RHS_SUBCHANNEL_SCALE_LAYOUT = "kgroup_output"


class OperandDType(str, Enum):
    INT4 = "int4"
    INT8 = "int8"


class ScaleMode(str, Enum):
    PER_CHANNEL = "per_channel"
    SUBCHANNEL = "subchannel"


class Epilogue(str, Enum):
    NONE = "none"
    RELU2 = "relu2"
    SWIGLU = "swiglu"


class GemmLayout(str, Enum):
    """Logical operand layout for GEMM dispatch.

    The two letters describe whether the logical A and B operands are used as
    provided (N) or transposed (T).
    """

    NN = "nn"
    NT = "nt"
    TN = "tn"
    TT = "tt"


SUPPORTED_GEMM_LAYOUTS = (GemmLayout.NN, GemmLayout.NT, GemmLayout.TN)


class KernelSchedule(str, Enum):
    STANDARD = "standard"
    PERSISTENT = "persistent"


class KernelStatus(str, Enum):
    PLANNED = "planned"
    GENERATED = "generated"
    COMPILED = "compiled"
    BENCHMARKED = "benchmarked"


@dataclass(frozen=True, slots=True)
class ScaleSpec:
    mode: ScaleMode
    subchannel_size: int | None = None

    def __post_init__(self) -> None:
        if self.mode is ScaleMode.SUBCHANNEL:
            if self.subchannel_size not in SUPPORTED_SUBCHANNELS:
                raise ValueError(
                    f"subchannel_size must be one of {SUPPORTED_SUBCHANNELS}; got {self.subchannel_size}"
                )
        elif self.subchannel_size is not None:
            raise ValueError("per-channel scales must not set subchannel_size")

    @property
    def label(self) -> str:
        if self.mode is ScaleMode.PER_CHANNEL:
            return "pc"
        return f"sc{self.subchannel_size}"


@dataclass(frozen=True, slots=True)
class TileConfig:
    block_m: int
    block_n: int
    block_k: int
    group_size_m: int
    num_warps: int
    num_stages: int
    waves_per_eu: int
    even_k: bool
    split_k: int = 1

    def __post_init__(self) -> None:
        if self.split_k not in SUPPORTED_SPLIT_K:
            raise ValueError(f"split_k must be one of {SUPPORTED_SPLIT_K}; got {self.split_k}")

    @property
    def label(self) -> str:
        k_label = "evenk" if self.even_k else "maskk"
        return (
            f"bm{self.block_m}_bn{self.block_n}_bk{self.block_k}"
            f"_gm{self.group_size_m}_w{self.num_warps}_s{self.num_stages}"
            f"_weu{self.waves_per_eu}_sk{self.split_k}_{k_label}"
        )


@dataclass(frozen=True, slots=True)
class KernelMetadata:
    kernel_id: str
    arch: str
    a_dtype: OperandDType
    b_dtype: OperandDType
    acc_dtype: str
    output_dtype: str
    scale_dtype: str
    scale: ScaleSpec
    epilogue: Epilogue
    tile: TileConfig
    triton_kernel_name: str
    layout: GemmLayout = GemmLayout.NN
    schedule: KernelSchedule = KernelSchedule.STANDARD
    assembly_path: Path | None = None
    status: KernelStatus = KernelStatus.PLANNED
    measured_tops: float | None = None
    source_triton_commit: str | None = None
    notes: str = ""

    def to_dict(self) -> dict[str, Any]:
        data = asdict(self)
        data["a_dtype"] = self.a_dtype.value
        data["b_dtype"] = self.b_dtype.value
        data["scale"] = {
            "mode": self.scale.mode.value,
            "subchannel_size": self.scale.subchannel_size,
        }
        data["rhs_subchannel_scale_layout"] = (
            RHS_SUBCHANNEL_SCALE_LAYOUT if self.scale.mode is ScaleMode.SUBCHANNEL else None
        )
        data["epilogue"] = self.epilogue.value
        data["layout"] = self.layout.value
        data["schedule"] = self.schedule.value
        data["status"] = self.status.value
        data["assembly_path"] = str(self.assembly_path) if self.assembly_path else None
        return data


def make_kernel_id(
    dtype: OperandDType,
    scale: ScaleSpec,
    epilogue: Epilogue,
    tile: TileConfig,
    *,
    arch: str = ARCH,
    layout: GemmLayout = GemmLayout.NN,
    schedule: KernelSchedule = KernelSchedule.STANDARD,
) -> str:
    schedule_label = "" if schedule is KernelSchedule.STANDARD else f"_{schedule.value}"
    return f"{arch}_{dtype.value}x{dtype.value}_{layout.value}_{scale.label}_{epilogue.value}{schedule_label}_{tile.label}"


def supported_scale_specs() -> tuple[ScaleSpec, ...]:
    return (
        *(ScaleSpec(ScaleMode.SUBCHANNEL, size) for size in SUPPORTED_SUBCHANNELS),
        ScaleSpec(ScaleMode.PER_CHANNEL),
    )


def output_dtype_for_split_k(split_k: int) -> str:
    return OUTPUT_DTYPE_FLOAT32 if split_k > 1 else OUTPUT_DTYPE_BF16

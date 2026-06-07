class KernelError(RuntimeError):
    """Base error for kernel dispatch failures."""


class KernelNotAvailableError(KernelError):
    """Raised when metadata exists but no compiled assembly path is available."""

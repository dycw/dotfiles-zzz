from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import joblib  # noqa: F401
    from joblib import (
        Memory,  # noqa: F401
        Parallel,  # noqa: F401
        delayed,  # noqa: F401
    )

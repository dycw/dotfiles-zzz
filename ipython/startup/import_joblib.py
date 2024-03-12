from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import joblib  # noqa: F401
    from joblib import (  # noqa: F401
        Memory,
        Parallel,
        delayed,
    )

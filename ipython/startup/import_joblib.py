from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import joblib  # noqa: F401
    from joblib import Memory  # noqa: F401
    from joblib import Parallel  # noqa: F401
    from joblib import delayed  # noqa: F401

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import fastparquet  # noqa: F401
    from fastparquet import ParquetFile  # noqa: F401

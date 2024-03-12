from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import zarr  # noqa: F401
    from zarr import (  # noqa: F401
        Array,
    )

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import xarray  # noqa: F401
    from xarray import (  # noqa: F401
        DataArray,
        Dataset,
        apply_ufunc,
        concat,
        merge,
    )

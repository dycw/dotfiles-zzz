from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import xarray  # noqa: F401
    from xarray import (
        DataArray,  # noqa: F401
        Dataset,  # noqa: F401
        apply_ufunc,  # noqa: F401
        concat,  # noqa: F401
        merge,  # noqa: F401
    )

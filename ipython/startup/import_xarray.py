from contextlib import suppress

with suppress(ModuleNotFoundError):
    import xarray  # noqa: F401
    from xarray import DataArray  # noqa: F401
    from xarray import Dataset  # noqa: F401
    from xarray import merge  # noqa: F401

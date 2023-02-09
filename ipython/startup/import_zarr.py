from contextlib import suppress


with suppress(ModuleNotFoundError):
    import zarr  # noqa: F401

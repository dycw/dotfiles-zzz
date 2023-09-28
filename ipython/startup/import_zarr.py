from contextlib import suppress

with suppress(ModuleNotFoundError):
    import zarr  # noqa: F401
    from zarr import Array  # noqa: F401

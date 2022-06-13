from contextlib import suppress

with suppress(ModuleNotFoundError):
    with suppress(AttributeError):
        import hvplot.pandas
    with suppress(AttributeError):
        import hvplot.xarray  # noqa: F401

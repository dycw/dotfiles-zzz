from contextlib import suppress


with suppress(ModuleNotFoundError):
    import hvplot.pandas  # noqa: F401

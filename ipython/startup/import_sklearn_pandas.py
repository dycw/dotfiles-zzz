from contextlib import suppress

with suppress(ModuleNotFoundError):
    import sklearn_pandas  # noqa: F401
    from sklearn_pandas import DataFrameMapper  # noqa: F401

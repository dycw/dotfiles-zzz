from contextlib import suppress


with suppress(ModuleNotFoundError):
    import pytz  # noqa: F401
    from pytz import UTC  # noqa: F401

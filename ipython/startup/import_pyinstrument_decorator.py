from contextlib import suppress


with suppress(ModuleNotFoundError):
    import pyinstrument_decorator  # noqa: F401
    from pyinstrument_decorator import profile  # noqa: F401

from contextlib import suppress


with suppress(ModuleNotFoundError):
    import dtale  # noqa: F401

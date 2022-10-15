from contextlib import suppress


with suppress(ModuleNotFoundError):
    import scalene  # noqa: F401

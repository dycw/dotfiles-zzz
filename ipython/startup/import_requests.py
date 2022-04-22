from contextlib import suppress


with suppress(ModuleNotFoundError):
    import requests  # noqa: F401

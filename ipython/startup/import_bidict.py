from contextlib import suppress


with suppress(ModuleNotFoundError):
    from bidict import bidict  # noqa: F401

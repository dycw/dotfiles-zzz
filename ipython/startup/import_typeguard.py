from contextlib import suppress


with suppress(ModuleNotFoundError):
    import typeguard  # noqa: F401
with suppress(ImportError):
    from typeguard import typechecked  # noqa: F401

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import wrapt  # noqa: F401
    from wrapt import decorator  # noqa: F401

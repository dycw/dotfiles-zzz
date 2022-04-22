from contextlib import suppress


with suppress(ModuleNotFoundError):
    import box  # noqa: F401
    from box import Box  # noqa: F401

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import contexttimer  # noqa: F401
    from contexttimer import Timer  # noqa: F401

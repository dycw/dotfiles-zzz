from contextlib import suppress

with suppress(ModuleNotFoundError):
    import funcy  # noqa: F401
    from funcy import complement  # noqa: F401
    from funcy import isnone  # noqa: F401
    from funcy import notnone  # noqa: F401

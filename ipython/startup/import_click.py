from contextlib import suppress

with suppress(ModuleNotFoundError):
    import click  # noqa: F401
    from click import command, option  # noqa: F401  # noqa: F401

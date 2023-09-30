from contextlib import suppress

with suppress(ModuleNotFoundError):
    import click  # noqa: F401
    from click import command  # noqa: F401
    from click import option  # noqa: F401

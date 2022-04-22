from contextlib import suppress


with suppress(ModuleNotFoundError):
    import loguru  # noqa: F401
    from loguru import logger  # noqa: F401

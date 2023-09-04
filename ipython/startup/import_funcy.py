from contextlib import suppress

with suppress(ModuleNotFoundError):
    import funcy  # noqa: F401
    from funcy import (
        complement,  # noqa: F401
        isnone,  # noqa: F401
        notnone,  # noqa: F401
    )

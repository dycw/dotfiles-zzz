from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import funcy  # noqa: F401
    from funcy import (  # noqa: F401
        complement,
        isnone,
        notnone,
    )

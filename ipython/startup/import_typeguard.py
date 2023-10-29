from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import typeguard  # noqa: F401
    from typeguard import (
        typechecked,  # noqa: F401
    )

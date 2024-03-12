from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import wrapt  # noqa: F401
    from wrapt import (  # noqa: F401
        decorator,
    )

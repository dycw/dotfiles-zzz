from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from frozendict import (  # noqa: F401
        frozendict,
    )

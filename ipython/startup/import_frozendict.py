from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from frozendict import (
        frozendict,  # noqa: F401
    )

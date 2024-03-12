from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from bidict import (  # noqa: F401
        bidict,
    )

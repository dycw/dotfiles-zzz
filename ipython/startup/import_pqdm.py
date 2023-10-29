from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from pqdm.processes import (
        pqdm,  # noqa: F401
    )

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from tabulate import (  # noqa: F401
        tabulate,
    )

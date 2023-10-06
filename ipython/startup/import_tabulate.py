from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from tabulate import tabulate  # noqa: F401

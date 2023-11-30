from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from xlsxwriter import (
        Workbook,  # noqa: F401
    )

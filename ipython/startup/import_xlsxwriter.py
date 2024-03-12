from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import xlsxwriter  # noqa: F401
    from xlsxwriter import (  # noqa: F401
        Workbook,
    )

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import humanize  # noqa: F401
    from humanize import (  # noqa: F401
        fractional,
        intcomma,
        intword,
        naturaldate,
        naturalday,
        naturaldelta,
        naturalsize,
        naturaltime,
        precisedelta,
    )

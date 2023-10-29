from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import humanize  # noqa: F401
    from humanize import (
        fractional,  # noqa: F401
        intcomma,  # noqa: F401
        intword,  # noqa: F401
        naturaldate,  # noqa: F401
        naturalday,  # noqa: F401
        naturaldelta,  # noqa: F401
        naturalsize,  # noqa: F401
        naturaltime,  # noqa: F401
        precisedelta,  # noqa: F401
    )

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import bokeh  # noqa: F401
    from bokeh.models import (
        DatetimeTickFormatter,  # noqa: F401
        HoverTool,  # noqa: F401
        NumeralTickFormatter,  # noqa: F401
    )

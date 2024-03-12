from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import bokeh  # noqa: F401
    from bokeh.models import (  # noqa: F401
        DatetimeTickFormatter,
        HoverTool,
        NumeralTickFormatter,
    )

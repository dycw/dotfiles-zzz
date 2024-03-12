from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import holoviews  # noqa: F401, ICN001
    import holoviews as hv  # noqa: F401
    from holoviews import (  # noqa: F401
        Curve,
        Histogram,
        HLine,
        NdOverlay,
        Overlay,
        Table,
    )

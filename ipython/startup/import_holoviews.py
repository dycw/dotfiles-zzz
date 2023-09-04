from contextlib import suppress

with suppress(ModuleNotFoundError):
    import holoviews  # noqa: F401
    import holoviews as hv  # noqa: F401
    from holoviews import (
        Curve,  # noqa: F401
        Histogram,  # noqa: F401
        HLine,  # noqa: F401
        NdOverlay,  # noqa: F401
        Overlay,  # noqa: F401
        Table,  # noqa: F401
    )

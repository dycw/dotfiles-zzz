from contextlib import suppress

with suppress(ModuleNotFoundError):
    import holoviews  # noqa: F401, ICN001
    import holoviews as hv  # noqa: F401
    from holoviews import Curve  # noqa: F401
    from holoviews import Histogram  # noqa: F401
    from holoviews import HLine  # noqa: F401
    from holoviews import NdOverlay  # noqa: F401
    from holoviews import Overlay  # noqa: F401
    from holoviews import Table  # noqa: F401

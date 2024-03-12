from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import seaborn  # noqa: F401, ICN001
    import seaborn as sns  # noqa: F401
    from seaborn import (  # noqa: F401
        catplot,
        distplot,
        heatmap,
        jointplot,
        kdeplot,
        pairplot,
        violinplot,
    )

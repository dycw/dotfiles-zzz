from contextlib import suppress

with suppress(ModuleNotFoundError):
    import seaborn  # noqa: F401
    import seaborn as sns  # noqa: F401
    from seaborn import (
        catplot,  # noqa: F401
        distplot,  # noqa: F401
        heatmap,  # noqa: F401
        jointplot,  # noqa: F401
        kdeplot,  # noqa: F401
        pairplot,  # noqa: F401
        violinplot,  # noqa: F401
    )

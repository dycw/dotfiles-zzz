from contextlib import suppress

with suppress(ModuleNotFoundError):
    import seaborn  # noqa: F401, ICN001
    import seaborn as sns  # noqa: F401
    from seaborn import catplot  # noqa: F401
    from seaborn import distplot  # noqa: F401
    from seaborn import heatmap  # noqa: F401
    from seaborn import jointplot  # noqa: F401
    from seaborn import kdeplot  # noqa: F401
    from seaborn import pairplot  # noqa: F401
    from seaborn import violinplot  # noqa: F401

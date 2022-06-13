from contextlib import suppress

with suppress(ModuleNotFoundError):
    import scipy  # noqa: F401
    from scipy.optimize import least_squares  # noqa: F401
    from scipy.stats import describe  # noqa: F401
    from scipy.stats import f_oneway  # noqa: F401
    from scipy.stats import gmean  # noqa: F401
    from scipy.stats import pearsonr  # noqa: F401
    from scipy.stats import percentileofscore  # noqa: F401
    from scipy.stats import scoreatpercentile  # noqa: F401
    from scipy.stats import ttest_1samp  # noqa: F401
    from scipy.stats import ttest_ind  # noqa: F401
    from scipy.stats import ttest_rel  # noqa: F401

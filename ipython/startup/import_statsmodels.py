from contextlib import suppress

with suppress(ModuleNotFoundError):
    import statsmodels  # noqa: F401
    import statsmodels.api as sm  # noqa: F401
    from statsmodels.regression.linear_model import OLS  # noqa: F401
    from statsmodels.tsa.ar_model import AutoReg  # noqa: F401
    from statsmodels.tsa.stattools import acf  # noqa: F401

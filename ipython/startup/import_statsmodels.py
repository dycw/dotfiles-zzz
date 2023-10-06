from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import statsmodels
    import statsmodels.api  # noqa: F401
    from statsmodels.regression.linear_model import OLS  # noqa: F401
    from statsmodels.tsa.ar_model import AutoReg  # noqa: F401
    from statsmodels.tsa.stattools import acf  # noqa: F401

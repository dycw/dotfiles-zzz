from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import scipy  # noqa: F401
    import scipy as sp  # noqa: F401
    from scipy.optimize import (  # noqa: F401
        least_squares,
    )
    from scipy.stats import (  # noqa: F401
        describe,
        f_oneway,
        gmean,
        pearsonr,
        percentileofscore,
        scoreatpercentile,
        ttest_1samp,
        ttest_ind,
        ttest_rel,
    )

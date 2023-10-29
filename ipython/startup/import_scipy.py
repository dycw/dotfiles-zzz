from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import scipy  # noqa: F401
    import scipy as sp  # noqa: F401
    from scipy.optimize import (
        least_squares,  # noqa: F401
    )
    from scipy.stats import (
        describe,  # noqa: F401
        f_oneway,  # noqa: F401
        gmean,  # noqa: F401
        pearsonr,  # noqa: F401
        percentileofscore,  # noqa: F401
        scoreatpercentile,  # noqa: F401
        ttest_1samp,  # noqa: F401
        ttest_ind,  # noqa: F401
        ttest_rel,  # noqa: F401
    )

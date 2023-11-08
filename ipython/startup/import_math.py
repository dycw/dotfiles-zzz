from __future__ import annotations

import math  # noqa: F401
from contextlib import suppress
from math import (
    prod,  # noqa: F401
)

with suppress(ImportError):
    from math import (
        sumprod,  # noqa: F401
    )


try:
    import numpy as _numpy  # noqa: F401, ICN001
except ModuleNotFoundError:
    from math import (
        ceil,  # noqa: F401
        exp,  # noqa: F401
        floor,  # noqa: F401
        inf,  # noqa: F401
        isclose,  # noqa: F401
        isfinite,  # noqa: F401
        isinf,  # noqa: F401
        isnan,  # noqa: F401
        log,  # noqa: F401
        log2,  # noqa: F401
        nan,  # noqa: F401
        sqrt,  # noqa: F401
    )

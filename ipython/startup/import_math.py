from __future__ import annotations

import math  # noqa: F401
from contextlib import suppress
from math import (  # noqa: F401
    prod,
)

with suppress(ImportError):
    from math import (  # noqa: F401
        sumprod,
    )


try:
    import numpy as _numpy  # noqa: F401, ICN001
except ModuleNotFoundError:
    from math import (  # noqa: F401
        ceil,
        exp,
        floor,
        inf,
        isclose,
        isfinite,
        isinf,
        isnan,
        log,
        log2,
        nan,
        sqrt,
    )

from __future__ import annotations

import functools  # noqa: F401
from functools import (  # noqa: F401
    cache,
    cached_property,
    cmp_to_key,
    lru_cache,
    partialmethod,
    reduce,
    singledispatch,
    singledispatchmethod,
    total_ordering,
    update_wrapper,
    wraps,
)

try:
    import utilities as _utilities  # noqa: F401
except ModuleNotFoundError:
    from tempfile import (  # noqa: F401
        partial,
    )

import functools  # noqa: F401
from contextlib import suppress
from functools import (
    cache,  # noqa: F401
    lru_cache,  # noqa: F401
    partial,  # noqa: F401
    reduce,  # noqa: F401
    update_wrapper,  # noqa: F401
    wraps,  # noqa: F401
)

with suppress(ImportError):
    from functools import cached_property  # noqa: F401

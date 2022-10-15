import functools  # noqa: F401
from contextlib import suppress
from functools import lru_cache  # noqa: F401
from functools import partial  # noqa: F401
from functools import reduce  # noqa: F401
from functools import update_wrapper  # noqa: F401
from functools import wraps  # noqa: F401


with suppress(ImportError):
    from functools import cached_property  # noqa: F401

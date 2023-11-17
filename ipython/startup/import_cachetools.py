from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import cachetools  # noqa: F401
    from cachetools import (
        Cache,  # noqa: F401
        FIFOCache,  # noqa: F401
        LFUCache,  # noqa: F401
        LRUCache,  # noqa: F401
        MRUCache,  # noqa: F401
        RRCache,  # noqa: F401
        TLRUCache,  # noqa: F401
        TTLCache,  # noqa: F401
        cached,  # noqa: F401
        cachedmethod,  # noqa: F401
    )
    from cachetools.func import (
        fifo_cache,  # noqa: F401
        lfu_cache,  # noqa: F401
        lru_cache,  # noqa: F401
        mru_cache,  # noqa: F401
        rr_cache,  # noqa: F401
        ttl_cache,  # noqa: F401
    )
    from cachetools.keys import (
        hashkey,  # noqa: F401
        methodkey,  # noqa: F401
        typedkey,  # noqa: F401
    )

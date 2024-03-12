from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import cachetools  # noqa: F401
    from cachetools import (  # noqa: F401
        Cache,
        FIFOCache,
        LFUCache,
        LRUCache,
        MRUCache,
        RRCache,
        TLRUCache,
        TTLCache,
        cached,
        cachedmethod,
    )
    from cachetools.func import (  # noqa: F401
        fifo_cache,
        lfu_cache,
        lru_cache,
        mru_cache,
        rr_cache,
        ttl_cache,
    )
    from cachetools.keys import (  # noqa: F401
        hashkey,
        methodkey,
        typedkey,
    )

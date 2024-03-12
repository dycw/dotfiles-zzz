from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import atomicwrites  # noqa: F401
    from atomicwrites import (  # noqa: F401
        AtomicWriter,
        atomic_write,
        move_atomic,
        replace_atomic,
    )

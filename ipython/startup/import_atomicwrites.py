from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import atomicwrites  # noqa: F401
    from atomicwrites import (
        AtomicWriter,  # noqa: F401
        atomic_write,  # noqa: F401
        move_atomic,  # noqa: F401
        replace_atomic,  # noqa: F401
    )

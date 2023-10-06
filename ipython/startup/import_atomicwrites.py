from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import atomicwrites  # noqa: F401
    from atomicwrites import AtomicWriter  # noqa: F401
    from atomicwrites import atomic_write  # noqa: F401
    from atomicwrites import move_atomic  # noqa: F401
    from atomicwrites import replace_atomic  # noqa: F401

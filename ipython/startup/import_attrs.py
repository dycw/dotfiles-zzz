from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import attrs  # noqa: F401
    from attrs import (  # noqa: F401
        define,
        evolve,
        frozen,
    )

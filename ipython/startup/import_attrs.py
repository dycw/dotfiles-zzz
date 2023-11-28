from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import attrs  # noqa: F401
    from attrs import (
        define,  # noqa: F401
        evolve,  # noqa: F401
        frozen,  # noqa: F401
    )

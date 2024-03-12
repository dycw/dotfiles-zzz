from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pyinstrument_decorator  # noqa: F401
    from pyinstrument_decorator import (  # noqa: F401
        profile,
    )

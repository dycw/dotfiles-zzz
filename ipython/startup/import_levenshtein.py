from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from Levenshtein import (
        distance,  # noqa: F401
        ratio,  # noqa: F401
    )

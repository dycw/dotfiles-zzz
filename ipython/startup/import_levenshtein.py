from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from Levenshtein import (  # noqa: F401
        distance,
        ratio,
    )

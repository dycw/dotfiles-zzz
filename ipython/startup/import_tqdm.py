from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from tqdm import (
        tqdm,  # noqa: F401
        trange,  # noqa: F401
    )

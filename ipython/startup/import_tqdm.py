from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    from tqdm import (  # noqa: F401
        tqdm,
        trange,
    )

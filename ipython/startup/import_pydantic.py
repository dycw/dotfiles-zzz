from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pydantic  # noqa: F401
    from pydantic import (  # noqa: F401
        BaseModel,
    )

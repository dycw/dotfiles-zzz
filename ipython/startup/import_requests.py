from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import requests  # noqa: F401
    from requests import (  # noqa: F401
        get,
    )

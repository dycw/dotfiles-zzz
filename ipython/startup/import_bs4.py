from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import bs4  # noqa: F401
    from bs4 import BeautifulSoup  # noqa: F401

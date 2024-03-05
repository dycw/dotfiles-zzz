from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pytest  # noqa: F401
    from pytest import (  # noqa: PT013
        approx,  # noqa: F401
        fixture,  # noqa: F401
        mark,  # noqa: F401
        param,  # noqa: F401
        raises,  # noqa: F401
        warns,  # noqa: F401
    )

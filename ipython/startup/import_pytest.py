from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pytest  # noqa: F401
    from pytest import (  # noqa: F401, PT013
        approx,
        fixture,
        mark,
        param,
        raises,
        warns,
    )

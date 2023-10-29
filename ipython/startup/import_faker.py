from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import faker  # noqa: F401
    from faker import (
        Faker,  # noqa: F401
    )

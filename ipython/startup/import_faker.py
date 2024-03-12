from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import faker  # noqa: F401
    from faker import (  # noqa: F401
        Faker,
    )

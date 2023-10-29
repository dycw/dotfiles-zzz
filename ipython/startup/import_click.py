from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import click  # noqa: F401
    from click import (
        command,  # noqa: F401
        option,  # noqa: F401
    )

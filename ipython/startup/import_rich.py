from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import rich  # noqa: F401
    from rich import (  # noqa: F401
        inspect,
        pretty,
        print,
    )
    from rich.traceback import install as _install

    _install()

from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import ib_insync  # noqa: F401
    from ib_insync.util import (  # noqa: F401
        dataclassAsDict,
        dataclassAsTuple,
        startLoop,
    )

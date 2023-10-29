from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import ib_insync  # noqa: F401
    from ib_insync.util import (
        dataclassAsDict,  # noqa: F401
        dataclassAsTuple,  # noqa: F401
        startLoop,  # noqa: F401
    )

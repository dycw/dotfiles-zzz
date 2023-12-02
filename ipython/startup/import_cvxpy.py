from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import cvxpy  # noqa: F401
    from cxvpy import (
        Expression,  # noqa: F401
        Maximize,  # noqa: F401
        Minimize,  # noqa: F401
        Problem,  # noqa: F401
        Variable,  # noqa: F401
    )

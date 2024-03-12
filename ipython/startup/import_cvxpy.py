from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import cvxpy  # noqa: F401
    from cxvpy import (  # noqa: F401
        Expression,
        Maximize,
        Minimize,
        Problem,
        Variable,
    )

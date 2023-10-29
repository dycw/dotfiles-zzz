from __future__ import annotations

import dataclasses  # noqa: F401
from dataclasses import (
    dataclass,  # noqa: F401
    replace,  # noqa: F401
)

try:
    import attrs  # noqa: F401
except ModuleNotFoundError:
    from dataclasses import (
        asdict,  # noqa: F401
        astuple,  # noqa: F401
        field,  # noqa: F401
        fields,  # noqa: F401
    )

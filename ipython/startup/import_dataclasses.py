from __future__ import annotations

import dataclasses  # noqa: F401
from dataclasses import dataclass  # noqa: F401
from dataclasses import replace  # noqa: F401

try:
    import attrs  # noqa: F401
except ModuleNotFoundError:
    from dataclasses import asdict  # noqa: F401
    from dataclasses import astuple  # noqa: F401
    from dataclasses import field  # noqa: F401
    from dataclasses import fields  # noqa: F401

from __future__ import annotations

import tempfile  # noqa: F401
from tempfile import (
    NamedTemporaryFile,  # noqa: F401
)

try:
    import utilities as _utilities  # noqa: F401
except ModuleNotFoundError:
    from tempfile import (
        TemporaryDirectory,  # noqa: F401
        gettempdir,  # noqa: F401
    )

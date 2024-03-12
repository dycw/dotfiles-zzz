from __future__ import annotations

import tempfile  # noqa: F401
from tempfile import (  # noqa: F401
    NamedTemporaryFile,
)

try:
    import utilities as _utilities  # noqa: F401
except ModuleNotFoundError:
    from tempfile import (  # noqa: F401
        TemporaryDirectory,
        gettempdir,
    )

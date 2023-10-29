from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import semver  # noqa: F401
    from semver import (
        VersionInfo,  # noqa: F401
    )

from __future__ import annotations

import enum  # noqa: F401
from contextlib import suppress
from enum import (
    Enum,  # noqa: F401
    EnumMeta,  # noqa: F401
    Flag,  # noqa: F401
    IntEnum,  # noqa: F401
    IntFlag,  # noqa: F401
    auto,  # noqa: F401
    unique,  # noqa: F401
)

with suppress(ImportError):
    # python 3.11+
    from enum import (
        EnumCheck,  # noqa: F401
        FlagBoundary,  # noqa: F401
        ReprEnum,  # noqa: F401
        StrEnum,  # noqa: F401
        global_enum,  # noqa: F401
        member,  # noqa: F401
        nonmember,  # noqa: F401
        property,  # noqa: F401
        show_flag_values,  # noqa: F401
        verify,  # noqa: F401
    )

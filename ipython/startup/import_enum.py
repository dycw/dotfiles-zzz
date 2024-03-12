from __future__ import annotations

import enum  # noqa: F401
from contextlib import suppress
from enum import (  # noqa: F401
    Enum,
    EnumMeta,
    Flag,
    IntEnum,
    IntFlag,
    auto,
    unique,
)

with suppress(ImportError):  # python 3.11+
    from enum import (  # noqa: F401
        EnumCheck,
        FlagBoundary,
        ReprEnum,
        StrEnum,
        global_enum,
        member,
        nonmember,
        show_flag_values,
        verify,
    )

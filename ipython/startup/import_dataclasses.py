from __future__ import annotations

import dataclasses  # noqa: F401
from dataclasses import (
    KW_ONLY,  # noqa: F401
    MISSING,  # noqa: F401
    Field,  # noqa: F401
    FrozenInstanceError,  # noqa: F401
    asdict,  # noqa: F401
    astuple,  # noqa: F401
    dataclass,  # noqa: F401
    field,  # noqa: F401
    fields,  # noqa: F401
    is_dataclass,
    make_dataclass,  # noqa: F401
    replace,  # noqa: F401
)
from typing import Any


def is_dataclass_instance(obj: Any, /) -> bool:
    return (not isinstance(obj, type)) and is_dataclass(obj)

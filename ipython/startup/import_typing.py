from __future__ import annotations

import typing  # noqa: F401
from contextlib import (
    suppress,
)
from typing import (
    IO,  # noqa: F401
    TYPE_CHECKING,  # noqa: F401
    Annotated,  # noqa: F401
    Any,  # noqa: F401
    AnyStr,  # noqa: F401
    BinaryIO,  # noqa: F401
    ClassVar,  # noqa: F401
    Concatenate,  # noqa: F401
    Final,  # noqa: F401
    ForwardRef,  # noqa: F401
    Generic,  # noqa: F401
    Literal,  # noqa: F401
    NamedTuple,  # noqa: F401
    NewType,  # noqa: F401
    NoReturn,  # noqa: F401
    ParamSpec,  # noqa: F401
    ParamSpecArgs,  # noqa: F401
    ParamSpecKwargs,  # noqa: F401
    Protocol,  # noqa: F401
    SupportsAbs,  # noqa: F401
    SupportsBytes,  # noqa: F401
    SupportsComplex,  # noqa: F401
    SupportsFloat,  # noqa: F401
    SupportsIndex,  # noqa: F401
    SupportsInt,  # noqa: F401
    SupportsRound,  # noqa: F401
    TextIO,  # noqa: F401
    TypeAlias,  # noqa: F401
    TypedDict,  # noqa: F401
    TypeGuard,  # noqa: F401
    TypeVar,  # noqa: F401
    Union,  # noqa: F401
    cast,  # noqa: F401
    final,  # noqa: F401
    get_args,  # noqa: F401
    get_origin,  # noqa: F401
    get_type_hints,  # noqa: F401
    is_typeddict,  # noqa: F401
    no_type_check,  # noqa: F401
    no_type_check_decorator,  # noqa: F401
    runtime_checkable,  # noqa: F401
)

with suppress(ImportError):  # Python 3.11+
    from typing import (
        LiteralString,  # noqa: F401
        Never,  # noqa: F401
        NotRequired,  # noqa: F401
        Required,  # noqa: F401
        Self,  # noqa: F401
        TypeVarTuple,  # noqa: F401
        Unpack,  # noqa: F401
        assert_never,  # noqa: F401
        assert_type,  # noqa: F401
        clear_overloads,  # noqa: F401
        dataclass_transform,  # noqa: F401
        get_overloads,  # noqa: F401
        overload,  # noqa: F401
        reveal_type,  # noqa: F401
    )


with suppress(ImportError):  # Python 3.12+
    from typing import (
        TypeAliasType,  # noqa: F401
        get_original_bases,  # noqa: F401
        override,  # noqa: F401
    )

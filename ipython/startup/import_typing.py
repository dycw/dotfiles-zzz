from __future__ import annotations

import typing  # noqa: F401
from contextlib import (
    suppress,
)
from typing import (  # noqa: F401
    IO,
    TYPE_CHECKING,
    Annotated,
    Any,
    AnyStr,
    BinaryIO,
    ClassVar,
    Concatenate,
    Final,
    ForwardRef,
    Generic,
    Literal,
    NamedTuple,
    NewType,
    NoReturn,
    ParamSpec,
    ParamSpecArgs,
    ParamSpecKwargs,
    Protocol,
    SupportsAbs,
    SupportsBytes,
    SupportsComplex,
    SupportsFloat,
    SupportsIndex,
    SupportsInt,
    SupportsRound,
    TextIO,
    TypeAlias,
    TypedDict,
    TypeGuard,
    TypeVar,
    Union,
    cast,
    final,
    get_args,
    get_origin,
    get_type_hints,
    is_typeddict,
    no_type_check,
    no_type_check_decorator,
    runtime_checkable,
)

with suppress(ImportError):  # Python 3.11+
    from typing import (  # noqa: F401
        LiteralString,
        Never,
        NotRequired,
        Required,
        Self,
        TypeVarTuple,
        Unpack,
        assert_never,
        assert_type,
        clear_overloads,
        dataclass_transform,
        get_overloads,
        overload,
        reveal_type,
    )


with suppress(ImportError):  # Python 3.12+
    from typing import (  # noqa: F401
        TypeAliasType,
        get_original_bases,
        override,
    )

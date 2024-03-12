from __future__ import annotations

from contextlib import (
    suppress,
)

with suppress(ModuleNotFoundError):
    import typing_extensions  # noqa: F401
    from typing_extensions import (  # noqa: F401
        Doc,
        LiteralString,
        NamedTuple,
        Never,
        NotRequired,
        Required,
        Self,
        TypeAliasType,
        TypeVarTuple,
        Unpack,
        assert_never,
        assert_type,
        clear_overloads,
        dataclass_transform,
        get_original_bases,
        get_overloads,
        get_protocol_members,
        overload,
        override,
        reveal_type,
    )

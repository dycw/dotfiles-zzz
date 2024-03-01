from __future__ import annotations

from contextlib import (
    suppress,
)

with suppress(ModuleNotFoundError):
    import typing_extensions  # noqa: F401
    from typing_extensions import (
        Doc,  # noqa: F401
        LiteralString,  # noqa: F401
        NamedTuple,  # noqa: F401
        Never,  # noqa: F401
        NotRequired,  # noqa: F401
        Required,  # noqa: F401
        Self,  # noqa: F401
        TypeAliasType,  # noqa: F401
        TypeVarTuple,  # noqa: F401
        Unpack,  # noqa: F401
        assert_never,  # noqa: F401
        assert_type,  # noqa: F401
        clear_overloads,  # noqa: F401
        dataclass_transform,  # noqa: F401
        get_original_bases,  # noqa: F401
        get_overloads,  # noqa: F401
        get_protocol_members,  # noqa: F401
        overload,  # noqa: F401
        override,  # noqa: F401
        reveal_type,  # noqa: F401
    )

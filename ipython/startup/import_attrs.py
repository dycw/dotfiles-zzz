from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import attrs  # noqa: F401
    from attrs import asdict  # noqa: F401
    from attrs import astuple  # noqa: F401
    from attrs import define  # noqa: F401
    from attrs import evolve  # noqa: F401
    from attrs import field  # noqa: F401
    from attrs import fields  # noqa: F401
    from attrs import frozen  # noqa: F401

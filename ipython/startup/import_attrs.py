from contextlib import suppress

with suppress(ModuleNotFoundError):
    import attrs  # noqa: F401
    from attrs import (
        asdict,  # noqa: F401
        astuple,  # noqa: F401
        define,  # noqa: F401
        evolve,  # noqa: F401
        field,  # noqa: F401
        fields,  # noqa: F401
        frozen,  # noqa: F401
    )

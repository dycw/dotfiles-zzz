from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pytest  # noqa: F401
    from pytest import (
        fixture,  # noqa: F401
        mark,  # noqa: F401
        param,  # noqa: F401
        raises,  # noqa: F401
        warns,  # noqa: F401
    )

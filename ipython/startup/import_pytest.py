from contextlib import suppress

with suppress(ModuleNotFoundError):
    import pytest  # noqa: F401
    from pytest import fixture  # noqa: F401
    from pytest import mark  # noqa: F401
    from pytest import param  # noqa: F401
    from pytest import raises  # noqa: F401
    from pytest import warns  # noqa: F401

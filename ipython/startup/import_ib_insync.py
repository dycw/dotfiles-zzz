from contextlib import suppress


with suppress(ModuleNotFoundError):
    import ib_insync  # noqa: F401
    from ib_insync.util import dataclassAsDict  # noqa: F401
    from ib_insync.util import dataclassAsTuple  # noqa: F401
    from ib_insync.util import startLoop  # noqa: F401

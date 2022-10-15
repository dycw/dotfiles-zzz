from contextlib import suppress


with suppress(ModuleNotFoundError):
    import cvxpy  # noqa: F401

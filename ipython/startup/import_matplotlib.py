from contextlib import suppress


with suppress(ModuleNotFoundError):
    import matplotlib  # noqa: F401
    import matplotlib.pyplot as plt  # noqa: F401

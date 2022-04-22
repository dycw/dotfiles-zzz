from contextlib import suppress


with suppress(ModuleNotFoundError):
    from tqdm import tqdm  # noqa: F401
    from tqdm import trange  # noqa: F401

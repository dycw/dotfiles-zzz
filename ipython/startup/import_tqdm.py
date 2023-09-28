from contextlib import suppress

with suppress(ModuleNotFoundError):
    from tqdm import tqdm, trange  # noqa: F401

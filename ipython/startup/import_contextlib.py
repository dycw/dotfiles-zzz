import contextlib  # noqa: F401
from collections.abc import Iterator
from contextlib import contextmanager
from contextlib import redirect_stderr  # noqa: F401
from contextlib import redirect_stdout
from contextlib import suppress  # noqa: F401
from os import devnull


@contextmanager
def no_stdout() -> Iterator[None]:
    """Disable stdout."""

    with open(devnull, mode="w") as null, redirect_stdout(null):
        yield

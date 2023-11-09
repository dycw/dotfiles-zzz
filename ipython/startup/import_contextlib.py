from __future__ import annotations

import contextlib  # noqa: F401
from collections.abc import Iterator
from contextlib import (
    AbstractAsyncContextManager,  # noqa: F401
    AbstractContextManager,  # noqa: F401
    aclosing,  # noqa: F401
    asynccontextmanager,  # noqa: F401
    closing,  # noqa: F401
    contextmanager,
    nullcontext,  # noqa: F401
    redirect_stderr,  # noqa: F401
    redirect_stdout,
    suppress,
)
from os import devnull
from pathlib import Path

with suppress(ImportError):  # python 3.12+
    from contextlib import (
        chdir,  # noqa: F401
    )


@contextmanager
def no_stdout() -> Iterator[None]:
    """Disable stdout."""
    with Path(devnull).open(mode="w") as null, redirect_stdout(null):
        yield

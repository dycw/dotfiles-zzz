import tempfile  # noqa: F401
from pathlib import Path
from tempfile import gettempdir  # noqa: F401
from tempfile import NamedTemporaryFile  # noqa: F401
from tempfile import TemporaryDirectory


class TemporaryDirectoryPath(TemporaryDirectory):
    def __enter__(self) -> Path:
        super().__init__()
        return Path(super().__enter__())

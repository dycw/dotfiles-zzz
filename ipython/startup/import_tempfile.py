import tempfile  # noqa: F401
from pathlib import Path
from tempfile import NamedTemporaryFile  # noqa: F401
from tempfile import TemporaryDirectory
from tempfile import gettempdir  # noqa: F401


class TemporaryDirectoryPath(TemporaryDirectory):
    def __enter__(self) -> Path:
        super().__init__()
        return Path(super().__enter__())
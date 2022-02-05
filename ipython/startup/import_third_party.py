from contextlib import suppress
from pathlib import Path
from re import search


PATH_HERE = Path(__file__).absolute()  # absolute; not resolve
for path in PATH_HERE.parent.joinpath("third_party").iterdir():
    filename = path.name
    if (match := search(r"^import_(.+)\.py$", filename)) is None:
        raise ValueError(f"Unable to determine name from {filename}")
    lib_name = match.group(1)
    try:
        exec(f"import {lib_name}")  # noqa: S102
    except ModuleNotFoundError:
        pass
    else:
        with open(path) as file, suppress(ImportError):
            exec(file.read())  # noqa: S102

from contextlib import suppress
from pathlib import Path
from re import findall


PATH_HERE = Path(__file__).absolute()  # absolute; not resolve
for path in PATH_HERE.parent.joinpath("third_party").iterdir():
    if (filename := path.name) != "__init__.py":
        try:
            (lib_name,) = findall(r"^import_(.+)\.py$", filename)
        except ValueError:
            raise ValueError(
                f"Unable to determine name from {filename}"
            ) from None
        else:
            try:
                exec(f"import {lib_name}")  # noqa: S102
            except ModuleNotFoundError:
                pass
            else:
                with open(path) as file, suppress(ImportError):
                    exec(file.read())  # noqa: S102

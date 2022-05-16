#!/usr/bin/env python3
from re import findall
from subprocess import check_output  # noqa: S404
from sys import stdout
from typing import Tuple


def main() -> None:
    versions = check_output(  # noqa: S607
        "pyenv versions --bare --skip-aliases",
        shell=True,  # noqa: S602
        text=True,
    ).splitlines()
    paths = ":".join(sorted(map(_get_path, versions), key=_key))
    _ = stdout.write(f"PATH={paths}${{PATH:+:$PATH}}\n")


def _get_path(version: str) -> str:
    return check_output(
        f"PYENV_VERSION={version} pyenv which python",
        shell=True,  # noqa: S602
        text=True,
    ).rstrip("\n")


def _key(path: str) -> Tuple[int, int, int]:
    ((major, minor, patch),) = findall(r"(\d+)\.(\d+)\.(\d+)", path)
    return int(major), int(minor), int(patch)


if __name__ == "__main__":
    main()

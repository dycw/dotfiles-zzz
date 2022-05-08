#!/usr/bin/env python3
from subprocess import check_output  # noqa: S404
from sys import stdout


def main() -> None:
    versions = check_output(  # noqa: S607
        "pyenv versions --bare --skip-aliases",
        shell=True,  # noqa: S602
        text=True,
    ).splitlines()
    for version in versions:
        _ = stdout.write(_get_path(version) + "\n")


def _get_path(version: str) -> str:
    return check_output(
        f"PYENV_VERSION={version} pyenv which python",
        shell=True,  # noqa: S602
        text=True,
    ).rstrip("\n")


if __name__ == "__main__":
    main()

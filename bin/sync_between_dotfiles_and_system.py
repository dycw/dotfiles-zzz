#!/usr/bin/env python3
from __future__ import annotations

from dataclasses import dataclass
from enum import Enum, auto
from logging import basicConfig, info
from pathlib import Path
from shutil import copyfile
from subprocess import check_output
from sys import argv, stdout

basicConfig(
    format="{message}",
    datefmt="%Y-%m-%d %H:%M:%S",
    style="{",
    level="DEBUG",
    stream=stdout,
)


# parse CLI


class Direction(Enum):
    dotfiles_to_system = auto()
    system_to_dotfiles = auto()


try:
    _, arg, *_ = argv
except ValueError:
    n = len(argv)
    msg = f"Expected exactly 1 CLI argument; got {n}"
    raise RuntimeError(msg) from None
try:
    direction = Direction[arg]
except KeyError:
    msg = f"{arg!r} is not a valid direction"
    raise RuntimeError(msg) from None
info("Synchronizing %r...", direction.name)


# get paths


path_dotfiles = Path(
    check_output(
        ["git", "rev-parse", "--show-toplevel"],  # noqa: S603, S607
        cwd=Path(__file__).parent,
        text=True,
    ).strip("\n")
)
path_home = Path.home()


# set up links


@dataclass(frozen=True)
class Link:
    dotfiles: Path
    system: Path

    @property
    def path_dotfiles(self) -> Path:
        return path_dotfiles.joinpath(self.dotfiles)

    @property
    def path_system(self) -> Path:
        return path_home.joinpath(self.system)


links = {
    Link(dotfiles=Path("bash", ".bash_profile"), system=Path(".bash_profile")),
    Link(dotfiles=Path("bash", ".bashrc"), system=Path(".bashrc")),
}


# sync


def log_and_copy(from_: Path, to: Path, /) -> None:
    info("\n    Copying %s\n         -> %s...", from_, to)
    try:
        _ = copyfile(from_, to)
    except PermissionError:
        info("\n    Failed to copy %s\n         -> %s...", from_, to)


if direction is Direction.dotfiles_to_system:
    for link in links:
        log_and_copy(link.path_dotfiles, link.path_system)
else:
    for link in links:
        log_and_copy(link.path_system, link.path_dotfiles)


info("Finished")

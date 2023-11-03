#!/usr/bin/env python3
from __future__ import annotations

from collections.abc import Iterator
from contextlib import suppress
from dataclasses import dataclass, field
from itertools import chain, permutations, product
from logging import basicConfig, info
from sys import stdout
from typing import Literal

basicConfig(format="{message}", style="{", level="INFO", stream=stdout)


@dataclass(frozen=True)
class Settings:
    """A collection of pytest settings."""

    f: bool = False
    i: bool = False
    k: bool = False
    n: Literal["auto"] | int | None = None
    pdb: bool = False
    x: bool = False

    def __post_init__(self) -> None:
        if self.f and self.pdb:
            msg = "-f and --pdb are mutually exclusive"
            raise ValueError(msg)
        if self.i and self.x:
            msg = "-x and --instafail are mutually exclusive"
            raise ValueError(msg)
        if (self.n is not None) and self.pdb:
            msg = "-n and --pdb are mutually exclusive"
            raise ValueError(msg)

    @property
    def alias(self) -> Alias:
        """The alias."""
        parts: list[Part] = []
        append = parts.append
        if self.f:
            append(Part("f", "-f"))
        if self.i:
            append(Part("i", "--instafail"))
        if self.n == "auto":
            append(Part("n", "-nauto"))
        elif isinstance(self.n, int):
            append(Part(str(self.n), f"-n{self.n}"))
        if self.pdb:
            append(Part("p", "--pdb"))
        if self.x:
            append(Part("x", "-x"))
        if self.k:  # this must be last
            append(Part("k", "-k"))
        return Alias(parts)

    def yield_aliases(self) -> Iterator[Alias]:
        for parts in permutations(self.alias.parts):
            with suppress(ValueError):
                yield Alias(list(parts))


@dataclass(frozen=True)
class Part:
    """An alias part consisting of a key & option."""

    key: str
    option: str


@dataclass
class Alias:
    """An alias consisting of a list of parts."""

    parts: list[Part] = field(default_factory=list)

    def __repr__(self) -> str:
        keys = "".join(p.key for p in self.parts)
        alias = f"pyt{keys}"
        options = " ".join(chain(["--color=yes"], (p.option for p in self.parts)))
        command = f"pytest {options}".strip()
        return f"alias {alias}='{command}'"

    def __str__(self) -> str:
        return repr(self)


def main() -> None:
    """Echo all the commands, ready for piping to a script."""
    info("#!/usr/bin/env bash")
    for f, i, k, n, pdb, x in product(
        [True, False],
        [True, False],
        [True, False],
        chain(["auto"], [5, 10, 20], [None]),
        [True, False],
        [True, False],
    ):
        with suppress(ValueError):
            settings = Settings(f=f, i=i, k=k, n=n, pdb=pdb, x=x)
            for alias in settings.yield_aliases():
                info(alias)


if __name__ == "__main__":
    main()

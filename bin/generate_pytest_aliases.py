#!/usr/bin/env python
from __future__ import annotations

from contextlib import suppress
from dataclasses import dataclass, field
from itertools import chain, permutations, product
from logging import basicConfig, info
from sys import stdout
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from collections.abc import Iterator

basicConfig(format="{message}", style="{", level="INFO", stream=stdout)


@dataclass(frozen=True, kw_only=True)
class Settings:
    f: bool = False
    i: bool = False
    k: bool = False
    n: bool = False
    pdb: bool = False
    x: bool = False

    def __post_init__(self) -> None:
        if self.f and self.pdb:
            msg = "-f and --pdb are mutually exclusive"
            raise ArgumentError(msg)
        if self.i and self.x:
            msg = "--instafail and -x are mutually exclusive"
            raise ArgumentError(msg)
        if self.i and self.pdb:
            msg = "--instafail and --pdb are mutually exclusive"
            raise ArgumentError(msg)
        if self.n and self.pdb:
            msg = "-n and --pdb are mutually exclusive"
            raise ArgumentError(msg)

    def yield_aliases(self) -> Iterator[Alias]:
        for parts in permutations(self.yield_parts()):
            with suppress(ArgumentError):
                yield Alias(settings=self, parts=list(parts))

    def yield_parts(self) -> Iterator[Part]:
        if self.f:
            yield Part(key="f", option="-f")
        if self.i:
            yield Part(key="i", option="--instafail")
        if self.k:
            yield Part(key="k", option="-k")
        if self.n:
            yield Part(key="n", option="-n0")
        if self.pdb:
            yield Part(key="p", option="--pdb")
        if self.x:
            yield (Part(key="x", option="-x"))


class ArgumentError(Exception): ...


@dataclass(frozen=True, kw_only=True)
class Part:
    key: str
    option: str


@dataclass(frozen=True, kw_only=True)
class Alias:
    settings: Settings
    parts: list[Part] = field(default_factory=list)

    def __post_init__(self) -> None:
        if self.settings.k and self.parts[-1].key != "k":
            msg = "-k must be the last term"
            raise ArgumentError(msg)

    def __repr__(self) -> str:  # type: ignore[]
        keys = "".join(p.key for p in self.parts)
        alias = f"pyt{keys}"
        options = " ".join(chain(["--color=yes"], (p.option for p in self.parts)))
        command = f"pytest {options}".strip()
        return f"alias {alias}='{command}'"

    def __str__(self) -> str:  # type: ignore[]
        return repr(self)


def yield_aliases() -> Iterator[Alias]:
    for f, i, k, n, pdb, x in product(
        [True, False],
        [True, False],
        [True, False],
        [True, False],
        [True, False],
        [True, False],
    ):
        try:
            settings = Settings(f=f, i=i, k=k, n=n, pdb=pdb, x=x)
        except ArgumentError:  # noqa: PERF203
            pass
        else:
            yield from settings.yield_aliases()


def main() -> None:
    """Echo all the commands, ready for piping to a script."""
    info("#!/usr/bin/env bash")
    for alias in yield_aliases():
        info(alias)


if __name__ == "__main__":
    main()

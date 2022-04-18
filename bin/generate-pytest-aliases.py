#!/usr/bin/env python3
from dataclasses import dataclass
from dataclasses import field
from itertools import chain
from itertools import permutations
from itertools import product
from logging import basicConfig
from logging import info
from sys import stdout
from typing import Any
from typing import cast
from typing import Iterator
from typing import List
from typing import Optional
from typing import Union

from typing_extensions import Literal


basicConfig(format="{message}", level="INFO", stream=stdout, style="{")


@dataclass(frozen=True)
class Settings:
    """A collection of pytest settings."""

    f: bool = False
    k: bool = False
    instafail: bool = False
    l: bool = False
    n: Optional[Union[Literal["auto"], int]] = None
    pdb: bool = False
    x: bool = False

    def __post_init__(self) -> None:
        if self.pdb:
            if self.f:
                raise ValueError("--pdb and -f are mutually exclusive")
            elif self.n is not None:
                raise ValueError("--pdb and -n are mutually exclusive")

    @property
    def alias(self) -> "Alias":
        """The alias."""

        parts: list[Part] = []
        append = parts.append
        if self.f:
            append(Part("f", "-f"))
        if self.instafail:
            append(Part("i", "--instafail"))
        if self.l:
            append(Part("l", "-l"))
        if self.n == "auto":
            append(Part("n", "-nauto"))
        elif isinstance(self.n, int):
            append(Part(f"n{self.n}", f"-n{self.n}"))
        if self.pdb:
            append(Part("p", "--pdb"))
        if self.x:
            append(Part("x", "-x"))
        if self.k:  # this must be last
            append(Part("k", "-k"))
        return Alias(parts)

    def yield_aliases(self) -> Iterator["Alias"]:
        for parts in permutations(self.alias.parts):
            try:
                alias = Alias(list(parts))
            except ValueError:
                pass
            else:
                yield alias


@dataclass(frozen=True)
class Part:
    """An alias part consisting of a key & option."""

    key: str
    option: str


@dataclass
class Alias:
    """An alias consisting of a list of parts."""

    parts: List[Part] = field(default_factory=list)

    def __post_init__(self) -> None:
        if any(p.key == "k" for p in self.parts) and self.parts[-1].key != "k":
            raise ValueError("-k must be the last option")

    def __repr__(self) -> str:
        keys = "".join(p.key for p in self.parts)
        alias = f"pyt{keys}"
        options = " ".join(
            chain(
                ["--color=yes", "--durations=5", "--durations-min=1.0"],
                (p.option for p in self.parts),
            )
        )
        command = f"pytest {options}".strip()
        return f"alias {alias}='{command}'"

    def __str__(self) -> str:
        return repr(self)


def main() -> None:
    """Echo all the commands, ready for piping to a script."""

    info("#!/usr/bin/env bash")
    for f, instafail, k, l, n, pdb, x in product(
        [True, False],
        [True, False],
        [True, False],
        [True, False],
        chain(["auto"], [2, 3, 4, 5, 10, 20], [None]),
        [True, False],
        [True, False],
    ):
        try:
            settings = Settings(
                f=f, instafail=instafail, k=k, l=l, n=cast(Any, n), pdb=pdb, x=x
            )
        except ValueError:
            pass
        else:
            for alias in settings.yield_aliases():
                info(alias)


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
from __future__ import annotations

from collections.abc import Iterator
from re import search
from sys import stdout

import utilities.typing as module


def yield_imports() -> Iterator[str]:
    try:
        all_ = module.__all__
    except AttributeError:
        for attr in dir(module):
            if not search(r"^_", attr):
                yield attr
    else:
        yield from all_


for attr in yield_imports():
    if not search(r"^_", attr):
        stmt = f"from {module.__name__} import {attr}  # noqa: F401"
        _ = stdout.write(f"{stmt}\n")
#!/usr/bin/env python3
from __future__ import annotations

from ast import ImportFrom, alias, parse
from collections.abc import Iterator
from itertools import starmap
from operator import itemgetter
from re import search
from sys import stdout

from stringcase import spinalcase

filter_module: str | None = None
contents = """




from abc import (
    ABC,  # noqa: F401
    ABCMeta,  # noqa: F401
    abstractclassmethod,  # noqa: F401
    abstractmethod,  # noqa: F401
    abstractproperty,  # noqa: F401
    abstractstaticmethod,  # noqa: F401
    get_cache_token,  # noqa: F401
    update_abstractmethods,  # noqa: F401
)





"""


def yield_aliases() -> Iterator[tuple[str, alias]]:
    parsed = parse(contents)
    for stmt in parsed.body:
        if isinstance(stmt, ImportFrom):
            if (module := stmt.module) is None:
                raise TypeError(module)
            if (filter_module is None) or search(filter_module, module):
                for alias_ in stmt.names:
                    yield module, alias_


def transform(text: str, /) -> str:
    if search(r"^[A-Z_]+$", text) and search("_", text):
        return spinalcase(text.lower())
    return spinalcase(text)


def generate(module: str, alias_: alias, /) -> tuple[str, str]:
    name = alias_.name
    prefix = f"f{module[:2]}-{transform(name)}"
    if (as_name := alias_.asname) is None:
        body = f"from {module} import {name}"
    else:
        body = f"from {module} import {name} as {as_name}"
    snippet = f"""
"{prefix}": {{
    "prefix": "{prefix}",
    "body": ["{body}", "$0"]
}},
""".strip("\n")
    return prefix, snippet


mapping = dict(starmap(generate, yield_aliases()))
for _, text in sorted(mapping.items(), key=itemgetter(0)):
    _ = stdout.write(f"{text}\n")

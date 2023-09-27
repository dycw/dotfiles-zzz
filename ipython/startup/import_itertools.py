import itertools  # noqa: F401
from contextlib import suppress
from itertools import (
    accumulate,  # noqa: F401
    chain,  # noqa: F401
    combinations,  # noqa: F401
    combinations_with_replacement,  # noqa: F401
    compress,  # noqa: F401
    count,  # noqa: F401
    cycle,  # noqa: F401
    dropwhile,  # noqa: F401
    filterfalse,  # noqa: F401
    groupby,  # noqa: F401
    islice,  # noqa: F401
    permutations,  # noqa: F401
    product,  # noqa: F401
    repeat,  # noqa: F401
    starmap,  # noqa: F401
    tabulate,
    takewhile,  # noqa: F401
    tee,  # noqa: F401
    zip_longest,  # noqa: F401
)

with suppress(ModuleNotFoundError):
    from tabulate import tabulate  # noqa: F401,F811

from __future__ import annotations

from contextlib import suppress
from random import (
    Random,  # noqa: F401
    SystemRandom,  # noqa: F401
    betavariate,  # noqa: F401
    choice,  # noqa: F401
    expovariate,  # noqa: F401
    gammavariate,  # noqa: F401
    gauss,  # noqa: F401
    getrandbits,  # noqa: F401
    getstate,  # noqa: F401
    lognormvariate,  # noqa: F401
    normalvariate,  # noqa: F401
    paretovariate,  # noqa: F401
    randbytes,  # noqa: F401
    randint,  # noqa: F401
    randrange,  # noqa: F401
    sample,  # noqa: F401
    seed,  # noqa: F401
    setstate,  # noqa: F401
    shuffle,  # noqa: F401
    triangular,  # noqa: F401
    uniform,  # noqa: F401
    vonmisesvariate,  # noqa: F401
    weibullvariate,  # noqa: F401
)

with suppress(ImportError):
    from random import (
        # Python 3.12+
        binomialvariate,  # noqa: F401
    )

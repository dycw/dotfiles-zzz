from __future__ import annotations

from contextlib import suppress
from random import (  # noqa: F401
    Random,
    SystemRandom,
    betavariate,
    choice,
    expovariate,
    gammavariate,
    gauss,
    getrandbits,
    getstate,
    lognormvariate,
    normalvariate,
    paretovariate,
    randbytes,
    randint,
    randrange,
    sample,
    seed,
    setstate,
    shuffle,
    triangular,
    uniform,
    vonmisesvariate,
    weibullvariate,
)

with suppress(ImportError):
    from random import (  # noqa: F401
        # Python 3.12+
        binomialvariate,
    )

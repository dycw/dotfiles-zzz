from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import numpy  # noqa: F401, ICN001
    import numpy as np  # noqa: F401
    from numpy import arange  # noqa: F401
    from numpy import array  # noqa: F401
    from numpy import bool_  # noqa: F401
    from numpy import concatenate  # noqa: F401
    from numpy import corrcoef  # noqa: F401
    from numpy import cumsum  # noqa: F401
    from numpy import dtype  # noqa: F401
    from numpy import exp  # noqa: F401
    from numpy import expand_dims  # noqa: F401
    from numpy import eye  # noqa: F401
    from numpy import finfo  # noqa: F401
    from numpy import flatnonzero  # noqa: F401
    from numpy import float16  # noqa: F401
    from numpy import float32  # noqa: F401
    from numpy import float64  # noqa: F401
    from numpy import histogram  # noqa: F401
    from numpy import hstack  # noqa: F401
    from numpy import iinfo  # noqa: F401
    from numpy import inf  # noqa: F401
    from numpy import int8  # noqa: F401
    from numpy import int16  # noqa: F401
    from numpy import int32  # noqa: F401
    from numpy import int64  # noqa: F401
    from numpy import isclose  # noqa: F401
    from numpy import isfinite  # noqa: F401
    from numpy import isnan  # noqa: F401
    from numpy import issubdtype  # noqa: F401
    from numpy import linspace  # noqa: F401
    from numpy import log  # noqa: F401
    from numpy import log2  # noqa: F401
    from numpy import log10  # noqa: F401
    from numpy import maximum  # noqa: F401
    from numpy import memmap  # noqa: F401
    from numpy import minimum  # noqa: F401
    from numpy import nan  # noqa: F401
    from numpy import nan_to_num  # noqa: F401
    from numpy import nansum  # noqa: F401
    from numpy import ndarray  # noqa: F401
    from numpy import newaxis  # noqa: F401
    from numpy import nonzero  # noqa: F401
    from numpy import ones  # noqa: F401
    from numpy import ones_like  # noqa: F401
    from numpy import ravel  # noqa: F401
    from numpy import set_printoptions
    from numpy import sqrt  # noqa: F401
    from numpy import vstack  # noqa: F401
    from numpy import where  # noqa: F401
    from numpy import zeros  # noqa: F401
    from numpy import zeros_like  # noqa: F401
    from numpy.linalg import LinAlgError  # noqa: F401
    from numpy.linalg import inv  # noqa: F401
    from numpy.random import RandomState  # noqa: F401
    from numpy.typing import NDArray  # noqa: F401

    with suppress(ImportError):
        from numpy import float128  # noqa: F401

    set_printoptions(suppress=True)

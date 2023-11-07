from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import numpy  # noqa: F401, ICN001
    import numpy as np  # noqa: F401
    from numpy import (
        arange,  # noqa: F401
        array,  # noqa: F401
        bool_,  # noqa: F401
        ceil,  # noqa: F401
        concatenate,  # noqa: F401
        corrcoef,  # noqa: F401
        cumsum,  # noqa: F401
        dtype,  # noqa: F401
        exp,  # noqa: F401
        exp2,  # noqa: F401
        expand_dims,  # noqa: F401
        eye,  # noqa: F401
        finfo,  # noqa: F401
        flatnonzero,  # noqa: F401
        float16,  # noqa: F401
        float32,  # noqa: F401
        float64,  # noqa: F401
        floor,  # noqa: F401
        histogram,  # noqa: F401
        hstack,  # noqa: F401
        iinfo,  # noqa: F401
        inf,  # noqa: F401
        int8,  # noqa: F401
        int16,  # noqa: F401
        int32,  # noqa: F401
        int64,  # noqa: F401
        isclose,  # noqa: F401
        isfinite,  # noqa: F401
        isinf,  # noqa: F401
        isnan,  # noqa: F401
        issubdtype,  # noqa: F401
        linspace,  # noqa: F401
        log,  # noqa: F401
        log2,  # noqa: F401
        log10,  # noqa: F401
        maximum,  # noqa: F401
        memmap,  # noqa: F401
        minimum,  # noqa: F401
        nan,  # noqa: F401
        nan_to_num,  # noqa: F401
        nansum,  # noqa: F401
        ndarray,  # noqa: F401
        newaxis,  # noqa: F401
        nonzero,  # noqa: F401
        ones,  # noqa: F401
        ones_like,  # noqa: F401
        ravel,  # noqa: F401
        set_printoptions,
        sqrt,  # noqa: F401
        vstack,  # noqa: F401
        where,  # noqa: F401
        zeros,  # noqa: F401
        zeros_like,  # noqa: F401
    )
    from numpy.linalg import (
        LinAlgError,  # noqa: F401
        inv,  # noqa: F401
    )
    from numpy.random import (
        RandomState,  # noqa: F401
    )
    from numpy.typing import (
        NDArray,  # noqa: F401
    )

    with suppress(ImportError):
        from numpy import float128  # noqa: F401

    set_printoptions(suppress=True)

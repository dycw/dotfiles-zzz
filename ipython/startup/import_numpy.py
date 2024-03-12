from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import numpy  # noqa: F401, ICN001
    import numpy as np  # noqa: F401
    from numpy import (  # noqa: F401
        allclose,
        arange,
        array,
        block,
        bool_,
        ceil,
        concatenate,
        corrcoef,
        cumsum,
        diag,
        dtype,
        empty,
        exp,
        exp2,
        expand_dims,
        eye,
        finfo,
        flatnonzero,
        float16,
        float32,
        float64,
        floor,
        histogram,
        hstack,
        iinfo,
        inf,
        int8,
        int16,
        int32,
        int64,
        isclose,
        isfinite,
        isinf,
        isnan,
        issubdtype,
        linspace,
        log,
        log2,
        log10,
        maximum,
        memmap,
        minimum,
        nan,
        nan_to_num,
        nansum,
        ndarray,
        newaxis,
        nonzero,
        ones,
        ones_like,
        ravel,
        set_printoptions,
        sqrt,
        vstack,
        where,
        zeros,
        zeros_like,
    )
    from numpy.linalg import (  # noqa: F401
        LinAlgError,
        cholesky,
        inv,
    )
    from numpy.random import (  # noqa: F401
        Generator,
        RandomState,
        default_rng,
    )
    from numpy.typing import (  # noqa: F401
        NDArray,
    )

    with suppress(ImportError):
        from numpy import (  # noqa: F401
            float128,
        )

    set_printoptions(suppress=True)

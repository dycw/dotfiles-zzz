from __future__ import annotations

from contextlib import suppress

with suppress(ModuleNotFoundError):
    import matplotlib  # noqa: F401, ICN001
    import matplotlib as mpl  # noqa: F401
    import matplotlib.pyplot as plt  # noqa: F401
    from matplotlib.pyplot import (  # noqa: F401
        gca,
        gcf,
        subplot,
        twinx,
        twiny,
    )

from __future__ import annotations

from contextlib import suppress
from functools import partial
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from collections.abc import Callable

with suppress(ModuleNotFoundError):
    import pandas  # noqa: F401, ICN001
    import pandas as pd  # noqa: F401
    from pandas import (  # noqa: F401
        NA,
        BooleanDtype,
        DateOffset,
        DatetimeIndex,
        Index,
        Int64Dtype,
        MultiIndex,
        RangeIndex,
        StringDtype,
        Timedelta,
        TimedeltaIndex,
        Timestamp,
        bdate_range,
        concat,
        date_range,
        qcut,
        read_sql,
        read_table,
        set_option,
        to_datetime,
        to_pickle,
    )
    from pandas._libs.missing import (  # noqa: F401
        NAType,
    )
    from pandas.testing import (  # noqa: F401
        assert_frame_equal,
        assert_index_equal,
        assert_series_equal,
    )
    from pandas.tseries.offsets import (  # noqa: F401
        BDay,
        Hour,
        Micro,
        Milli,
        Minute,
        MonthBegin,
        MonthEnd,
        Nano,
        Second,
        Week,
    )

    try:
        import polars as _polars  # noqa: F401, ICN001
    except ModuleNotFoundError:
        from pandas import (  # noqa: F401
            DataFrame,
            Series,
            concat,
            read_csv,
            read_excel,
            read_parquet,
        )

    try:
        import utilities as _utilities  # noqa: F401
    except ModuleNotFoundError:
        from pandas import (  # noqa: F401
            read_pickle,
        )

    _DEFAULT_MIN_MAX_ROWS, _DEFAULT_MAX_COLUMNS = 7, 100

    def _formatter(x: float, /, *, template: str) -> str:
        return format(x, template)

    def _get_float_formatter(dp: int, /) -> Callable[[float], str]:
        return partial(_formatter, template=f".{dp}f")

    set_option(
        "display.float_format",
        _get_float_formatter(5),
        "display.min_rows",
        _DEFAULT_MIN_MAX_ROWS,
        "display.max_rows",
        _DEFAULT_MIN_MAX_ROWS,
        "display.max_columns",
        _DEFAULT_MAX_COLUMNS,
    )

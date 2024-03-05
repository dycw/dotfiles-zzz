from __future__ import annotations

from collections.abc import Callable
from contextlib import suppress
from functools import partial

with suppress(ModuleNotFoundError):
    import pandas  # noqa: F401, ICN001
    import pandas as pd  # noqa: F401
    from pandas import (
        NA,  # noqa: F401
        BooleanDtype,  # noqa: F401
        DateOffset,  # noqa: F401
        DatetimeIndex,  # noqa: F401
        Index,  # noqa: F401
        Int64Dtype,  # noqa: F401
        MultiIndex,  # noqa: F401
        RangeIndex,  # noqa: F401
        StringDtype,  # noqa: F401
        Timedelta,  # noqa: F401
        TimedeltaIndex,  # noqa: F401
        Timestamp,  # noqa: F401
        bdate_range,  # noqa: F401
        concat,
        date_range,  # noqa: F401
        qcut,  # noqa: F401
        read_sql,  # noqa: F401
        read_table,  # noqa: F401
        set_option,
        to_datetime,  # noqa: F401
        to_pickle,  # noqa: F401
    )
    from pandas._libs.missing import (
        NAType,  # noqa: F401
    )
    from pandas.testing import (
        assert_frame_equal,  # noqa: F401
        assert_index_equal,  # noqa: F401
        assert_series_equal,  # noqa: F401
    )
    from pandas.tseries.offsets import (
        BDay,  # noqa: F401
        Hour,  # noqa: F401
        Micro,  # noqa: F401
        Milli,  # noqa: F401
        Minute,  # noqa: F401
        MonthBegin,  # noqa: F401
        MonthEnd,  # noqa: F401
        Nano,  # noqa: F401
        Second,  # noqa: F401
        Week,  # noqa: F401
    )

    try:
        import polars as _polars  # noqa: F401, ICN001
    except ModuleNotFoundError:
        from pandas import (
            DataFrame,  # noqa: F401
            Series,  # noqa: F401
            concat,  # noqa: F401
            read_csv,  # noqa: F401
            read_excel,  # noqa: F401
            read_parquet,  # noqa: F401
        )

    try:
        import utilities as _utilities  # noqa: F401
    except ModuleNotFoundError:
        from pandas import (
            read_pickle,  # noqa: F401
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

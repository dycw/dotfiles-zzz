from collections.abc import Callable
from contextlib import suppress
from functools import partial
from types import TracebackType
from typing import ClassVar

with suppress(ModuleNotFoundError):
    import pandas  # noqa: F401, ICN001
    import pandas as pd  # noqa: F401
    from numpy import isinf
    from pandas import NA  # noqa: F401
    from pandas import BooleanDtype  # noqa: F401
    from pandas import DataFrame  # noqa: F401
    from pandas import DateOffset  # noqa: F401
    from pandas import DatetimeIndex  # noqa: F401
    from pandas import Index  # noqa: F401
    from pandas import Int64Dtype  # noqa: F401
    from pandas import MultiIndex  # noqa: F401
    from pandas import RangeIndex  # noqa: F401
    from pandas import Series  # noqa: F401
    from pandas import StringDtype  # noqa: F401
    from pandas import Timedelta  # noqa: F401
    from pandas import TimedeltaIndex  # noqa: F401
    from pandas import Timestamp  # noqa: F401
    from pandas import bdate_range  # noqa: F401
    from pandas import concat  # noqa: F401
    from pandas import date_range  # noqa: F401
    from pandas import option_context
    from pandas import qcut  # noqa: F401
    from pandas import read_csv  # noqa: F401
    from pandas import read_excel  # noqa: F401
    from pandas import read_parquet  # noqa: F401
    from pandas import read_pickle  # noqa: F401
    from pandas import read_sql  # noqa: F401
    from pandas import read_table  # noqa: F401
    from pandas import set_option
    from pandas import to_datetime  # noqa: F401
    from pandas import to_pickle  # noqa: F401
    from pandas._libs.missing import NAType  # noqa: F401
    from pandas.testing import assert_frame_equal  # noqa: F401
    from pandas.testing import assert_index_equal  # noqa: F401
    from pandas.testing import assert_series_equal  # noqa: F401
    from pandas.tseries.offsets import BDay  # noqa: F401
    from pandas.tseries.offsets import Hour  # noqa: F401
    from pandas.tseries.offsets import Micro  # noqa: F401
    from pandas.tseries.offsets import Milli  # noqa: F401
    from pandas.tseries.offsets import Minute  # noqa: F401
    from pandas.tseries.offsets import MonthBegin  # noqa: F401
    from pandas.tseries.offsets import MonthEnd  # noqa: F401
    from pandas.tseries.offsets import Nano  # noqa: F401
    from pandas.tseries.offsets import Second  # noqa: F401
    from pandas.tseries.offsets import Week  # noqa: F401

    _DEFAULT_MIN_MAX_ROWS, _DEFAULT_MAX_COLUMNS = 7, 100

    def _formatter(x: float, /, *, template: str) -> str:
        return format(x, template)

    def _get_float_formatter(dp: int, /) -> Callable[[float], str]:
        return partial(_formatter, template=f".{dp}f")

    set_option(
        "display.float_format",
        _get_float_formatter(5),
        "display.min_rows",  # type: ignore
        _DEFAULT_MIN_MAX_ROWS,
        "display.max_rows",
        _DEFAULT_MIN_MAX_ROWS,
        "display.max_columns",
        _DEFAULT_MAX_COLUMNS,
    )

    class _ShowMeta(type):
        _contexts: ClassVar[list[option_context]] = []

        def __enter__(cls) -> None:
            new = option_context(
                "display.min_rows", 100, "display.max_rows", 100
            )
            cls._contexts.append(new)
            new.__enter__()

        def __exit__(
            cls,
            exc_type: type[BaseException] | None,
            exc_val: BaseException | None,
            exc_tb: TracebackType | None,
        ) -> None:
            last = cls._contexts.pop()
            last.__exit__(exc_type, exc_val, exc_tb)

    class show(metaclass=_ShowMeta):  # noqa: N801
        """Context manager which adjusts the display of NDFrames."""

        def __init__(
            self,
            *,
            dp: int | None = None,
            rows: float = _DEFAULT_MIN_MAX_ROWS,
            columns: float = _DEFAULT_MAX_COLUMNS,
        ) -> None:
            super().__init__()
            float_format = None if dp is None else _get_float_formatter(dp)
            if isinstance(rows, int):
                rows_use: int | None = rows
            else:
                rows_use = None if isinf(rows) else int(rows)
            if isinstance(columns, int):
                columns_use: int | None = columns
            else:
                columns_use = None if isinf(columns) else int(columns)
            self._context = option_context(
                "display.float_format",
                float_format,
                "display.min_rows",
                rows_use,
                "display.max_rows",
                rows_use,
                "display.max_columns",
                columns_use,
            )

        def __enter__(self) -> None:
            self._context.__enter__()

        def __exit__(
            self,
            exc_type: type[BaseException] | None,
            exc_val: BaseException | None,
            exc_tb: TracebackType | None,
        ) -> None:
            self._context.__exit__(exc_type, exc_val, exc_tb)

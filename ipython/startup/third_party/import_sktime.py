from __future__ import annotations

from dataclasses import dataclass
from dataclasses import replace
from itertools import chain
from typing import Any
from typing import Callable
from typing import Generic
from typing import NamedTuple
from typing import TypeVar

import sktime  # noqa: F401
from sktime.forecasting.compose import ReducedRegressionForecaster  # noqa: F401
from sktime.forecasting.exp_smoothing import ExponentialSmoothing  # noqa: F401
from sktime.forecasting.model_selection import CutoffSplitter  # noqa: F401
from sktime.forecasting.model_selection import temporal_train_test_split
from sktime.forecasting.naive import NaiveForecaster  # noqa: F401
from sktime.performance_metrics.forecasting import sMAPE  # noqa: F401
from sktime.performance_metrics.forecasting import smape_loss  # noqa: F401
from sktime.transformers.single_series.detrend import Detrender  # noqa: F401
from sktime.utils.plotting.forecasting import plot_ys  # noqa: F401
from sktime.utils.time_series import time_series_slope  # noqa: F401


T = TypeVar("T")
U = TypeVar("U")


_DEFAULT_REGEX_X = "^x_"
_DEFAULT_REGEX_Y = "^y_"
_DEFAULT_FRAC_TRAIN = 0.7
_DEFAULT_FRAC_VALID = 0.2
_DEFAULT_FRAC_TEST = 0.1


try:
    from more_itertools import roundrobin
    from numpy import isclose
    from numpy import ndarray
    from pandas import DataFrame
    from pandas import Index
    from pandas import Series
except ModuleNotFoundError:
    pass
else:
    ArrayLike = TypeVar("ArrayLike", ndarray, Series, DataFrame)

    def temporal_3_way_split(
        *args: ArrayLike,
        train: float = _DEFAULT_FRAC_TRAIN,
        valid: float = _DEFAULT_FRAC_VALID,
        test: float = _DEFAULT_FRAC_TEST,
    ) -> tuple[ArrayLike, ...]:
        if not isclose(total := (train + valid + test), 1.0):
            raise ValueError(
                f"The fractions must add up to 1; they add up to {total}"
            )
        if isclose(train, 1.0):
            return tuple(chain(*((arg, arg[:0], arg[:0]) for arg in args)))
        train_and_valid = train + valid
        if isclose(train_and_valid, 1.0):
            tmp = temporal_train_test_split(*args, train_size=train)
            all_train, all_valid = tmp[::2], tmp[1::2]
            return tuple(
                chain(*((t, v, t[:0]) for t, v in zip(all_train, all_valid)))
            )
        tmp = temporal_train_test_split(*args, train_size=train_and_valid)
        all_train_valid, all_test = tmp[::2], tmp[1::2]
        tmp = temporal_train_test_split(
            *all_train_valid, train_size=train / (train + valid)
        )
        all_train, all_valid = tmp[::2], tmp[1::2]
        return tuple(roundrobin(all_train, all_valid, all_test))

    @dataclass
    class TemporalSplit(Generic[T]):
        X_train: T
        X_valid: T
        X_test: T
        y_train: T
        y_valid: T
        y_test: T
        index_train: Index | None = None
        index_valid: Index | None = None
        index_test: Index | None = None

        @property
        def shape(self) -> dict[str, tuple[int, ...]]:
            out = {}
            for prefix, view in {"X": self.X, "y": self.y}.items():
                out.update(
                    {
                        f"{prefix}_{k}": v.shape
                        for k, v in view._asdict().items()
                    }
                )
            return out

        @property
        def test(self) -> _XYView:
            return _XYView(X=self.X_test, y=self.y_test)

        @property
        def train(self) -> _XYView:
            return _XYView(X=self.X_train, y=self.y_train)

        @property
        def valid(self) -> _XYView:
            return _XYView(X=self.X_valid, y=self.y_valid)

        @property
        def X(self) -> _TemporalView:
            return _TemporalView(
                train=self.X_train, valid=self.X_valid, test=self.X_test
            )

        @property
        def y(self) -> _TemporalView:
            return _TemporalView(
                train=self.y_train, valid=self.y_valid, test=self.y_test
            )

        @classmethod
        def from_Xy(
            cls,
            X: ArrayLike,
            y: ArrayLike,
            *,
            train: float = _DEFAULT_FRAC_TRAIN,
            valid: float = _DEFAULT_FRAC_VALID,
            test: float = _DEFAULT_FRAC_TEST,
        ) -> TemporalSplit[DataFrame]:
            return TemporalSplit(
                *temporal_3_way_split(X, y, train=train, valid=valid, test=test)
            )

        @classmethod
        def from_df(
            cls,
            df: DataFrame,
            *,
            regex_x: str = _DEFAULT_REGEX_X,
            regex_y: str = _DEFAULT_REGEX_Y,
            train: float = _DEFAULT_FRAC_TRAIN,
            valid: float = _DEFAULT_FRAC_VALID,
            test: float = _DEFAULT_FRAC_TEST,
        ) -> TemporalSplit[DataFrame]:
            X = df.filter(regex=regex_x)
            y = df.filter(regex=regex_y)
            split = cls.from_Xy(X, y, train=train, valid=valid, test=test)
            return replace(
                split,
                index_train=split.X_train.index,
                index_valid=split.X_valid.index,
                index_test=split.X_test.index,
            )

        def map(self, func: Callable[[T], U]) -> TemporalSplit[U]:
            return self.map_x(func).map_y(func)  # type: ignore

        def map_x(self, func: Callable[[T], T]) -> TemporalSplit[T]:
            return replace(
                self, **{f"X_{k}": func(v) for k, v in self.X._asdict().items()}
            )

        def map_y(self, func: Callable[[T], T]) -> TemporalSplit[T]:
            return replace(
                self, **{f"y_{k}": func(v) for k, v in self.y._asdict().items()}
            )

    class _TemporalView(NamedTuple):
        train: Any
        valid: Any
        test: Any

    class _XYView(NamedTuple):
        X: Any
        y: Any

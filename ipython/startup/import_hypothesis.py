from contextlib import suppress
from typing import Generic
from typing import TypeVar

_T = TypeVar("_T")


with suppress(ModuleNotFoundError):
    import hypothesis
    import hypothesis.strategies  # noqa: F401
    from hypothesis import HealthCheck  # noqa: F401
    from hypothesis import assume  # noqa: F401
    from hypothesis import given  # noqa: F401
    from hypothesis import infer  # noqa: F401
    from hypothesis import reproduce_failure  # noqa: F401
    from hypothesis import settings  # noqa: F401
    from hypothesis.strategies import DataObject  # noqa: F401
    from hypothesis.strategies import SearchStrategy
    from hypothesis.strategies import booleans  # noqa: F401
    from hypothesis.strategies import complex_numbers  # noqa: F401
    from hypothesis.strategies import dictionaries  # noqa: F401
    from hypothesis.strategies import fixed_dictionaries  # noqa: F401
    from hypothesis.strategies import floats  # noqa: F401
    from hypothesis.strategies import from_type  # noqa: F401
    from hypothesis.strategies import integers  # noqa: F401
    from hypothesis.strategies import just  # noqa: F401
    from hypothesis.strategies import lists  # noqa: F401
    from hypothesis.strategies import none  # noqa: F401
    from hypothesis.strategies import sampled_from  # noqa: F401
    from hypothesis.strategies import sets  # noqa: F401
    from hypothesis.strategies import shared  # noqa: F401
    from hypothesis.strategies import text  # noqa: F401
    from hypothesis.strategies import tuples  # noqa: F401

    with suppress(ModuleNotFoundError):
        from hypothesis.extra.django import LiveServerTestCase  # noqa: F401
        from hypothesis.extra.django import StaticLiveServerTestCase  # noqa: F401
        from hypothesis.extra.django import TransactionTestCase  # noqa: F401
        from hypothesis.extra.django import from_form  # noqa: F401
        from hypothesis.extra.django import from_model  # noqa: F401
    with suppress(ModuleNotFoundError):
        from hypothesis.extra.numpy import array_dtypes  # noqa: F401
        from hypothesis.extra.numpy import array_shapes  # noqa: F401
        from hypothesis.extra.numpy import arrays  # noqa: F401
        from hypothesis.extra.numpy import from_dtype  # noqa: F401
        from hypothesis.extra.numpy import scalar_dtypes  # noqa: F401
    with suppress(ModuleNotFoundError):
        from hypothesis.extra.pandas import column  # noqa: F401
        from hypothesis.extra.pandas import columns  # noqa: F401
        from hypothesis.extra.pandas import data_frames  # noqa: F401
        from hypothesis.extra.pandas import indexes  # noqa: F401
        from hypothesis.extra.pandas import range_indexes  # noqa: F401
        from hypothesis.extra.pandas import series  # noqa: F401

    def draw(strategy: SearchStrategy[_T], /) -> _T:
        return strategy.example()

    class _Data(Generic[_T]):
        def draw(self, strategy: SearchStrategy[_T], /) -> _T:
            return draw(strategy)

    data = _Data()

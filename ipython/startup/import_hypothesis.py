from contextlib import suppress
from typing import Generic, TypeVar

_T = TypeVar("_T")


with suppress(ModuleNotFoundError):
    import hypothesis
    import hypothesis.strategies  # noqa: F401
    from hypothesis import (
        HealthCheck,  # noqa: F401
        assume,  # noqa: F401
        given,  # noqa: F401
        infer,  # noqa: F401
        reproduce_failure,  # noqa: F401
        settings,  # noqa: F401
    )
    from hypothesis.strategies import (
        DataObject,  # noqa: F401
        SearchStrategy,
        booleans,  # noqa: F401
        complex_numbers,  # noqa: F401
        dictionaries,  # noqa: F401
        fixed_dictionaries,  # noqa: F401
        floats,  # noqa: F401
        from_type,  # noqa: F401
        integers,  # noqa: F401
        just,  # noqa: F401
        lists,  # noqa: F401
        none,  # noqa: F401
        sampled_from,  # noqa: F401
        sets,  # noqa: F401
        shared,  # noqa: F401
        text,  # noqa: F401
        tuples,  # noqa: F401
    )

    with suppress(ModuleNotFoundError):
        from hypothesis.extra.django import (
            LiveServerTestCase,  # noqa: F401
            StaticLiveServerTestCase,  # noqa: F401
            TransactionTestCase,  # noqa: F401
            from_form,  # noqa: F401
            from_model,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from hypothesis.extra.numpy import (
            array_dtypes,  # noqa: F401
            array_shapes,  # noqa: F401
            arrays,  # noqa: F401
            from_dtype,  # noqa: F401
            scalar_dtypes,  # noqa: F401
        )
    with suppress(ModuleNotFoundError):
        from hypothesis.extra.pandas import (
            column,  # noqa: F401
            columns,  # noqa: F401
            data_frames,  # noqa: F401
            indexes,  # noqa: F401
            range_indexes,  # noqa: F401
            series,  # noqa: F401
        )

    def draw(strategy: SearchStrategy[_T]) -> _T:
        return strategy.example()

    class _Data(Generic[_T]):
        def draw(self, strategy: SearchStrategy[_T]) -> _T:
            return draw(strategy)

    data = _Data()

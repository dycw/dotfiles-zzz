from collections.abc import Iterable
from contextlib import suppress
from itertools import chain, filterfalse
from multiprocessing import cpu_count
from typing import Optional, TypeVar, Union, cast

_T = TypeVar("_T")


with suppress(ModuleNotFoundError):
    import luigi  # noqa: F401
    from luigi import (
        BoolParameter,  # noqa: F401
        DictParameter,  # noqa: F401
        EnumParameter,  # noqa: F401
        ExternalTask,  # noqa: F401
        FloatParameter,  # noqa: F401
        IntParameter,  # noqa: F401
        LocalTarget,  # noqa: F401
        Task,
        TaskParameter,  # noqa: F401
        TupleParameter,  # noqa: F401
        WrapperTask,
        build,
    )

    def build_if_not_complete(
        tasks: Iterable[Task],
        /,
        *,
        local_scheduler: bool = False,
        log_level: Union[str, int] = "INFO",
        workers: Optional[int] = cpu_count(),
    ) -> None:
        """Build a set of Tasks if they are not complete."""

        to_build = [task for task in tasks if not task.complete()]
        if to_build:
            build(
                to_build,
                local_scheduler=local_scheduler,
                log_level=log_level,
                **({} if workers is None else {"workers": workers}),
            )

    def build_sequentially(task: Task, /) -> None:
        """Build a task sequentially."""

        def can_run(task: Task, /) -> bool:
            return not isinstance(task, WrapperTask) and all(
                dep.complete() for dep in yield_dependencies(task) if dep is not task
            )

        tasks = set(yield_dependencies(task))
        while tasks:
            tasks = {task for task in tasks if not task.complete()}
            try:
                to_run = next(task for task in tasks if can_run(task))
            except StopIteration:
                msg = f"Unable to build {task} sequentially; {tasks} remain"
                raise RuntimeError(msg)
            else:
                to_run.run()
                if not to_run.complete():
                    msg = f"Ran {task}; but remains incomplete"
                    raise RuntimeError(msg)

    def yield_dependencies(task: Task, /) -> Iterable[Task]:
        """Yield the dependencies of a task."""

        deps = cast(list[Task], task.deps())
        yield from _unique_everseen(chain([task], deps, *map(yield_dependencies, deps)))

    def _unique_everseen(iterable: Iterable[_T], /) -> Iterable[_T]:
        """List unique elements, preserving order. Remember all elements ever
        seen.
        """

        seen = set()
        for element in filterfalse(seen.__contains__, iterable):
            seen.add(element)
            yield element

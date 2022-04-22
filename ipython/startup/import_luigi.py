from contextlib import suppress
from itertools import chain
from itertools import filterfalse
from multiprocessing import cpu_count
from typing import Iterable
from typing import List
from typing import Optional
from typing import TypeVar
from typing import Union
from typing import cast


_T = TypeVar("_T")


with suppress(ModuleNotFoundError):
    import luigi  # noqa: F401
    from luigi import BoolParameter  # noqa: F401
    from luigi import DictParameter  # noqa: F401
    from luigi import EnumParameter  # noqa: F401
    from luigi import ExternalTask  # noqa: F401
    from luigi import FloatParameter  # noqa: F401
    from luigi import IntParameter  # noqa: F401
    from luigi import LocalTarget  # noqa: F401
    from luigi import Task
    from luigi import TaskParameter  # noqa: F401
    from luigi import TupleParameter  # noqa: F401
    from luigi import WrapperTask
    from luigi import build

    def build_if_not_complete(
        tasks: Iterable[Task],
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

    def build_sequentially(task: Task) -> None:
        """Build a task sequentially."""

        def can_run(task: Task) -> bool:
            return not isinstance(task, WrapperTask) and all(
                dep.complete()
                for dep in yield_dependencies(task)
                if dep is not task
            )

        tasks = set(yield_dependencies(task))
        while tasks:
            tasks = {task for task in tasks if not task.complete()}
            try:
                to_run = next(task for task in tasks if can_run(task))
            except StopIteration:
                raise RuntimeError(
                    f"Unable to build {task} sequentially; {tasks} remain"
                )
            else:
                to_run.run()
                if not to_run.complete():
                    raise RuntimeError(f"Ran {task}; but remains incomplete")

    def yield_dependencies(task: Task) -> Iterable[Task]:
        """Yield the dependencies of a task."""

        deps = cast(List[Task], task.deps())
        yield from _unique_everseen(
            chain([task], deps, *map(yield_dependencies, deps))
        )

    def _unique_everseen(iterable: Iterable[_T]) -> Iterable[_T]:
        """List unique elements, preserving order. Remember all elements ever
        seen.
        """

        seen = set()
        for element in filterfalse(seen.__contains__, iterable):
            seen.add(element)
            yield element

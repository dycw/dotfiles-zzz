import datetime as dt
from re import search
from sys import stdout
from timeit import default_timer
from typing import Any, Optional


class _TimerCM:
    """A timer class."""

    def __init__(self, *, msg: Optional[str] = None) -> None:
        super().__init__()
        self._parts = ["{desc}"] + ([] if msg is None else [msg])

    def __enter__(self) -> None:
        self._start = default_timer()
        msg = " ".join(self._parts).format(desc="S.")
        stdout.write(msg + "\n")

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        elapsed = dt.timedelta(seconds=default_timer() - self._start)
        e_str = str(elapsed)
        match = search(r"(.*\.\d{1})\d{5}$", e_str)
        if match is not None:
            e_str = match.group(1)
        parts = [*self._parts, e_str]
        msg = " ".join(parts).format(desc=".F")
        stdout.write(msg + "\n")


class _TimerMeta(type):
    """Metaclass allowing `timer` to be used as a class."""

    _timers: list[_TimerCM] = []

    def __enter__(cls) -> None:
        timer = _TimerCM()
        cls._timers.append(timer)
        timer.__enter__()

    def __exit__(cls, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        last = cls._timers.pop()
        last.__exit__(exc_type, exc_val, exc_tb)


class timer(metaclass=_TimerMeta):
    def __init__(self, msg: str, /) -> None:
        super().__init__()
        self.msg = msg

    def __enter__(self) -> None:
        self._timer = _TimerCM(self.msg)
        self._timer.__enter__()

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        self._timer.__exit__(exc_type, exc_val, exc_tb)

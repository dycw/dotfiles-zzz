import abc  # noqa: F401
import argparse  # noqa: F401
import collections  # noqa: F401
import contextlib  # noqa: F401
import datetime as dt
import enum  # noqa: F401
import functools  # noqa: F401
import gzip  # noqa: F401
import hashlib  # noqa: F401
import importlib  # noqa: F401
import inspect  # noqa: F401
import itertools  # noqa: F401
import multiprocessing  # noqa: F401
import operator  # noqa: F401
import os  # noqa: F401
import pathlib  # noqa: F401
import pickle  # noqa: F401, S403
import platform  # noqa: F401
import random  # noqa: F401
import re  # noqa: F401
import shutil  # noqa: F401
import socket  # noqa: F401
import stat  # noqa: F401
import string  # noqa: F401
import subprocess  # noqa: F401, S404
import sys  # noqa: F401
import tempfile  # noqa: F401
import time  # noqa: F401
import typing  # noqa: F401
import urllib  # noqa: F401
from abc import ABC  # noqa: F401
from abc import ABCMeta  # noqa: F401
from abc import abstractmethod  # noqa: F401
from argparse import ArgumentParser  # noqa: F401
from collections import Counter  # noqa: F401
from collections import defaultdict  # noqa: F401
from collections import deque  # noqa: F401
from collections.abc import Awaitable  # noqa: F401
from collections.abc import Callable  # noqa: F401
from collections.abc import Collection  # noqa: F401
from collections.abc import Generator  # noqa: F401
from collections.abc import Hashable  # noqa: F401
from collections.abc import Iterable  # noqa: F401
from collections.abc import Iterator
from collections.abc import Mapping  # noqa: F401
from collections.abc import Sized  # noqa: F401
from contextlib import contextmanager
from contextlib import redirect_stdout
from contextlib import suppress  # noqa: F401
from dataclasses import asdict  # noqa: F401
from dataclasses import astuple  # noqa: F401
from dataclasses import dataclass  # noqa: F401
from dataclasses import field  # noqa: F401
from dataclasses import fields  # noqa: F401
from dataclasses import replace  # noqa: F401
from enum import Enum  # noqa: F401
from enum import auto  # noqa: F401
from functools import cached_property  # noqa: F401
from functools import lru_cache  # noqa: F401
from functools import partial  # noqa: F401
from functools import reduce  # noqa: F401
from functools import update_wrapper  # noqa: F401
from functools import wraps  # noqa: F401
from hashlib import md5  # noqa: F401
from hashlib import sha256  # noqa: F401
from hashlib import sha512  # noqa: F401
from importlib import reload  # noqa: F401
from inspect import getattr_static  # noqa: F401
from inspect import signature  # noqa: F401
from io import BytesIO  # noqa: F401
from io import StringIO  # noqa: F401
from itertools import accumulate  # noqa: F401
from itertools import chain  # noqa: F401
from itertools import combinations  # noqa: F401
from itertools import combinations_with_replacement  # noqa: F401
from itertools import compress  # noqa: F401
from itertools import count  # noqa: F401
from itertools import cycle  # noqa: F401
from itertools import dropwhile  # noqa: F401
from itertools import filterfalse  # noqa: F401
from itertools import groupby  # noqa: F401
from itertools import islice  # noqa: F401
from itertools import permutations  # noqa: F401
from itertools import product  # noqa: F401
from itertools import repeat  # noqa: F401
from itertools import starmap  # noqa: F401
from itertools import takewhile  # noqa: F401
from itertools import tee  # noqa: F401
from itertools import zip_longest  # noqa: F401
from json import JSONDecoder  # noqa: F401
from json import JSONEncoder  # noqa: F401
from logging import DEBUG  # noqa: F401
from logging import ERROR  # noqa: F401
from logging import WARNING  # noqa: F401
from logging import basicConfig  # noqa: F401
from multiprocessing import Pool  # noqa: F401
from multiprocessing import cpu_count  # noqa: F401
from numbers import Integral  # noqa: F401
from numbers import Number  # noqa: F401
from numbers import Real  # noqa: F401
from operator import add  # noqa: F401
from operator import and_  # noqa: F401
from operator import attrgetter  # noqa: F401
from operator import itemgetter  # noqa: F401
from operator import mul  # noqa: F401
from operator import or_  # noqa: F401
from operator import sub  # noqa: F401
from operator import truediv  # noqa: F401
from os import devnull
from os import environ  # noqa: F401
from os import getenv  # noqa: F401
from os.path import expanduser  # noqa: F401
from os.path import expandvars  # noqa: F401
from pathlib import Path
from platform import system  # noqa: F401
from random import choice  # noqa: F401
from random import sample  # noqa: F401
from random import shuffle  # noqa: F401
from re import escape  # noqa: F401
from re import findall  # noqa: F401
from re import fullmatch  # noqa: F401
from re import match  # noqa: F401
from re import search
from shutil import copyfile  # noqa: F401
from shutil import which  # noqa: F401
from socket import gethostname  # noqa: F401
from stat import S_IRGRP  # noqa: F401
from stat import S_IRUSR  # noqa: F401
from stat import S_IWGRP  # noqa: F401
from stat import S_IWUSR  # noqa: F401
from stat import S_IXGRP  # noqa: F401
from stat import S_IXUSR  # noqa: F401
from string import ascii_letters  # noqa: F401
from string import ascii_lowercase  # noqa: F401
from string import ascii_uppercase  # noqa: F401
from subprocess import DEVNULL  # noqa: F401, S404
from subprocess import PIPE  # noqa: F401, S404
from subprocess import STDOUT  # noqa: F401, S404
from subprocess import CalledProcessError  # noqa: F401, S404
from subprocess import check_call  # noqa: F401, S404
from subprocess import check_output  # noqa: F401, S404
from subprocess import run  # noqa: F401, S404
from sys import stderr  # noqa: F401
from sys import stdout
from tempfile import NamedTemporaryFile  # noqa: F401
from tempfile import TemporaryDirectory
from tempfile import gettempdir  # noqa: F401
from time import sleep  # noqa: F401
from timeit import default_timer
from types import MemberDescriptorType  # noqa: F401
from types import MethodDescriptorType  # noqa: F401
from types import MethodType  # noqa: F401
from types import MethodWrapperType  # noqa: F401
from types import ModuleType  # noqa: F401
from typing import Annotated  # noqa: F401
from typing import Any
from typing import BinaryIO  # noqa: F401
from typing import ChainMap  # noqa: F401
from typing import Deque  # noqa: F401
from typing import Generic  # noqa: F401
from typing import NamedTuple  # noqa: F401
from typing import NewType  # noqa: F401
from typing import Optional
from typing import TextIO  # noqa: F401
from typing import TypeVar  # noqa: F401
from typing import Union  # noqa: F401
from typing import cast  # noqa: F401
from urllib.request import urlretrieve  # noqa: F401
from zipfile import ZipFile  # noqa: F401


# temp dir


class TemporaryDirectoryPath(TemporaryDirectory[Any]):
    def __enter__(self) -> Path:
        return Path(super().__enter__())


# timer


class _TimerCM:
    def __init__(self, msg: Optional[str] = None) -> None:
        self._parts = ["{desc}"] + ([] if msg is None else [msg])

    def __enter__(self) -> None:
        self._start = default_timer()
        msg = " ".join(self._parts).format(desc="S.")
        stdout.write(msg + "\n")

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        elapsed = dt.timedelta(seconds=default_timer() - self._start)
        e_str = str(elapsed)
        if _match := search(r"(.*\.\d{1})\d{5}$", e_str):
            e_str = _match.group(1)
        parts = self._parts + [e_str]
        msg = " ".join(parts).format(desc=".F")
        stdout.write(msg + "\n")


class _TimerMeta(type):
    _timers: list[_TimerCM] = []

    def __enter__(cls) -> None:
        timer = _TimerCM()
        cls._timers.append(timer)
        timer.__enter__()

    def __exit__(cls, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        last = cls._timers.pop()
        last.__exit__(exc_type, exc_val, exc_tb)


class timer(metaclass=_TimerMeta):  # noqa: N801
    def __init__(self, msg: str) -> None:
        self.msg = msg

    def __enter__(self) -> None:
        self._timer = _TimerCM(self.msg)
        self._timer.__enter__()

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        self._timer.__exit__(exc_type, exc_val, exc_tb)


# no stdout


@contextmanager
def no_stdout() -> Iterator[None]:
    with open(devnull, mode="w") as null, redirect_stdout(null):
        yield

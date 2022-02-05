from __future__ import annotations

import abc  # type: ignore # noqa: F401
import argparse  # type: ignore # noqa: F401
import collections  # type: ignore # noqa: F401
import contextlib  # type: ignore # noqa: F401
import datetime as dt
import enum  # type: ignore # noqa: F401
import functools  # type: ignore # noqa: F401
import gzip  # type: ignore # noqa: F401
import hashlib  # type: ignore # noqa: F401
import importlib  # type: ignore # noqa: F401
import inspect  # type: ignore # noqa: F401
import itertools  # type: ignore # noqa: F401
import json  # type: ignore # noqa: F401
import logging  # type: ignore # noqa: F401
import multiprocessing  # type: ignore # noqa: F401
import operator  # type: ignore # noqa: F401
import os  # type: ignore # noqa: F401
import pathlib  # type: ignore # noqa: F401
import pickle  # type: ignore # noqa: F401
import platform  # type: ignore # noqa: F401
import random  # type: ignore # noqa: F401
import re  # type: ignore # noqa: F401
import shutil  # type: ignore # noqa: F401
import socket  # type: ignore # noqa: F401
import stat  # type: ignore # noqa: F401
import string  # type: ignore # noqa: F401
import subprocess  # type: ignore # noqa: F401
import sys  # type: ignore # noqa: F401
import tempfile  # type: ignore # noqa: F401
import time  # type: ignore # noqa: F401
import typing  # type: ignore # noqa: F401
import urllib  # type: ignore # noqa: F401
from abc import ABC  # type: ignore # noqa: F401
from abc import ABCMeta  # type: ignore # noqa: F401
from abc import abstractmethod  # type: ignore # noqa: F401
from argparse import ArgumentParser  # type: ignore # noqa: F401
from collections import Counter  # type: ignore # noqa: F401
from collections import defaultdict  # type: ignore # noqa: F401
from collections import deque  # type: ignore # noqa: F401
from contextlib import contextmanager
from contextlib import redirect_stdout
from contextlib import suppress  # type: ignore # noqa: F401
from dataclasses import asdict  # type: ignore # noqa: F401
from dataclasses import astuple  # type: ignore # noqa: F401
from dataclasses import dataclass  # type: ignore # noqa: F401
from dataclasses import field  # type: ignore # noqa: F401
from dataclasses import fields  # type: ignore # noqa: F401
from dataclasses import replace  # type: ignore # noqa: F401
from enum import Enum  # type: ignore # noqa: F401
from enum import auto  # type: ignore # noqa: F401
from functools import cached_property  # type: ignore # noqa: F401
from functools import lru_cache  # type: ignore # noqa: F401
from functools import partial  # type: ignore # noqa: F401
from functools import reduce  # type: ignore # noqa: F401
from functools import update_wrapper  # type: ignore # noqa: F401
from functools import wraps  # type: ignore # noqa: F401
from hashlib import md5  # type: ignore # noqa: F401
from hashlib import sha256  # type: ignore # noqa: F401
from hashlib import sha512  # type: ignore # noqa: F401
from importlib import reload  # type: ignore # noqa: F401
from inspect import getattr_static  # type: ignore # noqa: F401
from inspect import signature  # type: ignore # noqa: F401
from io import BytesIO  # type: ignore # noqa: F401
from io import StringIO  # type: ignore # noqa: F401
from itertools import accumulate  # type: ignore # noqa: F401
from itertools import chain  # type: ignore # noqa: F401
from itertools import combinations  # type: ignore # noqa: F401
from itertools import combinations_with_replacement  # type: ignore # noqa: F401
from itertools import compress  # type: ignore # noqa: F401
from itertools import count  # type: ignore # noqa: F401
from itertools import cycle  # type: ignore # noqa: F401
from itertools import dropwhile  # type: ignore # noqa: F401
from itertools import filterfalse  # type: ignore # noqa: F401
from itertools import groupby  # type: ignore # noqa: F401
from itertools import islice  # type: ignore # noqa: F401
from itertools import permutations  # type: ignore # noqa: F401
from itertools import product  # type: ignore # noqa: F401
from itertools import repeat  # type: ignore # noqa: F401
from itertools import starmap  # type: ignore # noqa: F401
from itertools import takewhile  # type: ignore # noqa: F401
from itertools import tee  # type: ignore # noqa: F401
from itertools import zip_longest  # type: ignore # noqa: F401
from json import JSONDecoder  # type: ignore # noqa: F401
from json import JSONEncoder  # type: ignore # noqa: F401
from logging import DEBUG  # type: ignore # noqa: F401
from logging import ERROR  # type: ignore # noqa: F401
from logging import INFO
from logging import WARNING  # type: ignore # noqa: F401
from logging import Formatter
from logging import Logger
from logging import StreamHandler
from logging import basicConfig  # type: ignore # noqa: F401
from logging import getLogger
from multiprocessing import Pool  # type: ignore # noqa: F401
from multiprocessing import cpu_count  # type: ignore # noqa: F401
from numbers import Integral  # type: ignore # noqa: F401
from numbers import Number  # type: ignore # noqa: F401
from numbers import Real  # type: ignore # noqa: F401
from operator import add  # type: ignore # noqa: F401
from operator import and_  # type: ignore # noqa: F401
from operator import attrgetter  # type: ignore # noqa: F401
from operator import itemgetter  # type: ignore # noqa: F401
from operator import mul  # type: ignore # noqa: F401
from operator import or_  # type: ignore # noqa: F401
from operator import sub  # type: ignore # noqa: F401
from operator import truediv  # type: ignore # noqa: F401
from os import devnull
from os import environ  # type: ignore # noqa: F401
from os import getenv  # type: ignore # noqa: F401
from os.path import expanduser  # type: ignore # noqa: F401
from os.path import expandvars  # type: ignore # noqa: F401
from pathlib import Path
from platform import system  # type: ignore # noqa: F401
from random import choice  # type: ignore # noqa: F401
from random import sample  # type: ignore # noqa: F401
from random import shuffle  # type: ignore # noqa: F401
from re import escape  # type: ignore # noqa: F401
from re import findall  # type: ignore # noqa: F401
from re import fullmatch  # type: ignore # noqa: F401
from re import match  # type: ignore # noqa: F401
from re import search
from shutil import copyfile  # type: ignore # noqa: F401
from shutil import which  # type: ignore # noqa: F401
from socket import gethostname  # type: ignore # noqa: F401
from stat import S_IRGRP  # type: ignore # noqa: F401
from stat import S_IRUSR  # type: ignore # noqa: F401
from stat import S_IWGRP  # type: ignore # noqa: F401
from stat import S_IWUSR  # type: ignore # noqa: F401
from stat import S_IXGRP  # type: ignore # noqa: F401
from stat import S_IXUSR  # type: ignore # noqa: F401
from string import ascii_letters  # type: ignore # noqa: F401
from string import ascii_lowercase  # type: ignore # noqa: F401
from string import ascii_uppercase  # type: ignore # noqa: F401
from subprocess import DEVNULL  # type: ignore # noqa: F401
from subprocess import PIPE  # type: ignore # noqa: F401
from subprocess import STDOUT  # type: ignore # noqa: F401
from subprocess import CalledProcessError  # type: ignore # noqa: F401
from subprocess import check_call  # type: ignore # noqa: F401
from subprocess import check_output  # type: ignore # noqa: F401
from subprocess import run  # type: ignore # noqa: F401
from sys import stderr  # type: ignore # noqa: F401
from sys import stdout
from tempfile import NamedTemporaryFile  # type: ignore # noqa: F401
from tempfile import TemporaryDirectory
from tempfile import gettempdir  # type: ignore # noqa: F401
from time import sleep  # type: ignore # noqa: F401
from timeit import default_timer
from types import MemberDescriptorType  # type: ignore # noqa: F401
from types import MethodDescriptorType  # type: ignore # noqa: F401
from types import MethodType  # type: ignore # noqa: F401
from types import MethodWrapperType  # type: ignore # noqa: F401
from types import ModuleType  # type: ignore # noqa: F401
from typing import Annotated  # type: ignore # noqa: F401
from typing import Any
from typing import Awaitable  # type: ignore # noqa: F401
from typing import BinaryIO  # type: ignore # noqa: F401
from typing import Callable  # type: ignore # noqa: F401
from typing import ChainMap  # type: ignore # noqa: F401
from typing import Collection  # type: ignore # noqa: F401
from typing import Deque  # type: ignore # noqa: F401
from typing import Dict  # type: ignore # noqa: F401
from typing import FrozenSet  # type: ignore # noqa: F401
from typing import Generator  # type: ignore # noqa: F401
from typing import Generic  # type: ignore # noqa: F401
from typing import Hashable  # type: ignore # noqa: F401
from typing import Iterable  # type: ignore # noqa: F401
from typing import Iterator
from typing import Mapping  # type: ignore # noqa: F401
from typing import NamedTuple  # type: ignore # noqa: F401
from typing import Set  # type: ignore # noqa: F401
from typing import Sized  # type: ignore # noqa: F401
from typing import TextIO  # type: ignore # noqa: F401
from typing import Tuple  # type: ignore # noqa: F401
from typing import Type  # type: ignore # noqa: F401
from typing import TypeVar  # type: ignore # noqa: F401
from typing import Union  # type: ignore # noqa: F401
from typing import cast  # type: ignore # noqa: F401
from urllib.request import urlretrieve  # type: ignore # noqa: F401
from zipfile import ZipFile  # type: ignore # noqa: F401


def _get_and_initialize_logger(name: str, *, datetime: bool) -> Logger:
    if datetime:
        fmt = "{asctime} {message}"
        datefmt = "%Y-%m-%d %H:%M:%S"
    else:
        fmt = "{message}"
        datefmt = None
    formatter = Formatter(fmt=fmt, datefmt=datefmt, style="{")
    handler = StreamHandler(stdout)
    handler.setLevel(INFO)
    handler.setFormatter(formatter)
    logger = getLogger(name)
    logger.addHandler(handler)
    logger.setLevel(INFO)
    return logger


# temp dir


class TemporaryDirectoryPath(TemporaryDirectory[Any]):
    def __enter__(self) -> Path:
        return Path(super().__enter__())


# timer


_TIMER_LOGGER = _get_and_initialize_logger("timer", datetime=True)


class _TimerCM:
    def __init__(self, msg: str | None = None) -> None:
        self._parts = ["{desc}"] + ([] if msg is None else [msg])

    def __enter__(self) -> None:
        self._start = default_timer()
        msg = " ".join(self._parts).format(desc="S.")
        _TIMER_LOGGER.info(msg)

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        elapsed = dt.timedelta(seconds=default_timer() - self._start)
        e_str = str(elapsed)
        if _match := search(r"(.*\.\d{1})\d{5}$", e_str):
            e_str = _match.group(1)
        parts = self._parts + [e_str]
        msg = " ".join(parts).format(desc=".F")
        _TIMER_LOGGER.info(msg)


class _TimerMeta(type):
    _timers: list[_TimerCM] = []

    def __enter__(cls) -> None:
        timer = _TimerCM()
        cls._timers.append(timer)
        timer.__enter__()

    def __exit__(cls, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        last = cls._timers.pop()
        last.__exit__(exc_type, exc_val, exc_tb)


class timer(metaclass=_TimerMeta):
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

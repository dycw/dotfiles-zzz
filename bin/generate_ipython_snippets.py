#!/usr/bin/env python3
from __future__ import annotations

import abc as module
from re import search
from sys import stdout

for attr in dir(module):
    if not search(r"^_", attr):
        stmt = f"from {module.__name__} import {attr}  # noqa: F401"
        _ = stdout.write(f"{stmt}\n")

from __future__ import annotations

import pathlib  # noqa: F401
from pathlib import Path
from subprocess import check_output


def get_repo_root(*, cwd: Path | str | None = None) -> Path:
    cmd = "git rev-parse --show-toplevel"
    output = check_output(cmd, shell=True, cwd=cwd, text=True)  # noqa: S602
    return Path(output.strip("\n"))

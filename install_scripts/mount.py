#!/usr/bin/env python3
from pathlib import Path
from re import findall
from re import search
from subprocess import check_call  # noqa: S404
from subprocess import check_output  # noqa: S404
from typing import Optional


def main() -> None:
    path = get_path()
    device = get_device()
    if not is_written(path, device):
        write(path, device)


def get_path() -> Path:
    return Path("/etc/fstab")


def get_device() -> str:
    blocks = check_output(  # noqa: S603, S607
        ["sudo", "fdisk", "-l"], text=True
    ).split("\n\n\n")

    def extract_device(text: str) -> Optional[str]:
        lines = text.splitlines()
        if any(search("Disk model: Samsung SSD 860", line) for line in lines):
            (match,) = (m for m in map(is_device, lines) if m is not None)
            return match
        else:
            return None

    def is_device(text: str) -> Optional[str]:
        try:
            (match,) = findall(
                r"^(.+?)\s+\d+\s+\d+\s+\d+.*\s+Linux filesystem$", text.strip()
            )
        except ValueError:
            return None
        else:
            return match

    (device,) = (d for d in map(extract_device, blocks) if d is not None)
    return device


def is_written(path: Path, device: str) -> bool:
    with open(path) as file:
        lines = file.readlines()
    return any(search(rf"^{device}\s+", line) for line in lines)


def write(path: Path, device: str) -> None:
    contents = "    ".join([device, "/data", "ext4", "defaults", "0", "0"])
    cmd = f"echo {contents!r} | sudo tee -a {path.as_posix()}"
    check_call(cmd, shell=True)  # noqa: S602


if __name__ == "__main__":
    main()
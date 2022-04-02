#!/usr/bin/env bash
# shellcheck source=/dev/null

_FILE="$HOME/.bashrc" && [ -f "$_FILE" ] && source "$_FILE"

export PATH="$HOME/.poetry/bin:$PATH"

#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
	bumpversion bumpversion

_bin="$HOME/.local/bin/bump2version"
if ! [ -f "$_bin" ]; then
	mkdir -p "$(dirname "$_bin")"
	ln -s "$(which bumpversion)" "$_bin"
fi

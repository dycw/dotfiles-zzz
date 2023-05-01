#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running bump2version/install.sh..."

if ! [ -x "$(command -v bumpversion)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install bumpversion
fi

# symlink
_bin="$HOME/.local/bin/bump2version"
if ! [ -f "$_bin" ]; then
	mkdir -p "$(dirname "$_bin")"
	ln -s "$(which bumpversion)" "$_bin"
fi

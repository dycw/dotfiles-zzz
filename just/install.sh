#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for just..."

if ! [ -x "$(command -v just)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing just..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	dest="$HOME/.local/bin"
	mkdir -p "$dest"
	curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh |
		bash -s -- --to "$dest"
fi

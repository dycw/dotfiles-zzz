#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ruff/install.sh..."

if ! [ -x "$(command -v ruff)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install ruff
fi

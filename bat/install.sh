#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running bat/install.sh..."

if ! [ -x "$(command -v bat)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install bat
fi

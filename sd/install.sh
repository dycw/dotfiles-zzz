#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running sd/install.sh..."

if ! [ -x "$(command -v sd)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install sd
fi

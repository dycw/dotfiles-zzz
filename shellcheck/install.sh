#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running shellcheck/install.sh..."

if ! [ -x "$(command -v shellcheck)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install shellcheck
fi

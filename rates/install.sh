#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running rates/install.sh..."

if ! [ -x "$(command -v rates)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/rust/install.sh"
	cargo install rates
fi

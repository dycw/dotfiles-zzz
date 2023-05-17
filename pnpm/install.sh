#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pnpm/install.sh..."

if ! [ -x "$(command -v pnpm)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install pnpm
fi

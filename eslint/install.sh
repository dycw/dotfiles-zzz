#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running eslint/install.sh..."

if ! grep -Fxq eslint <<<"$(brew list -1)"; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install eslint
fi

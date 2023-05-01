#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pre-commit/install.sh..."

if ! [ -x "$(command -v pre-commit)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install pre-commit
fi

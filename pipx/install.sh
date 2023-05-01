#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pipx/install.sh..."

if ! [ -x "$(command -v pipx)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install pipx
fi

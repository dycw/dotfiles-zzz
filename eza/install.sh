#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running eza/install.sh..."

if ! [ -x "$(command -v eza)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install eza
fi

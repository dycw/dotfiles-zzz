#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running hyperfine/install.sh..."

if ! [ -x "$(command -v hyperfine)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install hyperfine
fi

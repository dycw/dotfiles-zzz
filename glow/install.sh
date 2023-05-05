#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running glow/install.sh..."

if ! [ -x "$(command -v glow)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install glow
fi

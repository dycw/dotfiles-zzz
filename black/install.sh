#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running black/install.sh..."

if ! [ -x "$(command -v black)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install black
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running watch/install.sh..."

if ! [ -x "$(command -v watch)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install watch
fi

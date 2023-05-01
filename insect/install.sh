#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running insect/install.sh..."

if ! [ -x "$(command -v insect)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install insect
fi

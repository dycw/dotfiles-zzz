#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running fd/install.sh..."

if ! [ -x "$(command -v fd)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install fd
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running just/install.sh..."

if ! [ -x "$(command -v just)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install just
fi

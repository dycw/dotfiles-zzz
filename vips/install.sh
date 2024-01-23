#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running vips/install.sh..."

if ! [ -x "$(command -v vips)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install vips
fi

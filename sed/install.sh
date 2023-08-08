#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running sed/install.sh..."

if ! [ -x "$(command -v gsed)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install gnu-sed
fi

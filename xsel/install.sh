#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running xsel/install.sh..."

if ! [ -x "$(command -v xsel)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install xsel
fi

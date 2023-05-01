#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running exa/install.sh..."

if ! [ -x "$(command -v exa)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install exa
fi

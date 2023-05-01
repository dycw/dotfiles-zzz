#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pyright/install.sh..."

if ! [ -x "$(command -v pyright)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install pyright
fi

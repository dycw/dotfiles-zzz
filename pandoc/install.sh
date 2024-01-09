#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pandoc/install.sh..."

if ! [ -x "$(command -v pandoc)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install pandoc
fi

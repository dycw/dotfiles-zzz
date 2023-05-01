#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running rome/install.sh..."

if ! [ -x "$(command -v rome)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install rome
fi

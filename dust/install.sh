#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running dust/install.sh..."

if ! [ -x "$(command -v dust)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install dust
fi

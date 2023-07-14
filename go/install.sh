#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running go/install.sh..."

if ! [ -x "$(command -v go)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install go
fi

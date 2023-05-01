#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running watchexec/install.sh..."

if ! [ -x "$(command -v watchexec)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install watchexec
fi

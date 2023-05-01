#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running shfmt/install.sh..."

if ! [ -x "$(command -v shfmt)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install shfmt
fi

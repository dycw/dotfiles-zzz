#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running xclip/install.sh..."

if ! [ -x "$(command -v xclip)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install xclip
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running npm/install.sh..."

if ! [ -x "$(command -v npm)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/nvm/install.sh"
	nvm install --lts
fi

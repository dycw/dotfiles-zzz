#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for npm..."

if ! [ -x "$(command -v npm)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing npm..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/nvm/install.sh"
	nvm install --lts
fi

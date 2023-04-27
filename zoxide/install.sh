#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for zoxide..."

if ! [ -x "$(command -v zoxide)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing zoxide..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	curl -sS \
		https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh |
		bash
fi

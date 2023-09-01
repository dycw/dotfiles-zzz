#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running zoxide/install.sh..."

if ! [ -x "$(command -v zoxide)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install zoxide
fi

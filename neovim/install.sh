#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running neovim/install.sh..."

if ! [ -x "$(command -v nvim)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install neovim
fi

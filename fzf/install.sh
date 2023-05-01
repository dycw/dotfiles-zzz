#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running fzf/install.sh..."

if ! [ -x "$(command -v fzf)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install fzf
	"$(brew --prefix)/opt/fzf/install" \
		--xdg --key-bindings --completion --no-update-rc --no-fish
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running fzf/install.sh..."

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
brew install fzf

if ! [ -x "$(command -v fzf)" ]; then
	"$(brew --prefix)/opt/fzf/install" \
		--xdg --key-bindings --completion --no-update-rc --no-fish
fi

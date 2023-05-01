#!/usr/bin/env bash

if ! [ -x "$(command -v fzf)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install-package.sh" fzf fzf

	"$(brew --prefix)/opt/fzf/install" \
		--xdg --key-bindings --completion --no-update-rc --no-fish
fi

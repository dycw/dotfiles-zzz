#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install-package.sh" fzf fzf

if ! [ -x "$(command -v fzf)" ]; then
	# shellcheck source=/dev/null

	"root/install" --xdg --key-bindings --completion --no-update-rc --no-fish
fi

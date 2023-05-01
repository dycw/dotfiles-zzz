#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running stylua/install.sh..."

if ! [ -x "$(command -v stylua)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install stylua
fi

# symlinks
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/stylua/stylua.toml" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/stylua/stylua"

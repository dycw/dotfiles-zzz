#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running neovim/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v nvim)" ]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	brew install neovim
fi

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/neovim/lazyvim" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

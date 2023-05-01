#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ripgrep/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v rg)" ]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	brew install ripgrep
fi

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/ripgrep/ripgreprc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/ripgreprc"

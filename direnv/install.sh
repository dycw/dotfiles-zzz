#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running direnv/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v direnv)" ]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	brew install direnv
fi

# shellcheck source=/dev/null
source "$_root/direnv/config.sh"

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/direnv/direnvrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/direnv/direnvrc"

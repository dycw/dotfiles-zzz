#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running topgrade/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v topgrade)" ]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	brew install topgrade
fi

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/topgrade/topgrade.toml" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/topgrade.toml"

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running starship/install.sh..."

if ! [ -x "$(command -v starship)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install starship
fi

# symlinks
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/starship/starship.toml" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing starship..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v starship)" ]; then
	# shellcheck source=/dev/null
	source "$root/curl/install.sh"
	curl -sS https://starship.rs/install.sh |
		sh -s -- -b="$HOME/.local/bin" -y
	eval "$(starship init "$("$root"/bin/bash-or-zsh)")"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for starship..."
# shellcheck source=/dev/null
source "$root/installers/symlink.sh" \
	"$HOME/dotfiles/starship/starship.toml" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"

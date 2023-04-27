#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for direnv..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v direnv)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing direnv..."
	# shellcheck source=/dev/null
	source "$root/curl/install.sh"
	curl -sfL https://direnv.net/install.sh | bash
	eval "$(direnv hook "$("$root"/bin/bash-or-zsh)")"
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for direnv..."
# shellcheck source=/dev/null
source "$root/installers/symlink.sh" \
	"$HOME/dotfiles/direnv/direnvrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/direnv/direnvrc"

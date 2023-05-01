#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running direnv/install.sh..."

_root="$(git rev-parse --show-toplevel)"
# shellcheck source=/dev/null
source "$_root/brew/install.sh"
brew install direnv

# shellcheck source=/dev/null
source "$_root/direnv/config.sh"

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/direnv/direnvrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/direnv/direnvrc"

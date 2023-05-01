#!/usr/bin/env bash

_root="$(git rev-parse --show-toplevel)"
# shellcheck source=/dev/null
source "$_root/brew/install-package.sh" direnv direnv
# shellcheck source=/dev/null
source "$_root/direnv/config.sh"

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for direnv..."
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/direnv/direnvrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/direnv/direnvrc"

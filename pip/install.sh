#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pip/install.sh..."

_root="$(git rev-parse --show-toplevel)"

# symlinks
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/pip/pip.conf" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/pip/pip.conf"

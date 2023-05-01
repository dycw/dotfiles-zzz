#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running luacheck/install.sh..."

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
brew install luacheck

# symlinks
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/luacheck/luacheckrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/luacheck/.luacheckrc"

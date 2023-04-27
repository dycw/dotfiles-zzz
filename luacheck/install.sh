#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for luacheck..."
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/luacheck/luacheckrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/luacheck/.luacheckrc"

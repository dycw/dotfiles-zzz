#!/usr/bin/env bash

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
	luacheck luacheck

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for luacheck..."
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/luacheck/luacheckrc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/luacheck/.luacheckrc"

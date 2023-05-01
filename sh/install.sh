#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running sh/install.sh..."

# folders
mkdir -p "$HOME/work"

# symlinks
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/input/inputrc" "$HOME/.inputrc"

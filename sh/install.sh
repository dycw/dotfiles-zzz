#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installation for sh..."

echo "$(date '+%Y-%m-%d %H:%M:%S'): Folders for sh..."
mkdir -p "$HOME/work"

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for sh..."
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/input/inputrc" "$HOME/.inputrc"

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for fonts..."
# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
	"$HOME/dotfiles/fonts/Fira Code Retina Nerd Font Complete.ttf" \
	"$HOME/.local/share/fonts/Fira Code Retina Nerd Font Complete.ttf"

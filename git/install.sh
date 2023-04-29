#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for git..."
for item in config config.local ignore; do
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/git/$item" \
		"${XDG_CONFIG_HOME:-$HOME/.config}/git/$item"
done

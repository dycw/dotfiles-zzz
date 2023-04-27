#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for jupyter..."
items=(
	jupyter_server_config.py:jupyter_server_config.py
	user-settings:lab/user-settings
)
for item in "${items[@]}"; do
	key="$(echo "$item" | cut -d ':' -f 1)"
	value="$(echo "$item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/jupyter/$key" "$HOME/.jupyter/$value"
done

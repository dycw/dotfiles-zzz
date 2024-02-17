#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running jupyter/install.sh..."

# symlinks
_items=(
	jupyter_server_config.py:jupyter_server_config.py
	user-settings:lab/user-settings
)
if [[ "$(uname -s)" =~ Darwin* ]]; then
	_ROOT="$HOME/Library/Application Support/Jupyter"
elif [[ "$(uname -s)" =~ Linux* ]]; then
	_ROOT="$HOME/.config/Jupyter"
fi
for _item in "${_items[@]}"; do
	_key="$(echo "$_item" | cut -d ':' -f 1)"
	_value="$(echo "$_item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/jupyter/$_key" "$_ROOT/$_value"
done

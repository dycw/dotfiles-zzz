#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for ipython..."
for item in ipython_config.py ipython_kernel_config.py startup; do
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/ipython/$item" "$HOME/.ipython/profile_default/$item"
done

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running bash/install.sh..."

if [ -n "${BASH_VERSION+x}" ]; then
	# folders
	mkdir -p "$HOME/.cache/bash"

	# symlinks
	for item in bash_profile bashrc; do
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
			"$HOME/dotfiles/bash/$item" "$HOME/.$item"
	done
fi

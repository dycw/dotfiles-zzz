#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installation for bash..."

case "$(uname -s)" in
Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
Linux*)
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Folders for bash..."
	mkdir -p "$HOME/.cache/bash"

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for bash..."
	for item in bash_profile bashrc; do
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
			"$HOME/dotfiles/bash/$item" "$HOME/.$item"
	done
	;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac
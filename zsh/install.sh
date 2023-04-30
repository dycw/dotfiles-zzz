#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installation for zsh..."

case "$(uname -s)" in
Darwin*)
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Folders for zsh..."
	mkdir -p "$HOME/.cache/zsh"

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for zsh..."
	for item in zprofile zshrc; do
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
			"$HOME/dotfiles/zsh/$item" "$HOME/.$item"
	done
	;;
Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

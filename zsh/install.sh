#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Installation for zsh..."

if [ -n "${ZSH_VERSION+x}" ]; then
	_root="$(git rev-parse --show-toplevel)"
	# shellcheck source=/dev/null
	source "$_root/brew/install-package.sh" zsh-completions zsh-completions

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Folders for zsh..."
	mkdir -p "$HOME/.cache/zsh"

	echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for zsh..."
	for item in zprofile zshrc; do
		# shellcheck source=/dev/null
		source "$_root/installers/symlink.sh" \
			"$HOME/dotfiles/zsh/$item" "$HOME/.$item"
	done
fi

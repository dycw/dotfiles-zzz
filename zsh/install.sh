#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running zsh/install.sh..."

if [ -n "${ZSH_VERSION+x}" ]; then
	_root="$(git rev-parse --show-toplevel)"
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! grep -Fxq zsh-completions <<<"$(brew list -1)"; then
		brew install zsh-completions
	fi

	# folders
	mkdir -p "$HOME/.cache/zsh"

	# symlinks
	for _name in zprofile zshrc; do
		# shellcheck source=/dev/null
		source "$_root/installers/symlink.sh" \
			"$HOME/dotfiles/zsh/$_name" "$HOME/.$_name"
	done
fi

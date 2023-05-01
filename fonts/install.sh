#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Runnings fonts/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! grep -Fxq font-fira-code-nerd-font <<<"$(brew list -1)"; then
		brew tap homebrew/cask-fonts
		brew install --cask font-fira-code-nerd-font
	fi
elif [[ "$(uname -s)" =~ Linux* ]]; then
	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/fonts/Fira Code Retina Nerd Font Complete.ttf" \
		"$HOME/.local/share/fonts/Fira Code Retina Nerd Font Complete.ttf"
fi

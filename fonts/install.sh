#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for fonts..."

_root="$(git rev-parse --show-toplevel)"
case "$(uname -s)" in
Darwin*)
	_app=font-fira-code-nerd-font
	if
		! [ -x "$(command -v brew)" ] || ! grep -Fxq "$_app" <<<"$(brew list -1)"
	then
		# shellcheck source=/dev/null
		source "$_root/brew/install.sh"
		brew tap homebrew/cask-fonts
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" \
			font-fira-code-nerd-font font-fira-code-nerd-font
	fi
	;;
Linux*)
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for fonts..."
	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/fonts/Fira Code Retina Nerd Font Complete.ttf" \
		"$HOME/.local/share/fonts/Fira Code Retina Nerd Font Complete.ttf"
	;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for fonts..."

if ! [ -x "$(command -v fonts)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing fonts..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew tap homebrew/cask-fonts
		brew install --cask font-fira-code-nerd-font
		;;
	Linux*)
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for fonts..."
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
			"$HOME/dotfiles/fonts/Fira Code Retina Nerd Font Complete.ttf" \
			"$HOME/.local/share/fonts/Fira Code Retina Nerd Font Complete.ttf"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

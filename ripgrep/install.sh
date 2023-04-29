#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for ripgrep..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v rg)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing ripgrep..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install ripgrep
		;;
	Linux*) sudo apt -y install ripgrep ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for ripgrep..."
# shellcheck source=/dev/null
source "$root/installers/symlink.sh" \
	"$HOME/dotfiles/ripgrep/ripgreprc" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/ripgreprc"

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for fd..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v fd)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing fd..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install fd
		;;
	Linux*)
		sudo apt -y install fd-find
		bin_dir="$HOME/.local/bin/"
		mkdir -p "$bin_dir"
		ln -s "$(which fdfind)" "$bin_dir/fd"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for fd..."
# shellcheck source=/dev/null
source "$root/installers/symlink.sh" \
	"$HOME/dotfiles/fd/ignore" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/fd/ignore"

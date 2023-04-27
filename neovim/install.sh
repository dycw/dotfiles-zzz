#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for neovim..."

if ! [ -x "$(command -v nvim)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing neovim..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install neovim
		;;
	Linux*)
		sudo apt -y install libfuse2
		temp_dir="$(mktemp -d -t neovim-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$root/installers/download-from-github.sh" \
			"$temp_dir" neovim neovim appimage sha256sum zsync
		(
			cd "$temp_dir" || exit
			mv ./*appimage* nvim
			chmod u+x nvim
			bin_dir="$HOME/.local/bin/"
			mkdir -p "$bin_dir"
			mv nvim "$bin_dir/"
		)
		rm -rf "$temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

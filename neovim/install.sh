#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for neovim..."

if ! [ -x "$(command -v nvim)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing neovim..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" neovim neovim
		;;
	Linux*)
		sudo apt -y install libfuse2
		_temp_dir="$(mktemp -d -t neovim-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$_root/installers/download-from-github.sh" \
			"$_temp_dir" neovim neovim appimage sha256sum zsync
		(
			cd "$_temp_dir" || exit
			mv ./*appimage* nvim
			chmod u+x nvim
			_bin_dir="$HOME/.local/bin/"
			mkdir -p "$_bin_dir"
			mv nvim "$_bin_dir/"
		)
		rm -rf "$_temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

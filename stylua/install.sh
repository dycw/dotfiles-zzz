#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for stylua..."

if ! [ -x "$(command -v stylua)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing stylua..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" stylua stylua
		;;
	Linux*)
		_temp_dir="$(mktemp -d -t sd-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$_root/installers/download-from-github.sh" \
			"$_temp_dir" JohnnyMorganz StyLua linux-x86_64
		(
			cd "$_temp_dir" || exit
			unzip ./*.zip
			chmod u+x stylua
			_bin_dir="$HOME/.local/bin/"
			mkdir -p "$_bin_dir"
			mv stylua "$_bin_dir/"
		)
		rm -rf "$_temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for stylua..."
# shellcheck source=/dev/null
source "$_root/installers/symlink.sh" \
	"$HOME/dotfiles/stylua/stylua.toml" \
	"${XDG_CONFIG_HOME:-$HOME/.config}/stylua/stylua"

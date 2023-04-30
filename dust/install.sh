#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for dust..."

if ! [ -x "$(command -v dust)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing dust..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" dust dust
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$_root/installers/download-and-install-deb-from-github.sh" \
			dust bootandy dust amd64.deb
		_bin_dir="$HOME/.local/bin/"
		mkdir -p "$_bin_dir"
		ln -s "$(which du)" "$_bin_dir/dust"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

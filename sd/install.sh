#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for sd..."

if ! [ -x "$(command -v sd)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing sd..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" sd sd
		;;
	Linux*)
		_temp_dir="$(mktemp -d -t sd-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$_root/installers/download-from-github.sh" \
			"$_temp_dir" chmln sd x86_64-unknown-linux-gnu
		(
			cd "$_temp_dir" || exit
			mv ./*sd* sd
			chmod u+x sd
			_bin_dir="$HOME/.local/bin/"
			mkdir -p "$_bin_dir"
			mv sd "$_bin_dir/"
		)
		rm -rf "$_temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

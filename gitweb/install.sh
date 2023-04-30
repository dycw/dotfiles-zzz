#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for gitweb..."

if ! [ -x "$(command -v gitweb)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing gitweb..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" gitweb yoannfleurydev/gitweb/gitweb
		;;
	Linux*)
		_temp_dir="$(mktemp -d -t sd-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$_root/installers/download-from-github.sh" \
			"$_temp_dir" yoannfleurydev gitweb linux
		(
			cd "$_temp_dir" || exit
			mv ./*gitweb* gitweb
			chmod u+x gitweb
			_bin_dir="$HOME/.local/bin/"
			mkdir -p "$_bin_dir"
			mv gitweb "$_bin_dir/"
		)
		rm -rf "$_temp_dir"
		# additional error:
		# ./gitweb: error while loading shared libraries: libssl.so.1.1: cannot
		# open shared object file: No such file or directory
		# https://bit.ly/3NcMJ6x
		echo "deb http://security.ubuntu.com/ubuntu focal-security main" |
			sudo tee /etc/apt/sources.list.d/focal-security.list
		sudo apt -y update
		sudo apt -y install libssl1.1
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

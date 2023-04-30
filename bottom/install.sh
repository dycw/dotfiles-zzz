#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for bottom..."

if ! [ -x "$(command -v btm)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing bottom..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" btm bottom
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$_root/installers/download-and-install-deb-from-github.sh" \
			btm ClementTsang bottom amd64
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

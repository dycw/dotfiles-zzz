#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for bottom..."

if ! [ -x "$(command -v btm)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing bottom..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install bottom
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$root/installers/download-and-install-deb-from-github.sh" \
			btm ClementTsang bottom amd64
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

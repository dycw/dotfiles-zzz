#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for shellcheck..."

if ! [ -x "$(command -v shellcheck)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing shellcheck..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install shellcheck
		;;
	Linux*) sudo apt -y install shellcheck ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

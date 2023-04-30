#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for exa..."

if ! [ -x "$(command -v exa)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing exa..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install-package.sh" exa exa
		;;
	Linux*) sudo apt -y install exa ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

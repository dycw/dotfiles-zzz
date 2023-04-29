#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for watch..."

if ! [ -x "$(command -v watch)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing watch..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install watch
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

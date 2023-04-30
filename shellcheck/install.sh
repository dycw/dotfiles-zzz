#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for shellcheck..."

if ! [ -x "$(command -v shellcheck)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing shellcheck..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
			shellcheck shellcheck
		;;
	Linux*) sudo apt -y install shellcheck ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for multipass..."

if ! [ -x "$(command -v multipass)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing multipass..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
			--cask multipass multipass
		;;
	Linux*) sudo snap install multipass ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

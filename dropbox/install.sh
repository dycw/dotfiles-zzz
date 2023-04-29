#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for dropbox..."

if ! [ -x "$(command -v dropbox)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing dropbox..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask dropbox
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

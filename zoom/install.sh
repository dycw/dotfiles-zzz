#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for zoom..."

if ! [ -x "$(command -v zoom)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing zoom..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask zoom
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

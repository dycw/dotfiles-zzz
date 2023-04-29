#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for cyberghost..."

if ! [ -x "$(command -v cyberghost-vpn)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing cyberghost..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask cyberghost-vpn
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

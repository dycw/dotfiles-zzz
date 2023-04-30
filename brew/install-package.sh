#!/usr/bin/env bash

unset _is_cask
while [[ "$#" -ge 1 ]]; do
	case "$1" in
	--cask)
		_is_cask=1
		shift
		;;
	*) break ;;
	esac
done

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for $1..."

case "$(uname -s)" in
Darwin*)
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq "$1" <<<"$(brew list -1)"; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing $1..."
		if [ -n "$_is_cask" ]; then
			brew install --cask "$2"
		else
			brew install "$2"
		fi
	fi
	;;
Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

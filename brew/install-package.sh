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

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for $1..."
if ! grep -Fxq "$2" <<<"$(brew list -1)"; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing $2..."
	if [ -n "$_is_cask" ]; then
		brew install --cask "$2"
	else
		brew install "$2"
	fi
fi

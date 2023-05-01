#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for hyperfine..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v hyperfine)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing hyperfine..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" hyperfine hyperfine
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): NOT IMPLEMENTED YET..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for delta..."

if ! [ -x "$(command -v delta)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing delta..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install git-delta
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$root/installers/download-and-install-deb-from-github.sh" \
			delta dandavison delta amd64.deb musl
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
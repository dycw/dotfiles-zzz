#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for github-cli..."

if ! [ -x "$(command -v gh)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing github-cli..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install gh
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$root/installers/download-and-install-deb-from-github.sh" \
			gh cli cli linux_amd64.deb
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
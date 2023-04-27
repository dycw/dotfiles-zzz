#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for watchexec..."

if ! [ -x "$(command -v watchexec)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing watchexec..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install watchexec
		;;
	Linux*)
		# docs indicate there is an `apt` command, but it does not work
		# shellcheck source=/dev/null
		source "$root/installers/download-and-install-deb-from-github.sh" \
			watchexec watchexec watchexec x86_64-unknown-linux.gnu.deb \
			.b3 .sha256 .sha512
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

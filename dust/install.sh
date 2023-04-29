#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for dust..."

if ! [ -x "$(command -v btm)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing dust..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install dust
		;;
	Linux*)
		# shellcheck source=/dev/null
		source "$root/installers/download-and-install-deb-from-github.sh" \
			dust bootandy dust amd64.deb
		bin_dir="$HOME/.local/bin/"
		mkdir -p "$bin_dir"
		ln -s "$(which du)" "$bin_dir/dust"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

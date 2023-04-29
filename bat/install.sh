#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for bat..."

if ! [ -x "$(command -v bat)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing bat..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install bat
		;;
	Linux*)
		sudo apt -y install bat
		bin_dir="$HOME/.local/bin/"
		mkdir -p "$bin_dir"
		ln -s "$(which batcat)" "$bin_dir/bat"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

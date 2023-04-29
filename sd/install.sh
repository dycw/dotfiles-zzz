#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for sd..."

if ! [ -x "$(command -v sd)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing sd..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install sd
		;;
	Linux*)
		temp_dir="$(mktemp -d -t sd-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$root/installers/download-from-github.sh" \
			"$temp_dir" chmln sd x86_64-unknown-linux-gnu
		(
			cd "$temp_dir" || exit
			mv ./*sd* sd
			chmod u+x sd
			bin_dir="$HOME/.local/bin/"
			mkdir -p "$bin_dir"
			mv sd "$bin_dir/"
		)
		rm -rf "$temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for shfmt..."

if ! [ -x "$(command -v shfmt)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing shfmt..."
	root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install shfmt
		;;
	Linux*)
		temp_dir="$(mktemp -d -t shfmt-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$root/installers/download-from-github.sh" \
			"$temp_dir" mvdan sh linux_386
		(
			cd "$temp_dir" || exit
			mv ./*linux_386* shfmt
			chmod u+x shfmt
			bin_dir="$HOME/.local/bin/"
			mkdir -p "$bin_dir"
			mv shfmt "$bin_dir/"
		)
		rm -rf "$temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

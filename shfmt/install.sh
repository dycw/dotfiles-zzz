#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for shfmt..."

if ! [ -x "$(command -v shfmt)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing shfmt..."
	_root="$(git rev-parse --show-toplevel)"
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" shfmt shfmt
		;;
	Linux*)
		_temp_dir="$(mktemp -d -t shfmt-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		# shellcheck source=/dev/null
		source "$_root/installers/download-from-github.sh" \
			"$_temp_dir" mvdan sh linux_386
		(
			cd "$_temp_dir" || exit
			mv ./*linux_386* shfmt
			chmod u+x shfmt
			_bin_dir="$HOME/.local/bin/"
			mkdir -p "$_bin_dir"
			mv shfmt "$_bin_dir/"
		)
		rm -rf "$_temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

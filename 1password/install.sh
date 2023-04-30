#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for 1password..."

_root="$(git rev-parse --show-toplevel)"
case "$(uname -s)" in
Darwin*)
	# shellcheck source=/dev/null
	source "$_root/brew/install-package.sh" --cask 1password 1password
	;;
Linux*)
	if ! [ -x "$(command -v 1password)" ]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 1password..."
		_temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		(
			cd "$_temp_dir" || exit
			wget \
				https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
			sudo dpkg -i ./*.deb
		)
		rm -rf "$_temp_dir"
	fi
	;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for 1password CLI..."

if ! [ -x "$(command -v op)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 1password CLI..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" \
			--cask 1password-cli 1password/tap/1password-cli
		;;
	Linux*)
		_temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		(
			cd "$_temp_dir" || exit
			wget \
				https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
			sudo dpkg -i ./*.deb
		)
		rm -rf "$_temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

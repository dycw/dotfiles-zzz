#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for 1password..."

if ! [ -x "$(command -v 1password)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 1password..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask 1password
		;;
	Linux*)
		temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		(
			cd "$temp_dir" || exit
			wget \
				https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
			sudo dpkg -i ./*.deb
		)
		rm -rf "$temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for 1password CLI..."

if ! [ -x "$(command -v op)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 1password CLI..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$(git rev-parse --show-toplevel)/brew/install.sh"
		brew install --cask 1password/tap/1password-cli
		;;
	Linux*)
		temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		(
			cd "$temp_dir" || exit
			wget \
				https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
			sudo dpkg -i ./*.deb
		)
		rm -rf "$temp_dir"
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi
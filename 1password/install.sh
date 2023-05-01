#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running 1password/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	if ! grep -Fxq 1password <<<"$(brew list -1)"; then
		brew install --cask 1password
	fi
elif
	[[ "$(uname -s)" =~ Linux* ]] &&
		! grep -Fq 1password/stable <<<"$(apt list --installed)"
then
	_temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
	(
		cd "$_temp_dir" || exit
		wget \
			https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb
		sudo dpkg -i ./*.deb
	)
	rm -rf "$_temp_dir"
fi

if ! [ -x "$(command -v op)" ]; then
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		# shellcheck source=/dev/null
		source "$_root/brew/install.sh"
		brew install --cask 1password/tap/1password-cli
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		_temp_dir="$(mktemp -d -t 1password-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
		(
			cd "$_temp_dir" || exit
			wget \
				https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
			sudo dpkg -i ./*.deb
		)
		rm -rf "$_temp_dir"
	fi
fi

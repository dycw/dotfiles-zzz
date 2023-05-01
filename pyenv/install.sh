#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pyenv/install.sh..."

if ! [ -x "$(command -v pyenv)" ]; then
	_root="$(git rev-parse --show-toplevel)"
	# shellcheck source=/dev/null
	source "$_root/curl/install.sh"
	curl https://pyenv.run | bash
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		code-select --install
		# shellcheck source=/dev/null
		source "$_root/brew/install.sh"
		brew install openssl readline sqlite3 tcl-tk xz zlib
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		sudo apt -y install build-essential curl libbz2-dev libffi-dev \
			liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev \
			libxml2-dev libxmlsec1-dev tk-dev xz-utils zlib1g-dev
	fi
	for _name in env config; do
		# shellcheck source=/dev/null
		source "$_root/pyenv/$_name.sh"
	done
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running gitweb/install.sh..."

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
brew install yoannfleurydev/gitweb/gitweb

if [[ "$(uname -s)" =~ Linux* ]]; then
	# ./gitweb: error while loading shared libraries: libssl.so.1.1: cannot
	# open shared object file: No such file or directory
	# https://bit.ly/3NcMJ6x
	echo "deb http://security.ubuntu.com/ubuntu focal-security main" |
		sudo tee /etc/apt/sources.list.d/focal-security.list
	sudo apt -y update
	sudo apt -y install libssl1.1
fi

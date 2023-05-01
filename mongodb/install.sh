#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running mongodb/install.sh..."

if
	[[ "$(uname -s)" =~ Darwin* ]] && ! [ -x "$(command -v mongod)" ]
then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	xcode-select --install
	brew tap mongodb/brew
	brew install mongodb-community
	brew services start mongodb-community
fi

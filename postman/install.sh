#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running postman/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq postman <<<"$(brew list -1)"; then
		brew install --cask postman
	fi
fi

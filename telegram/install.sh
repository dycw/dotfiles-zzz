#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running telegram/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq telegram <<<"$(brew list -1)"; then
		brew install --cask telegram
	fi
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running postgres/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq postgresql@15 <<<"$(brew list -1)"; then
		brew install postgresql@15
		brew services start postgresql@15
	fi
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running signal/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq signal <<<"$(brew list -1)"; then
		brew install --cask signal
	fi
fi

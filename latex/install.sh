#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running mactex/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq mactex <<<"$(brew list -1)"; then
		brew install --cask mactex
	fi
fi
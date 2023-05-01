#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running iterm2/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq iterm2 <<<"$(brew list -1)"; then
		brew install --cask iterm2
	fi
fi

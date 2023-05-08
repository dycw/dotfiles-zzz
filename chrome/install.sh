#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running chrome/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq google-chrome <<<"$(brew list -1)"; then
		brew install --cask google-chrome
	fi
fi

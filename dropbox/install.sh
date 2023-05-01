#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running dropbox/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install --cask dropbox
fi

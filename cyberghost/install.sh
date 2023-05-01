#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running cyberghost/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq cyberghost-vpn <<<"$(brew list -1)"; then
		brew install --cask cyberghost-vpn
	fi
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running pygobject3/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq pygobject3 <<<"$(brew list -1)"; then
		brew install pygobject3
	fi
	if ! grep -Fxq gtk4 <<<"$(brew list -1)"; then
		brew install gtk4
	fi
fi

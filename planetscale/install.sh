#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running planetscale/install.sh..."

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq pscale <<<"$(brew list -1)"; then
		brew install planetscale/tap/pscale
	fi
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running net-tools/install.sh..."

if [[ "$(uname -s)" =~ Linux* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq net-stat <<<"$(brew list -1)"; then
		brew install net-stat
	fi
fi

#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
		cyberghost-vpn cyberghost-vpn
fi

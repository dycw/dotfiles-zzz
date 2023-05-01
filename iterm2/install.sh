#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install-package.sh" \
		--cask iterm2 iterm2
fi

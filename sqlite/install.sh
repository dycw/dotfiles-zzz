#!/usr/bin/env bash

if [[ "$(uname -s)" =~ Darwin* ]]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	if ! grep -Fxq db-browser-for-sqlite <<<"$(brew list -1)"; then
		brew install --cask db-browser-for-sqlite
	fi
fi

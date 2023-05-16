#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running netlify/install.sh..."

if ! [ -x "$(command -v netlify)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/npm/install.sh"
	npm install -g netlify-cli
fi

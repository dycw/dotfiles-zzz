#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running typescript/install.sh..."

if ! [ -x "$(command -v tsc)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/npm/install.sh"
	npm install -g prettier-plugin-toml
fi

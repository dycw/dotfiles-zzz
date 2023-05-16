#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running wget/install.sh..."

if ! [ -x "$(command -v wget)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install wget
fi

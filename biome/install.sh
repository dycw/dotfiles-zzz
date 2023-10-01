#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running biome/install.sh..."

if ! [ -x "$(command -v biome)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install biome
fi

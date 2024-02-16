#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running uv/install.sh..."

if ! [ -x "$(command -v uv)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	curl -LsSf https://astral.sh/uv/install.sh | sh
fi

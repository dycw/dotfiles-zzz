#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running imagemagick/install.sh..."

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
if ! grep -Fxq imagemagick <<<"$(brew list -1)"; then
	brew install imagemagick
fi

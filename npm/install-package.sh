#!/usr/bin/env bash

app="$1"
echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for $app..."

if ! [ -x "$(command -v "$app")" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing $app..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/npm/install.sh"
	npm install -g "$app"
fi

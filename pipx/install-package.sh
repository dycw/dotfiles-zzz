#!/usr/bin/env bash

_app="$1"
echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for $_app..."

if ! [ -x "$(command -v "$_app")" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing $_app..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/pipx/install.sh"
	pipx install "$_app"
fi

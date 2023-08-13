#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running speedtest/install.sh..."

if ! [ -x "$(command -v speedtest)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install speedtest-cli
fi

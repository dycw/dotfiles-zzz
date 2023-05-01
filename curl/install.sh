#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for curl..."

if ! [ -x "$(command -v curl)" ] && [[ "$(uname -s)" =~ Linux* ]]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing curl..."
	sudo apt -y install curl
fi

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install-package.sh" curl curl

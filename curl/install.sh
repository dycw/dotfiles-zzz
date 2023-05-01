#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running curl/install.sh..."

if [[ "$(uname -s)" =~ Linux* ]]; then
	sudo apt -y install curl
fi

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
brew install curl

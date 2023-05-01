#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running curl/install.sh..."

if [[ "$(uname -s)" =~ Linux* ]] && ! [ -x "$(command -v curl)" ]; then
	sudo apt -y install curl
fi

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
if ! grep -Fxq curl <<<"$(brew list -1)"; then
	brew install curl
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for nvm..."

export XDG_CONFIG_HOME="$HOME/.config"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
if ! [ -d "$NVM_DIR" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): installing nvm..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh |
		bash
	# shellcheck source=/dev/null
	source "$NVM_DIR/nvm.sh"
fi

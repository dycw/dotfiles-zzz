#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for rust..."

if ! [ -x "$(command -v cargo)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing rust..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs |
		sh -s -- -y --no-modify-path
	# shellcheck source=/dev/null
	source "$HOME/.cargo/env"
fi

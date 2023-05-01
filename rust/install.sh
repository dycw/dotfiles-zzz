#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running rust/install.sh..."

if ! [ -x "$(command -v cargo)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install rust
	cargo install cargo-update
fi

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running rust/install.sh..."

if ! [ -x "$(command -v cargo)" ]; then
	_root="$(git rev-parse --show-toplevel)"
	# shellcheck source=/dev/null
	source "$_root/curl/install.sh"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs |
		sh -s -- -y --no-modify-path
	# shellcheck source=/dev/null
	source "$_root/rust/env.sh"
fi

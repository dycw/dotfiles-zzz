#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running deno/install.sh..."

if ! [ -x "$(command -v deno)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install deno

	if [ -n "${BASH_VERSION+x}" ]; then
		deno completions bash >/usr/local/etc/bash_completion.d/deno.bash
	elif [ -n "${ZSH_VERSION+x}" ]; then
		_path="$HOME/.zsh/_deno"
		mkdir -p "$(dirname "$_path")"
		deno completions zsh >"$_path"
	fi
fi

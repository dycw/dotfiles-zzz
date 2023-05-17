#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running prettier/install.sh..."

if ! [ -x "$(command -v prettier)" ]; then
	_root="$(git rev-parse --show-toplevel)"

	# shellcheck source=/dev/null
	source "$_root/brew/install.sh"
	brew install prettier

	# shellcheck source=/dev/null
	source "$_root/npm/install.sh"
	npm install -g prettier-plugin-organize-imports
	npm install -g prettier-plugin-toml
fi

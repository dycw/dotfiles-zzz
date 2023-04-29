#!/usr/bin/env bash

for app in prettier prettier-plugin-toml; do
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/npm/install-package.sh" "$app"
done

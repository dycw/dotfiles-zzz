#!/usr/bin/env bash

for version in 3.9 3.10 3.11; do
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/python/install-version.sh" "$version"
done

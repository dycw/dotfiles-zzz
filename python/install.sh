#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running python/install.sh..."

for _ver in 3.10 3.11 3.12; do
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/python/install-version.sh" "$_ver"
done

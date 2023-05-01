#!/usr/bin/env bash

_root="$(git rev-parse --show-toplevel)"
while IFS= read -r -d '' _file; do
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Running $_file..."
	# shellcheck source=/dev/null
	source "$_file"
done < <(find "$_root" -type f -name install.sh -print0)

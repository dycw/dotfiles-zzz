#!/usr/bin/env bash

root="$(git rev-parse --show-toplevel)"
for name in install install-mac; do
	while IFS= read -r -d '' path; do
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Running $path..."
		# shellcheck source=/dev/null
		source "$path"
	done < <(
		cd "$root" || exit
		find . -type f -name "$name\.sh" ! -path "./install/components/dotbot/*" -print0
	)
done

#!/usr/bin/env bash

app="$1"
echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for $app..."

if ! [ -x "$(command -v "$app")" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing $app..."
	temp_dir="$(mktemp -d -t "$app"-"$(date +%Y%m%d-%H%M%S)"-XXXXXXXX)"
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/download-from-github.sh" \
		"$temp_dir" "${@:2}"
	(
		cd "$temp_dir" || exit
		sudo dpkg -i ./*.deb
	)
	rm -rf "$temp_dir"
fi

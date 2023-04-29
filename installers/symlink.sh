#!/usr/bin/env bash

target="$1"
link_name="$2"
echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking symlink $link_name..."
if [ -f "$link_name" ] && ! [ -L "$link_name" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Existing file instead of symlink: $link_name"
elif [ -d "$link_name" ] && ! [ -L "$link_name" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Existing directory instead of symlink: $link_name"
elif [ -L "$link_name" ]; then
	resolved="$(readlink -f "$link_name")"
	if [ "$resolved" != "$target" ]; then
		printf "$(date '+%Y-%m-%d %H:%M:%S'): Re-directing symlink...\nfrom: %s -> %s...\n  to: %s -> %s\n" \
			"$link_name" "$resolved" "$link_name" "$target"
		unlink "$link_name"
		mkdir -p "$(dirname "$link_name")"
		ln -s "$target" "$link_name"
	fi
else
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Creating symlink $link_name -> $target..."
	mkdir -p "$(dirname "$link_name")"
	ln -s "$target" "$link_name"
fi

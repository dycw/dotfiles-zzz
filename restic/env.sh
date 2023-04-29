#!/usr/bin/env bash

for _root in "$HOME" /data/derek; do
	_dir="$_root/restic"
	if [ -d "$_dir" ]; then
		export RESTIC_REPOSITORY="$_dir"
	fi
done

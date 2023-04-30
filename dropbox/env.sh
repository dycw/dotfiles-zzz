#!/usr/bin/env bash

case "$(uname -s)" in
Darwin*)
	_dir="$HOME/Dropbox"
	if [ -d "$_dir" ]; then
		export PATH_DROPBOX="$_dir"
	fi
	;;
Linux*) ;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

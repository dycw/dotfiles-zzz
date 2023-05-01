#!/usr/bin/env bash

case "$(uname -s)" in
Darwin*)
	_bin=/opt/homebrew/bin
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
	;;
Linux*)
	_bin=/home/linuxbrew/.linuxbrew/bin
	if [ -d "$_bin" ]; then
		export PATH="$_bin${PATH:+:$PATH}"
	fi
	;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

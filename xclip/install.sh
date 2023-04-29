#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for xclip..."

if ! [ -x "$(command -v xclip)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing xclip..."
	case "$(uname -s)" in
	Darwin*) ;;
	Linux*) sudo apt -y install xclip ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

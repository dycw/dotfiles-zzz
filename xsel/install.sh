#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for xsel..."

if ! [ -x "$(command -v xsel)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing xsel..."
	case "$(uname -s)" in
	Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
	Linux*) sudo apt -y install xsel ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

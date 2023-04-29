#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for ruby..."

if ! [ -x "$(command -v ruby)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing ruby..."
	case "$(uname -s)" in
	Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
	Linux*) sudo apt -y install ruby-dev ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

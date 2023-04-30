#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for curl..."

if ! [ -x "$(command -v curl)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing curl..."
	case "$(uname -s)" in
	Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
	Linux*) sudo apt -y install curl ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

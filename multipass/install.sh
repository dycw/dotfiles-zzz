#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for multipass..."

if ! [ -x "$(command -v multipass)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing multipass..."
	case "$(uname -s)" in
	Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
	Linux*) sudo snap install multipass ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

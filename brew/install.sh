#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for brew..."

if ! [ -x "$(command -v brew)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing bat..."
	case "$(uname -s)" in
	Darwin*)
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing brew..."
		url=https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
		sudo curl -sSf "$url" | bash
		eval "$(/opt/homebrew/bin/brew shellenv)"
		brew install gcc
		;;
	Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

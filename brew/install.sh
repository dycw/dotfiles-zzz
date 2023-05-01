#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for brew..."

if ! [ -x "$(command -v brew)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing brew..."
	sudo curl -sSf https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh |
		bash
	case "$(uname -s)" in
	Darwin*) eval "$(/opt/homebrew/bin/brew shellenv)" ;;
	Linux*)
		eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
		sudo apt -y install build-essential
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
	brew install gcc
fi

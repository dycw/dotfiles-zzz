#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running brew/install.sh..."

if ! [ -x "$(command -v brew)" ]; then
	sudo curl -sSf https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh |
		bash
	if [[ "$(uname -s)" =~ Darwin* ]]; then
		eval "$(/opt/homebrew/bin/brew shellenv)"
	elif [[ "$(uname -s)" =~ Linux* ]]; then
		eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
		sudo apt -y install build-essential
	fi
	brew install gcc
fi

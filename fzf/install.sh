#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for fzf..."

if ! [ -x "$(command -v fzf)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing fzf..."
	root="$HOME/.fzf"
	git clone --depth 1 https://github.com/junegunn/fzf.git "$root"
	"$root/install" --xdg --key-bindings --completion --no-update-rc --no-fish
fi

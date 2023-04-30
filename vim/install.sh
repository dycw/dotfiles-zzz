#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for vim..."

if ! [ -x "$(command -v vim)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing vim..."
	case "$(uname -s)" in
	Darwin*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Mac..." ;;
	Linux*) sudo apt -y install vim ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for vim..."
items=(
	vim-sensible:pack/tpope/start/sensible
	vimrc:vimrc
)
for item in "${items[@]}"; do
	key="$(echo "$item" | cut -d ':' -f 1)"
	value="$(echo "$item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/vim/$key" \
		"$HOME/.vim/$value"
done

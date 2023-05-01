#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running vim/install.sh..."

if
	[[ "$(uname -s)" =~ Linux* ]] && ! [ -x "$(command -v vim)" ]
then
	sudo apt -y install vim
fi

# symlinks
_items=(
	vim-sensible:pack/tpope/start/sensible
	vimrc:vimrc
)
for _item in "${_items[@]}"; do
	_key="$(echo "$_item" | cut -d ':' -f 1)"
	_value="$(echo "$_item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/installers/symlink.sh" \
		"$HOME/dotfiles/vim/$_key" \
		"$HOME/.vim/$_value"
done

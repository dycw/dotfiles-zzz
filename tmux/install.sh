#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running tmux/install.sh..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v tmux)" ]; then
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/brew/install.sh"
	brew install tmux
fi

# symlinks
_items=(
	oh-my-tmux/.tmux.conf:tmux.conf
	tmux.conf.local:tmux.conf.local
)
for _item in "${_items[@]}"; do
	_key="$(echo "$_item" | cut -d ':' -f 1)"
	_value="$(echo "$_item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$_root/installers/symlink.sh" \
		"$HOME/dotfiles/tmux/$_key" \
		"${XDG_CONFIG_HOME:-$HOME/.config}/tmux/$_value"
done

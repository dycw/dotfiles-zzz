#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for tmux..."

_root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v tmux)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing tmux..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$_root/brew/install-package.sh" tmux tmux
		;;
	Linux*) sudo apt -y install tmux ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for tmux..."
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

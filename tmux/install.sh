#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for tmux..."

root="$(git rev-parse --show-toplevel)"
if ! [ -x "$(command -v tmux)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing tmux..."
	case "$(uname -s)" in
	Darwin*)
		# shellcheck source=/dev/null
		source "$root/brew/install.sh"
		brew install tmux
		;;
	Linux*) sudo apt -y install tmux ;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
	esac
fi

echo "$(date '+%Y-%m-%d %H:%M:%S'): Symlinking for tmux..."
items=(
	oh-my-tmux/.tmux.conf:tmux.conf
	tmux.conf.local:tmux.conf.local
)
for item in "${items[@]}"; do
	key="$(echo "$item" | cut -d ':' -f 1)"
	value="$(echo "$item" | cut -d ':' -f 2)"
	# shellcheck source=/dev/null
	source "$root/installers/symlink.sh" \
		"$HOME/dotfiles/tmux/$key" \
		"${XDG_CONFIG_HOME:-$HOME/.config}/tmux/$value"
done

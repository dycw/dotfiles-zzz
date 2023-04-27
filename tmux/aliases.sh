#!/usr/bin/env bash

if [ -x "$(command -v tmux)" ]; then
	alias tmuxconf='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf.local"'
fi

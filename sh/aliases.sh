#!/usr/bin/env bash

# aliases
expand-alias() {
	eval "set -- $(alias -- "$1")"
	eval 'printf "%s\n" "${'"$#"'#*=}"'
}

# cd
alias ~='cd "$HOME"'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cdcache='cd "${XDG_CACHE_HOME:-$HOME/.cache}"'
alias cdconfig='cd "${XDG_CONFIG_HOME:-$HOME/.config}"'
alias cddf='cd "${PATH_DOTFILES:-$HOME/dotfiles}"'
alias cddl='cd $HOME/Downloads'
alias cddt='cd $HOME/Desktop'
alias cdp='cd $HOME/Pictures'
alias cdw='cd $HOME/work'

# chmod
chmod_files() {
	find . -type f -exec chmod "$1" {} \;
}
chmod_dirs() {
	find . -type d -exec chmod "$1" {} \;
}
chown_files() {
	find . -type f -exec chown "$1" {} \;
}
chown_dirs() {
	find . -type d -exec chown "$1" {} \;
}

# clear
alias cl='clear'

# path
alias echo-path='sed '"'"'s/:/\n/g'"'"' <<< "$PATH"'

# ps
alias pst='ps -fLu "$USER"| wc -l'
if [ "$(command -v watch)" ]; then
	alias wpst='watch -d -n0.1 "ps -fLu \"$USER\" | wc -l"'
fi

# ssh
alias ssh-mac='ssh derek@dw-mac.duckdns.org -p 2023'
alias ssh-mac-tmux='ssh derek@dw-mac.duckdns.org -p 2023 -t tmux attach'
alias ssh-pc='ssh derek@dw-pc.duckdns.org -p 2022'
alias ssh-pc-tmux='ssh derek@dw-pc.duckdns.org -p 2022 -t tmux attach'

# rm
alias rmr='rm -r'
alias rmf='rm -f'
alias rmrf='rm -rf'

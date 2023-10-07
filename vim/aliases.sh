#!/usr/bin/env bash

if [ -x "$(command -v vim)" ] && ! [ -x "$(command -v nvim)" ]; then
	alias n='vim'
	alias vimrc='$EDITOR "$HOME/vim/vimrc"'
fi

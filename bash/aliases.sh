#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = bash ]; then
	alias bash-profile='$EDITOR "$HOME/.bash_profile"'
	alias bashrc='$EDITOR "$HOME/.bashrc"'
fi

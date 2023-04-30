#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = zsh ]; then
	alias zshrc='$EDITOR "$HOME/.zshrc"'
fi

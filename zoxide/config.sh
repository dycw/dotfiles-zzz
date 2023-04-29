#!/usr/bin/env bash

if [ -x "$(command -v zoxide)" ] && [ -x "$(command -v fzf)" ]; then
	eval "$(zoxide init "$(bash-or-zsh)" --cmd j --hook prompt)"
fi

#!/usr/bin/env bash

if [ -x "$(command -v direnv)" ]; then
	eval "$(direnv hook "$(bash-or-zsh)")"
fi

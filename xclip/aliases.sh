#!/usr/bin/env bash

if [ -x "$(command -v xclip)" ]; then
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'
fi

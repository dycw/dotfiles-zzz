#!/usr/bin/env bash

_bin="$HOME/.cargo/bin"
if [ -d "$_bin" ]; then
	export PATH="$_bin${PATH:+:$PATH}"
fi

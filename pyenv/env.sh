#!/usr/bin/env bash

export PYENV_ROOT="$HOME/.pyenv"
_bin="$PYENV_ROOT/bin"
if [ -d "$_bin" ]; then
	export PATH="$_bin${PATH:+:$PATH}"
fi

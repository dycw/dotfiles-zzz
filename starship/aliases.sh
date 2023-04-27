#!/usr/bin/env bash

if [ -x "$(command -v starship)" ]; then
	alias starshiptoml='$EDITOR "${XDG_CONFIG_HOME:-$HOME/.config}/starship.toml"'
fi

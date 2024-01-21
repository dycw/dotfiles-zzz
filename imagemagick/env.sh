#!/usr/bin/env bash

_dir=/opt/local/
if [ -d "$_dir" ]; then
	export MAGICK_HOME="$_dir"
fi

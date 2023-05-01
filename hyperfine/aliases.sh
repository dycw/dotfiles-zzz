#!/usr/bin/env bash

if [ -x "$(command -v hyperfine)" ]; then
	alias time='hyperfine'
fi

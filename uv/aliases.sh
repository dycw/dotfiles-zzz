#!/usr/bin/env bash

if [ -x "$(command -v uv)" ]; then
	alias uvps='uv pip sync --strict requirements.txt'
fi

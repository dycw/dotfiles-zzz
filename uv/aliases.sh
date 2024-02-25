#!/usr/bin/env bash

if [ -x "$(command -v uv)" ]; then
	alias uvpi='uv pip install'
	alias uvpie='uv pip install --editable .'
	alias uvps='uv pip sync --strict requirements.txt'
fi

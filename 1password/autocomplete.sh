#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	# shellcheck source=/dev/null
	source <(op completion bash)
fi

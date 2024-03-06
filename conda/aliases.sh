#!/usr/bin/env bash

function conda-a() {
	env_name="$(grep '^name:' environment.yml | awk '{print $2}')"
	if [ -n "$env_name" ]; then
		eval "$(conda shell.bash hook)"
		conda activate "$env_name"
	fi
}

alias conda-d='conda deactivate'

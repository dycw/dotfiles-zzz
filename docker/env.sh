#!/usr/bin/env bash

if [ -x "$(command -v docker)" ]; then
	export DOCKER_BUILDKIT=1
fi

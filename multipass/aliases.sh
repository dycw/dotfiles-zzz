#!/usr/bin/env bash

if [ -x "$(command -v multipass)" ]; then
	alias mpl='multipass list'
	alias mplaunch='multipass launch -c 4 -m 4G -d 25G'
	alias mps='multipass shell'
fi

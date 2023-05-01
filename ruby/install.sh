#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running ruby/install.sh..."

if [[ "$(uname -s)" =~ Linux* ]] && ! [ -x "$(command -v ruby)" ]; then
	sudo apt -y install ruby-dev
fi

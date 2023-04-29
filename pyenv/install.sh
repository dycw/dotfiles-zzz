#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Checking for pyenv..."

if ! [ -x "$(command -v pyenv)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing pyenv..."
	# shellcheck source=/dev/null
	source "$(git rev-parse --show-toplevel)/curl/install.sh"
	curl https://pyenv.run | bash
	case "$(uname -s)" in
	Darwin*)
		code-select --install
		brew install openssl readline sqlite3 tcl-tk xz zlib
		;;
	Linux*)
		sudo apt -y install build-essential curl libbz2-dev libffi-dev \
			liblzma-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev \
			libxml2-dev libxmlsec1-dev tk-dev xz-utils zlib1g-dev
		;;
	*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname)..." ;;
	esac
	export PYENV_ROOT="$HOME/.pyenv"
	export PATH="$PYENV_ROOT/bin:${PATH:+:$PATH}"
	eval "$(pyenv init -)"
fi

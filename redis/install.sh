#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running redis/install.sh..."

# folders
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/redis"

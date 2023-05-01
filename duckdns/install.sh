#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running duckdns/install.sh..."

# folders
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/duckdns"

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Folders for duckdns..."
mkdir -p "${XDG_CACHE_HOME:-$HOME/.cache}/redis"

#!/usr/bin/env bash

case "$(uname -s)" in
Darwin*) eval "$(/opt/homebrew/bin/brew shellenv)" ;;
Linux*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping for Linux..." ;;
*) echo "$(date '+%Y-%m-%d %H:%M:%S'): Invalid OS: $(uname -s)..." ;;
esac

#!/usr/bin/env bash

echo "$(date '+%Y-%m-%d %H:%M:%S'): Running delta/install.sh..."

# shellcheck source=/dev/null
source "$(git rev-parse --show-toplevel)/brew/install.sh"
brew install git-delta

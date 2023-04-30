#!/usr/bin/env bash

if [ -x "$(command -v gh)" ]; then
	alias ghc='gh pr create'
	alias ghm='gh pr merge --auto'
	alias ghcm='gh pr create && gh pr merge --auto'
fi

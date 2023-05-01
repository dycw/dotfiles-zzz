#!/usr/bin/env bash

if [ -n "${BASH_VERSION+x}" ]; then
	shopt -s autocd
	shopt -s cdspell
	shopt -s checkjobs
	shopt -s checkwinsize
	shopt -s direxpand
	shopt -s dotglob
	shopt -s extglob
	shopt -s globstar
	shopt -s histappend
	shopt -s nocaseglob
	shopt -s nocasematch
	shopt -s shift_verbose
	shopt -s xpg_echo

	if [ -x "$(command -v brew)" ]; then
		_dir="$(brew --prefix)/etc/bash_completion"
		if [ -f "$_dir" ]; then
			# shellcheck source=/dev/null
			source "$_dir"
		fi
	fi
fi

#!/usr/bin/env bash

if [ "$(bash-or-zsh)" = bash ]; then
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
fi

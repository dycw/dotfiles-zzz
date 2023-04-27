#!/usr/bin/env bash

if [ -x "$(command -v pre-commit)" ]; then
	alias pcr='pre-commit run'
	alias pca='pre-commit run -a'
	alias pcrav='pre-commit run -av'
	alias pci='pre-commit install'
	alias pcau='pre-commit autoupdate'
	alias pcaua='pre-commit autoupdate && pre-commit run -a'
	alias pctr='pre-commit try-repo'
	alias pctra='pre-commit try-repo -a'
	alias pctrav='pre-commit try-repo -av'
	alias pcui='pre-commit uninstall'
fi

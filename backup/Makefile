.ONESHELL:
SHELL=/bin/bash
.PHONY: empty-env
empty-env:
	deactivate || true
	rm -rf .venv/
	PYENV_VERSION=3.9.16 $$HOME/.pyenv/shims/python -m venv --clear .venv
	unlink activate || true
	ln -s .venv/bin/activate

.ONESHELL:
SHELL=/bin/bash
.PHONY: dev-env
dev-env:
	make empty-env
	make sync
	source activate
	$$HOME/.pyenv/shims/pip install pre-commit
	pre-commit install

.ONESHELL:
SHELL=/bin/bash
.PHONY: prod-env
prod-env:
	make empty-env
	$$HOME/.pyenv/shims/pip install package

.ONESHELL:
SHELL=/bin/bash
.PHONY: sync
sync:
	PIP=$$HOME/.pyenv/shims/pip
	source activate
	$$PIP install pip-tools
	pip-sync
	$$PIP install -e .

.ONESHELL:
SHELL=/bin/bash
.PHONY: post-merge
post-merge:
	git checkout master
	git pull
	git clean -d . -e .venv -fx
	git reset --hard origin/master
	git tag -f "$(hatch version)"
	git push origin --force --tags
	hatch build -c -t wheel
	hatch publish -r repo

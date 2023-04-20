#!/usr/bin/env bash

# SSH key
if ! [ -f "$HOME/.ssh/id_rsa.pub" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Generating SSH key..."
	echo 'Generating SSH key...'
	ssh-keygen -q -t rsa -N '' <<<$'\ny' >/dev/null 2>&1 # https://stackoverflow.com/a/43235320
	sudo apt install -y xclip
	xclip -sel clipboard <"$HOME/.ssh/id_rsa.pub"
	xdg-open https://github.com/settings/ssh/new
	read -p "Press 'y' to continue... " -n 1 -r
	echo
	if ! [[ "$REPLY" =~ ^[Yy]$ ]]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Exiting..."
		exit 0
	fi
fi

# clone dotfiles
if ! [ -d "$HOME/dotfiles" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Cloning dotfiles..."
	sudo apt install -y git
	url=git@github.com:dycw/dotfiles.git
	git clone --depth=1 --recurse-submodules "$url" "$HOME/dotfiles"
fi

# create symlinks
cd "$HOME/dotfiles" || exit
./run-dotbot

# apt
echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 'apt' packages..."
sudo apt install -y \
	gparted \
	nautilus-dropbox \
	openssh-server \
	pdfarranger \
	sqlitebrowser \
	virtualbox

# brew
if ! [ -x "$(command -v brew)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 'brew'..."
	sudo apt install -y curl
	url=https://raw.githubusercontent.com/Homebrew/install/master/install.sh
	sudo curl -sSf "$url" | bash
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	sudo apt install -y build-essential
	brew install gcc
fi

# brew packages
echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 'brew' packages..."
brew install \
	bat \
	black \
	bottom \
	cookiecutter \
	direnv \
	dust \
	eth-p/software/bat-extras \
	exa \
	fd \
	ffmpeg \
	fzf \
	git-delta \
	htop \
	just \
	luacheck \
	neovim \
	pipx \
	pre-commit \
	prettier \
	pyenv \
	pyright \
	restic \
	ripgrep \
	ruff \
	shellcheck \
	shfmt \
	starship \
	stylua \
	tmux \
	topgrade \
	tree \
	watchexec \
	yoannfleurydev/gitweb/gitweb \
	zoxide

# dynu
if
	[ "$HOSTANME" == 'DW-PC' ] && ! [ -f '/etc/dynuiuc/dynuiuc.conf' ]
then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Configuring 'dynu'..."
	url='https://www.dynu.com/support/downloadfile/31'
	file="$(mktemp)"
	wget "$URL" -qO "$file" && sudo dpkg -i "$file"
	rm "$file"
fi

# fzf (after brew)
echo "$(date '+%Y-%m-%d %H:%M:%S'): Configuring 'fzf'..."
/home/linuxbrew/.linuxbrew/opt/fzf/install --xdg --key-bindings --completion \
	--no-update-rc --no-zsh --no-fish

# lunarvim (after neovim)
if ! [ -x "$(command -v lvim)" ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 'lunarvim'..."
	url=https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
	curl -sSf "$url" |
		bash -s -- -y --no-install-dependencies
	rm "$HOME/.config/lvim/config.lua"
	rm "$HOME/.config/lvim/lazy-lock.json"
	./run-dotbot
fi

# npm (after brew)
echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing 'prettier-plugin-toml'..."
npm install --location=global prettier-plugin-toml

# pipx (after brew)
packages=(
	asciinema
	bump2version
)
for package in "${packages[@]}"; do
	if [[ $(pipx list --short) =~ $package ]]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping '$package'..."
	else
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing '$package'..."
		pipx install "$package"
	fi
done

# pyenv (after brew)
sudo apt install -y \
	make \
	build-essential \
	curl \
	libbz2-dev \
	libffi-dev \
	liblzma-dev \
	libmysqlclient-dev \
	libncursesw5-dev \
	libpq-dev \
	libreadline-dev \
	libsqlite3-dev \
	libssl-dev \
	libxml2-dev \
	libxmlsec1-dev \
	llvm \
	python3-dev \
	python3-tk \
	tk-dev \
	unixodbc-dev \
	wget \
	xz-utils \
	zlib1g-dev
for version in 3.9 3.10 3.11; do
	if [[ $(pyenv versions) =~ $version ]]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping Python $version..."
	else
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing Python $version..."
		CC="$(brew --prefix gcc)/bin/gcc-12" pyenv install "$version":latest
	fi
done

# snap
packages=(
	postman
	signal-desktop
	spotify
	telegram-desktop
	vlc
	whatsapp-for-linux
)
for package in "${packages[@]}"; do
	if [[ $(snap list) =~ $package ]]; then
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Skipping '$package'..."
	else
		echo "$(date '+%Y-%m-%d %H:%M:%S'): Installing '$package'..."
		sudo snap install "$package"
	fi
done

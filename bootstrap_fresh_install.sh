#!/bin/bash
set -euo pipefail

# Ubuntu Server bootstrap script
sudo apt update
sudo apt upgrade -y

# Utilities and QoL improvements
sudo apt install -y byobu git wget curl gcc make bat eza ripgrep zip unzip lazygit
# fzf - https://github.com/junegunn/fzf#using-git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
# Astral Python tools: uv, ruff, ty
curl -LsSf https://astral.sh/uv/install.sh | sh
~/.local/bin/uv tool install ruff@latest
curl -LsSf https://astral.sh/ty/install.sh | sh
# Mise
curl https://mise.run | sh

# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
mkdir -p ~/.config
git clone https://github.com/ropable/nvim-config ~/.config/nvim
# Install a Nerd Font like Inconsolata:
# https://github.com/officialrajdeepsingh/nerd-fonts-installer

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm -f ~/.bashrc 2> /dev/null
ln -s "$DIR/bashrc" ~/.bashrc
rm -f ~/.bash_aliases 2> /dev/null
ln -s "$DIR/bash_aliases" ~/.bash_aliases
rm -f ~/.jshintrc 2> /dev/null
ln -s "$DIR/jshintrc" ~/.jshintrc
rm -f ~/.jshintignore 2> /dev/null
ln -s "$DIR/jshintignore" ~/.jshintignore
rm -f ~/.gitconfig 2> /dev/null
ln -s "$DIR/gitconfig" ~/.gitconfig
rm -f ~/.prettierrc 2> /dev/null
ln -s "$DIR/prettierrc" ~/.prettierrc

# sudo without password
# Don't do this on an internet=facing server
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER


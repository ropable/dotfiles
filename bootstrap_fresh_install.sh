# Ubuntu Server bootstrap script
sudo apt update
sudo apt upgrade -y

# Utilities and QoL improvements
sudo apt install -y byobu git wget curl gcc make bat eza ripgrep zip unzip
# fzf - https://github.com/junegunn/fzf#using-git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# Astral Python tools: uv, ruff, ty
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install ruff@latest
curl -LsSf https://astral.sh/ty/install.sh | sh
# Mise
curl https://mise.run | sh

# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
git clone https://github.com/ropable/nvim-config ~/.config/nvim
# Install a Nerd Font like Inconsolata:
# https://github.com/officialrajdeepsingh/nerd-fonts-installer

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc 2> /dev/null
ln -s "$DIR/bashrc" ~/.bashrc
rm ~/.bash_aliases 2> /dev/null
ln -s "$DIR/bash_aliases" ~/.bash_aliases
rm ~/.jshintrc 2> /dev/null
rm ~/.jshintignore 2> /dev/null
ln -s "$DIR/jshintrc" ~/.jshintrc && ln -s "$DIR/jshintignore" ~/.jshintignore
rm ~/.gitconfig 2> /dev/null
ln -s "$DIR/gitconfig" ~/.gitconfig
rm ~/.prettierrc 2> /dev/null
ln -s "$DIR/prettierrc" ~/.prettierrc

# sudo without password
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

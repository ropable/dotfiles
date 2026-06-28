# Ubuntu Server bootstrap script
sudo apt update
sudo apt upgrade -y

# Utilities and QoL improvements
sudo apt install -y byobu git wget curl bat eza ripgrep zip unzip
# fzf - https://github.com/junegunn/fzf#using-git
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# Astral Python tools: uv, ruff, ty
curl -LsSf https://astral.sh/uv/install.sh | sh
uv tool install ruff@latest
curl -LsSf https://astral.sh/ty/install.sh | sh
# Mise
curl https://mise.run | sh

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc
ln -s "$DIR/bashrc" ~/.bashrc
rm ~/.bash_aliases
ln -s "$DIR/bash_aliases" ~/.bash_aliases
rm ~/.jshintrc && rm ~/.jshintignore
ln -s "$DIR/jshintrc" ~/.jshintrc && ln -s "$DIR/jshintignore" ~/.jshintignore
rm ~/.gitconfig
ln -s "$DIR/gitconfig" ~/.gitconfig
rm ~/.prettierrc
ln -s "$DIR/prettierrc" ~/.prettierrc

# sudo without password
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

# Install bare essentials.
sudo apt update
sudo apt upgrade -y
# Install suggested Pyenv build environment dependencies
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install -y byobu git wget curl software-properties-common make build-essential flake8 \
libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncursesw5-dev xz-utils \
tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev zip unzip
# Exa doesn't seem to have an installation candiate on Ubuntu :/
# Manual install steps: https://the.exa.website/install/linux#manual
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
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc
# Install Python tools
cd ~
curl -Lo- https://pyenv.run | bash
curl -sSL https://install.python-poetry.org | python3 -
# sudo without password
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

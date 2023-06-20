# Install bare essentials.
sudo apt update
sudo apt upgrade -y
sudo apt install -y byobu git wget curl software-properties-common make build-essential flake8
# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc
ln -s "$DIR/bashrc" ~/.bashrc
rm ~/.bash_aliases
ln -s "$DIR/bash_aliases" ~/.bash_aliases
# Switched out for using Janus instead of a bunch of Git submodules.
rm ~/.vimrc.before && rm ~/.vimrc.after
ln -s "$DIR/vimrc.before" ~/.vimrc.before && ln -s "$DIR/vimrc.after" ~/.vimrc.after
rm ~/.jshintrc && rm ~/.jshintignore
ln -s "$DIR/jshintrc" ~/.jshintrc && ln -s "$DIR/jshintignore" ~/.jshintignore
rm ~/.gitconfig
ln -s "$DIR/gitconfig" ~/.gitconfig
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc
# Install Python tools
cd ~
#curl -sSl https://bootstrap.pypa.io/get-pip.py | python
curl -Lo- https://pyenv.run | bash
curl -sSL https://install.python-poetry.org | python3 -

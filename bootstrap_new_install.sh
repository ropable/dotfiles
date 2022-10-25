# Install bare essentials.
sudo apt update
sudo apt upgrade -y
sudo apt install -y byobu git wget curl software-properties-common python-dev \
    make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev llibffi-dev liblzma-dev python-openssl
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
rm ~/.hgrc
ln -s "$DIR/hgrc" ~/.hgrc
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc
# Install Python tools
cd ~
curl -sSl https://bootstrap.pypa.io/get-pip.py | python
curl -Lo- https://pyenv.run | bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

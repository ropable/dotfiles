# Install bare essentials.
sudo apt-get update && sudo apt-get install byobu git mercurial curl python-software-properties python-dev rake python-flake8
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && sudo -H python get-pip.py && sudo pip install virtualenv virtualenvwrapper
# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc
ln -s "$DIR/bashrc" ~/.bashrc
rm ~/.bash_aliases
ln -s "$DIR/bashrc" ~/.bash_aliases
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
# Create .ssh directory and generate an RSA key.
cd ~
mkdir -p .ssh && cd .ssh && ssh-keygen -f id_rsa -t rsa -N ''

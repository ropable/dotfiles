cd ~
# Install bare essentials.
sudo apt-get update && sudo apt-get install byobu git mercurial curl python-software-properties rake
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && sudo python get-pip.py && sudo pip install virtualenv virtualenvwrapper
# Download bash aliases.
wget -q -O - "$@" https://alias.sh/user/603/alias >> ~/.bash_aliases
# Create .ssh directory and generate an RSA key.
mcd .ssh && ssh-keygen -f id_rsa -t rsa -N ''

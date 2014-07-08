# Install bare essentials.
cd ~
<<<<<<< HEAD
sudo apt-get update && sudo apt-get install byobu git mercurial curl python-software-properties python-dev rake
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && sudo python get-pip.py && sudo pip install virtualenv virtualenvwrapper
=======
# Download bash aliases.
wget -q -O - "$@" https://alias.sh/user/603/alias >> ~/.bash_aliases
# Create .ssh directory and generate an RSA key.
mcd .ssh && ssh-keygen -f id_rsa -t rsa -N ''
>>>>>>> cd3c34e89d8386c7849780c08300db0fc66f63fb

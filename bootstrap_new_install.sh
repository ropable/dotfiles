# Install bare essentials.
cd ~
sudo apt-get update
sudo apt-get install byobu git mercurial curl python-software-properties python-dev
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper

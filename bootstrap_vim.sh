# Install Vim and such.
cd ~
sudo apt-get install vim rake
# Install Janus.
curl -Lo- https://bit.ly/janus-bootstrap | bash
# Make a .janus directory
mkdir ~/.janus
# Install vim-flake8
cd ~/.janus
git clone git@github.com:nvie/vim-flake8.git

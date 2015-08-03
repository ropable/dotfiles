# Install Vim and such.
cd ~
sudo apt-get install vim rake
# Install Janus.
curl -Lo- https://bit.ly/janus-bootstrap | bash
# Make a .janus directory
mkdir ~/.janus
cd ~/.janus
# Install vim-flake8
git clone https://github.com/nvie/vim-flake8.git
# Install rust.vim
git clone https://github.com/rust-lang/rust.vim.git

# Install Vim and rake (for Janus)
cd ~
sudo apt-get install vim rake
# Install Janus (yay for curl-ing scripts from the Internet!)
curl -Lo- https://bit.ly/janus-bootstrap | bash
# Make a .janus directory
mkdir -p ~/.janus
cd ~/.janus
# Install vim-flake8
git clone https://github.com/nvie/vim-flake8.git
# Install rust.vim
git clone https://github.com/rust-lang/rust.vim.git
# Install jshint2.vim
git clone https://github.com/Shutnik/jshint2.vim.git

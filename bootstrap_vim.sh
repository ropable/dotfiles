rm ~/.vimrc.before ~/.vimrc.after
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Symlink vimrc.before and vimrc.after to the home dir.
ln -s vimrc.before ~/.vimrc.before
ln -s "$DIR/vimrc.before" ~/.vimrc.before
ln -s "$DIR/vimrc.after" ~/.vimrc.after
# Install Vim and rake (for Janus)
cd ~
sudo apt-get install vim rake
# Install Janus (yay for curl-ing scripts from the Internet!)
curl -Lo- https://bit.ly/janus-bootstrap | bash
# Make a .janus directory
mkdir -p ~/.janus
cd ~/.janus
# Install vim-flake8
git clone --depth 1 https://github.com/nvie/vim-flake8.git
# Install rust.vim
git clone --depth 1 https://github.com/rust-lang/rust.vim.git
# Install jshint2.vim
git clone --depth 1 https://github.com/Shutnik/jshint2.vim.git
# vim-javascript
git clone --depth 1 https://github.com/pangloss/vim-javascript.git
# delimitMate (worked better than auto-pairs)
git clone --depth 1 https://github.com/Raimondi/delimitMate.git
# vim-closetag
git clone --depth 1 https://github.com/alvan/vim-closetag.git

# Issue with 'Error detected while processing...'
echo "Visit https://github.com/carlhuda/janus/issues/716"

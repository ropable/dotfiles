DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc
ln -s "$DIR/bashrc" ~/.bashrc
# Switched out for using Janus instead of a bunch of Git submodules.
#rm -r ~/.vim/bundle
#rm -r ~/.vim
#rm ~/.vimrc
#ln -s "$DIR/vimrc" ~/.vimrc
#ln -s "$DIR/vim-pathogen" ~/.vim
#ln -s "$DIR/bundle" ~/.vim/bundle
rm ~/.vimrc.before && rm ~/.vimrc.after
ln -s "$DIR/vimrc.before" ~/.vimrc.before && ln -s "$DIR/vimrc.after" ~/.vimrc.after
rm ~/.jshintrc && rm ~/.jshintignore
ln -s "$DIR/jshintrc" ~/.jshintrc && ln -s "$DIR/jshintignore" ~/.jshintignore
rm ~/.gitconfig
ln -s "$DIR/gitconfig" ~/.gitconfig
rm ~/.hgrc
ln -s "$DIR/hgrc" ~/.hgrc
# Install bash alias from alias.sh
rm ~/.bash_aliases
wget -q -O - "$@" https://alias.sh/user/603/alias >> ~/.bash_aliases
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.bashrc
ln -s "$DIR/bashrc" ~/.bashrc
rm -r ~/.vim/bundle
rm -r ~/.vim
rm ~/.vimrc
ln -s "$DIR/vimrc" ~/.vimrc
ln -s "$DIR/vim-pathogen" ~/.vim
ln -s "$DIR/bundle" ~/.vim/bundle
rm ~/.jshintrc && rm ~/.jshintignore
ln -s "$DIR/jshintrc" ~/.jshintrc && ln -s "$DIR/jshintignore" ~/.jshintignore
rm ~/.gitconfig
ln -s "$DIR/gitconfig" ~/.gitconfig

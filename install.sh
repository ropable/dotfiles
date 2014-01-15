DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.vimrc && rm ~/.vim
ln -s "$DIR/vimrc" ~/.vimrc && ln -s "$DIR/vim" ~/.vim && ln -s "$DIR/bundle" ~/.vim/bundle

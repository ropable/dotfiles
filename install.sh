DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if (rm ~/.vimrc && rm ~/.vim); then
    echo 'Removed old .vim and .vimrc'
fi
ln -s "$DIR/vimrc" ~/.vimrc && ln -s "$DIR/vim" ~/.vim && ln -s "$DIR/bundle" ~/.vim/bundle

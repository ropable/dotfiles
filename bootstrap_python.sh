DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc

# Install Python tools (pyenv, Poetry)
cd ~
curl -Lo- https://pyenv.run | bash
curl -sSL https://install.python-poetry.org | python3 -

echo "Remember to set pyenv and Poetry config in .bashrc.local and .profile"

# References:
# - https://github.com/pyenv/pyenv#basic-github-checkout
# - https://python-poetry.org/docs/managing-environments/


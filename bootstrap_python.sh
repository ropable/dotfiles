DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc
cd ~

# Install Python pyenv
# https://github.com/pyenv/pyenv-installer
curl https://pyenv.run | bash
# Remember to set pyenv config in .bashrc.local and .profile
# https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv

# Install Poetry
# https://python-poetry.org/docs/#installing-with-the-official-installer
# - https://python-poetry.org/docs/managing-environments/
# - https://python-poetry.org/docs/configuration/
curl -sSL https://install.python-poetry.org | python3 -
# Remember to set:
# poetry config virtualenvs.prefer-active-python true
# poetry config virtualenvs.in-project true

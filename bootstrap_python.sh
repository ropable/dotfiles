sudo apt update

# Install suggested Pyenv build environment dependencies
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

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
# Poetry config:
poetry config virtualenvs.prefer-active-python true
poetry config virtualenvs.in-project true
# Install the Poetry Shell plugin: https://github.com/python-poetry/poetry-plugin-shell
poetry self add poetry-plugin-shell

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc

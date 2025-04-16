sudo apt update

# Install suggested Pyenv build environment dependencies
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc

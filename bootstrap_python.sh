#!/bin/bash
set -euo pipefail

sudo apt update

# Install suggested Pyenv build environment dependencies
# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Create symlinks
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.pypirc
ln -s "$DIR/pypirc" ~/.pypirc

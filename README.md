A half-assed attempt to get my dotfiles organised and version-controlled.

# Overview

I'm using [Janus](https://github.com/carlhuda/janus) to handle most of my
Vim customisation now. The relevant portions of my vimrc are now moved into
the vimrc.before and vimrc.after files.

Note that the `bootstrap_vim.sh` script will install Janus and Vim
plugins.

## Adding Vim plugins/customising Janus

Modify the `bootstrap_vim.sh` script to clone Vim plugins to the
`.janus` directory.

# Installation

For basic bootstraping from a fresh install, run `bootstrap_new_install.sh`.

# JavaScript hinting

Refer to [this StackOverflow post](http://stackoverflow.com/questions/473478/vim-jslint).

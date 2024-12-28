# Overview

A half-assed attempt to get my dotfiles organised and version-controlled.

I'm using [Janus](https://github.com/carlhuda/janus) to handle most of my
Vim customisation now. The relevant portions of my vimrc are now moved into
the vimrc.before and vimrc.after files.

## Installation

For basic bootstraping from a fresh install, run `bootstrap_new_install.sh`.

Note that the `bootstrap_vim.sh` script will install Janus and Vim
plugins.

## Adding Vim plugins/customising Janus

Modify the `bootstrap_vim.sh` script to clone Vim plugins to the
`.janus` directory.

## Janus plugin error

    Error detected while processing ~/.vim/janus/vim/tools/tlib/plugin/02tlib.vim:
    line   77: E1208: -complete used without allowing argumentsPress ENTER or type command to continue

cd to `~/.vim/janus/vim/tools` and run `git submodule update --remote tlib`

Reference: <https://github.com/carlhuda/janus/issues/716>

## JavaScript hinting

Refer to [this StackOverflow post](http://stackoverflow.com/questions/473478/vim-jslint).

## Useful CLI tools

- eza (modern `ls` replacement) - <https://github.com/eza-community/eza>
- fzf (fuzzy finder) - <https://andrew-quinn.me/fzf/>
- ripgrep - <https://github.com/BurntSushi/ripgrep>
- bat (cat with wings) <https://github.com/sharkdp/bat>
- doggo (CLI DNS for humans) - <https://doggo.mrkaran.dev/docs/>

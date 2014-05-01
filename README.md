A half-assed attempt to get my dotfiles organised and version-controlled.

# Installation

I'm using [Janus](https://github.com/carlhuda/janus) to handle most of my
Vim customisation now. The relevant portions of my vimrc are now moved into
the vimrc.before and vimrc.after files.

To install Janus, use the [automatic
installer](https://github.com/carlhuda/janus/blob/master/bootstrap.sh),
which backs up any Vim files found in your home folder and installs
Janus.

Basic bootstraping from a fresh install is as follows (WIP, combines a couple
of bootstrap scripts together):

```bash
$ cd ~
$ sudo apt-get update && sudo apt-get install byobu vim git mercurial curl python-software-properties rake
$ wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py && sudo python get-pip.py && sudo pip install virtualenv virtualenvwrapper
$ wget -q -O - "$@" https://alias.sh/user/603/alias >> ~/.bash_aliases
$ mcd .ssh && ssh-keygen -f id_rsa -t rsa -N ''
$ cd ~
$ curl -Lo- https://bit.ly/janus-bootstrap | bash
$ git clone git@bitbucket.org:ropable/dotfiles.git
$ cd dotfiles
$ ./install.sh
```

# JavaScript hinting

Refer to [this StackOverflow post](http://stackoverflow.com/questions/473478/vim-jslint).

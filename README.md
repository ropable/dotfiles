A half-assed attempt to get my dotfiles organised and version-controlled.

# Installation

I'm using [Janus](https://github.com/carlhuda/janus) to handle most of my
Vim customisation now. The relevant portions of my vimrc are now moved into
the vimrc.before and vimrc.after files.

To install Janus, use the [automatic
installer](https://github.com/carlhuda/janus/blob/master/bootstrap.sh),
which backs up any Vim files found in your home folder and installs
Janus.

```bash
$ curl -Lo- https://bit.ly/janus-bootstrap | bash
$ git clone git@bitbucket.org:ropable/dotfiles.git
$ cd dotfiles
$ ./install.sh
```

# JavaScript hinting

Refer to [this StackOverflow post](http://stackoverflow.com/questions/473478/vim-jslint).

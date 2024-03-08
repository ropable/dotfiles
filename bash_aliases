function mcd() {
  mkdir -p "$1" && cd "$1";
}

# some more ls aliases
alias ll='exa -lah'
alias lt='exa -Tl --ignore-glob="*__pycache__*"'
alias la='ls -A'
alias l='ls -CF'


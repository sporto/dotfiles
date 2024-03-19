export GPG_TTY=$(tty)

# https://github.com/marlonrichert/zsh-snap
# Plugin manager for zsh
# Download Znap, if it's not there yet.
[[ -r ~/.znap/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.znap/znap
source ~/.znap/znap/znap.zsh  # Start Znap

# https://github.com/marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-autocomplete

alias dc="docker compose"
alias fa="flox activate"

eval "$(atuin init zsh)"
eval "$(flox activate --dir ~)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

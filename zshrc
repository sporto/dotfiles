export GPG_TTY=$(tty)
export EDITOR=hx

# https://github.com/marlonrichert/zsh-snap
# Plugin manager for zsh
# Download Znap, if it's not there yet.
[[ -r ~/.znap/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.znap/znap
source ~/.znap/znap/znap.zsh  # Start Znap

# https://github.com/marlonrichert/zsh-autocomplete
znap source marlonrichert/zsh-autocomplete

alias j="just"
alias co="gh copilot"
alias dc="docker compose"
alias fa="flox activate -- zsh"
alias reload="source ~/.zshrc"

# Activate flox default environment
# Flox needs to be loaded first, so the others can be found
eval "$(flox activate --dir ~)"

eval "$(atuin init zsh)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# https://github.com/josephschmitt/zide
export PATH="$PATH:$HOME/.config/zide/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/sebastian/.lmstudio/bin"

# Add wezterm cli
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"

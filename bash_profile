##################################################
export PATH=~/bin::$PATH
export PATH=/usr/local/bin:$PATH # homebrew paths
export PATH=/usr/local/share/npm/bin:$PATH # node modules
export PATH=~/GoDev/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
##################################################


##################################################
# Env vars
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export GOPATH=~/GoDev
# export HOMEBREW_SOURCEFORGE_MIRROR=internode
export LOAD_GEMS_FROM_LOCAL=1
# For VIM to use 256 colors
export TERM=xterm-256color
##################################################


##################################################
# Git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
##################################################


##################################################
# To display git branch  
parse_git_branch() {  
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'  
}

if [[ ${EUID} == 0 ]] ; then
  PS1='\[\033[01;31m\]\u@\h \[\033[01;34m\]\w\[\033[01;35m\]$(parse_git_branch)\[\033[01;34m\] \$ \[\033[00m\]'  
else  
  PS1='\[\033[01;00m\]\w\[\033[00;33m\]$(parse_git_branch)\[\033[00m\] ›› '
fi
##################################################


##################################################
# Change the window title of X terminals  
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
#########################



##################################################
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
##################################################

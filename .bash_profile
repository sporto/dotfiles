export PATH=~/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/libexec:/usr/local/git/bin:/usr/local/mysql/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export HOMEBREW_SOURCEFORGE_MIRROR=internode

export GOPATH=~/GoDev
export PATH=~/GoDev/bin:$PATH

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Git autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

# To display git branch  
parse_git_branch() {  
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'  
}  
  
if [[ ${EUID} == 0 ]] ; then  
PS1='\[\033[01;31m\]\u@\h \[\033[01;34m\]\w\[\033[01;35m\]$(parse_git_branch)\[\033[01;34m\] \$ \[\033[00m\]'  
else  
PS1='\[\033[01;00m\]\w\[\033[00;33m\]$(parse_git_branch)\[\033[00m\] \$ '  
fi  
  
# Change the window title of X terminals  
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'  
  
# End of Git branch config  

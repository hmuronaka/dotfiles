# .bash_profile

export LSCOLORS=gxfxcxdxbxegedabagacad

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
 
# User specific environment and startup programs
 
PATH=$PATH:$HOME/bin
export PATH

alias b='bundle'
alias be='bundle exec'
alias ber='bundle exec rails'
alias bers='ber s'
alias bec='be cap'
alias bpv='vim ~/.bash_profile'
alias bps='source ~/.bash_profile'
alias ls='ls -vxFGa'
alias s='sudo'
alias tw='t update'
alias v='vim'

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

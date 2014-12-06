export LSCOLORS=gxfxcxdxbxegedabagacad

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

function cdd() {
  cd "$1";
  if [ $? -eq 0 ]; then
    ls;
  fi
}


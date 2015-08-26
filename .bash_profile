# .bash_profile
PATH=$PATH:$HOME/bin
export PATH
export LSCOLORS=gxfxcxdxbxegedabagacad

export DB_USERNAME='money_life'
export DB_PASSWORD='money_life'
export DB_NAME='money_life'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,chefrc,rubyrc}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific aliases and functions
source ~/dotfiles/git-completion.bash
source ~/dotfiles/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\W:$(__git_ps1)\[\033[00m\]\$ '
export PATH=$PATH:~/src/plusadd/hm/pylearn2/pylearn2/scripts
export PYLEARN2_VIEWER_COMMAND="open -Wn"
export PYLEARN2_DATA_PATH=~/src/plusadd/hm/pylearn2/pylearn2/scripts/tutorials/grbm_smd/

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.xcode_scripts/xcode_script.bash ]; then
  . ~/.xcode_scripts/xcode_script.bash
fi

set -o vi

p() {
  pushd "$1"
  ls
}

stty discard undef

if [ -f ~/.inputrc ]; then
  bind -f ~/.inputrc
fi

if [ -f ~/src/scripts/favorites/bin/favorites ]; then
  f() {
    if [ $# -eq 0 ]; then
      SELECTED_PATH=`~/src/scripts/favorites/bin/favorites`
      pushd "${SELECTED_PATH}"
    elif [ "$0" =~ "^--"  ]; then
      ~/src/scripts/favorites/bin/favorites $@
    else # move dir
      SELECTED_PATH=`~/src/scripts/favorites/bin/favorites $@`
      pushd "${SELECTED_PATH}"
    fi
  }

  _f() {
    FAVORITE_NAMES=`~/src/scripts/favorites/bin/favorites --list-names`
    COMPREPLY=( `compgen -W "${FAVORITE_NAMES}" $2`)
  }

  complete -F _f f
fi



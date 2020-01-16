# .bash_profile
PATH=$PATH:$HOME/bin:/Users/hmuronaka/Library/Android/sdk/platform-tools
export PATH
export LSCOLORS=gxfxcxdxbxegedabagacad

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
source ~/dotfiles/gulp-prompt.sh


GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u\[\033[00m\]:\W:$(__gulp_ps1_):$(__git_ps1)\[\033[00m\]\$ '
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

if [ -f ~/.favorite_directories/favorite_directories.bash ]; then
  source ~/.favorite_directories/favorite_directories.bash
fi

source ~/dotfiles/bin/ll.bash

# For pod update completion

#_pod() {
#  PODLIST=`hm_podlist`
#  COMPREPLY=( `compgen -W "${PODLIST}" $2` )
#}
#
#complete -F _pod pod

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
fi

awscli_path=`which aws_completer`
if [ -f $awscli_path ]; then
  complete -C $awscli_path aws
fi

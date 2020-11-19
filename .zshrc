### prezto install
PREZTO_PATH="${ZDOTDIR:-$HOME}/.zprezto"
if [ ! -d "$PREZTO_PATH" ]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "$PREZTO_PATH"
fi
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

########################################
### setup zinit from zinit's README

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Plugin history-search-multi-word loaded with investigating.
zinit load zdharma/history-search-multi-word

# Load the pure theme, with zsh-async library that's bundled with it.
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma.org/zinit/wiki/For-Syntax/
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma/fast-syntax-highlighting \
                zdharma/history-search-multi-word \
    light-mode pick"async.zsh" src"pure.zsh" \
                sindresorhus/pure

# End of zinit's README
#
########################################
# setup prezto
zinit snippet 'https://github.com/sorin-ionescu/prezto/blob/master/modules/helper/init.zsh'

setopt EXTENDED_GLOB
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

#
#
# End of setup zinit
########################################
# zsh
# cdなくてもcd
setopt AUTO_CD
# vim bind
bindkey -v


# npm completion
zinit light "lukechilds/zsh-better-npm-completion"



#
# dotfiles
export PATH="$HOME/bin:$PATH:~/.cargo/bin"
source ~/.aliases
source ~/dotfiles/google.sh

########################################
# key-binding
#

# 参考 https://qiita.com/sfuta/items/a72f7bd194a61353c9fe
__popd() { popd; zle reset-prompt }
zle -N __popd
bindkey '^O' __popd

########################################
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

########################################
# rubyenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/shims:$PATH"

########################################
# cdrを有効にする
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Recent-Directories

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*:*:cdr:*:*' menu selection

########################################
## git prompt
zinit load olivierverdier/zsh-git-prompt
PROMPT='%B%m%~%b$(git_super_status) %# '

########################################
## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
#
# end of dotfiles


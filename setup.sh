#!/bin/sh
HOME=~
DOTDIR=dotfiles

DOT_FILES="
.vimrc
.xvimrc
.vim
.zshrc
.path
.exports
.aliases
.functions
.extra
.rubyrc
.snippets
.pryrc
.agignore
.gitignore_global
.inputrc
"

DATESTR=`date +"%Y%m%d%k%M%S"`
BACKUPDIR=$HOME/$DATESTR
mkdir $BACKUPDIR

# バックアップ作成と
# シンボリックリンク作成
for FILE in $DOT_FILES
do
  OLDFILE=$HOME/$FILE
  if [ -a $OLDFILE ]; then
    mv $OLDFILE $BACKUPDIR/
  fi

  DOTFILE=${HOME}/${DOTDIR}/${FILE}
  if [ -a $DOTFILE ]; then
    ln -sf $DOTFILE $OLDFILE
  fi
done


SOURCES="
.bash_profile
"

# source実行
for FILE in ${FILELIST};
do
  SRCFILE=$HOME/$FILE
  if [ -a $SRCFILE ]; then
    source $SRCFILE
  fi
done

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#submodule init
git submodule init
git submodule update

#config
mkdir $HOME/.config
ln -sf $HOME/$DOT_FILES/config/peco $HOME/.config/peco

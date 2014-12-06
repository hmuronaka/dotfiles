#!/bin/sh
HOME=~
DOTDIR=dotfiles

DOT_FILES="
.vimrc
.xvimrc
.vim
.bashrc
.bash_profile
"

DATESTR=`date +"%Y%m%d%k%M%S"`
BACKUPDIR=$HOME/$DATESTR
mkdir $BACKUPDIR

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

for FILE in ${FILELIST};
do
  SRCFILE=$HOME/$FILE
  if [ -a $SRCFILE ]; then
    source $SRCFILE
  fi
done


#!/bin/sh
HOME=~
DOTDIR=dotfiles

DOT_FILES="
.vimrc
.xvimrc
.vim
.bashrc
.bash_profile
.path
.bash_prompt
.exports
.aliases
.functions
.extra
.rubyrc
.snippets
.pryrc
.agignore
.chefrc
.gitignore_global
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

#neobundle setup
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

#submodule init
git submodule init
git submodule update

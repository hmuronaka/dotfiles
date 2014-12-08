set nocompatible " be iMproved
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive.git'
# CakePHPを利用する場合
Bundle 'violetyk/cake.vim'

call vundle#end()

:source ~/.vim/vimrcs/common.vimrc
:source ~/.vim/vimrcs/vimproject.vimrc
:source ~/.vim/vimrcs/ruby.vimrc

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

:source ~/.vim/vimrcs/neobundles.vimrc
:source ~/.vim/vimrcs/neocomplcache.vimrc
:source ~/.vim/vimrcs/neocomplcache_snippets.vimrc
:source ~/.vim/vimrcs/unite.vimrc

call neobundle#end()

"neocomplcacheの補完の色を見やすくする設定
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=0
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

syntax on

"コメントを見やすくする
"syntax on より後にしないとダメ。
highlight Comment ctermfg=93

filetype on
filetype indent on
filetype plugin indent on


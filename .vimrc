set nocompatible " be iMproved
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmark/vundle'
Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-rails.git'

:source ~/.vim/vimrcs/common.vimrc
:source ~/.vim/vimrcs/vimproject.vimrc
:source ~/.vim/vimrcs/ruby.vimrc

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

:source ~/.vim/vimrcs/neobundles.vimrc
:source ~/.vim/vimrcs/neocomplcache.vimrc
:source ~/.vim/vimrcs/neocomplcache_snippets.vimrc

"neocomplcacheの補完の色を見やすくする設定
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=0
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
syntax on
filetype on
filetype indent on
filetype plugin indent on


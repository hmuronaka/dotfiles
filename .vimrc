set nocompatible " be iMproved
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-fugitive.git'
" CakePHPを利用する場合
Bundle 'violetyk/cake.vim'
Bundle 'scrooloose/syntastic'

call vundle#end()

:source ~/.vim/vimrcs/common.vimrc
:source ~/.vim/vimrcs/vimproject.vimrc
:source ~/.vim/vimrcs/ruby.vimrc
:source ~/.vim/vimrcs/python.vimrc
:source ~/.vim/vimrcs/tcomment.vimrc
" OSXのterminalでは利用できないため
" :source ~/.vim/vimrcs/vim-bracketed-paste.vimrc
:source ~/.vim/vimrcs/vim-indent-guides.vimrc
:source ~/.vim/vimrcs/vim-syntastic.vimrc

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

:source ~/.vim/vimrcs/neobundles.vimrc
:source ~/.vim/vimrcs/neocomplcache.vimrc
:source ~/.vim/vimrcs/neosnippet.vimrc
:source ~/.vim/vimrcs/unite.vimrc

call neobundle#end()

"neocomplcacheの補完の色を見やすくする設定
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=0
highlight DiffChange ctermfg=black
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set ruler

syntax on

"コメントを見やすくする
"syntax on より後にしないとダメ。
highlight Comment ctermfg=93

filetype on
filetype indent on
filetype plugin indent on

autocmd VimEnter * VimFiler -split -simple -winwidth=40 -no-quit
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:netrw_liststyle=3

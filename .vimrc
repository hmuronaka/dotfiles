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
Bundle 'neowit/vim-force.com'

call vundle#end()

:source ~/.vim/vimrcs/common.vimrc
:source ~/.vim/vimrcs/vimproject.vimrc
:source ~/.vim/vimrcs/ruby.vimrc
:source ~/.vim/vimrcs/python.vimrc
:source ~/.vim/vimrcs/tcomment.vimrc
" OSXのterminalでは利用できないため " :source ~/.vim/vimrcs/vim-bracketed-paste.vimrc
:source ~/.vim/vimrcs/vim-indent-guides.vimrc
:source ~/.vim/vimrcs/vim-syntastic.vimrc
:source ~/.vim/bundle/lightning-vim/plugin/lightning-vim.vim

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

:source ~/.vim/vimrcs/neobundles.vimrc
:source ~/.vim/vimrcs/neocomplcache.vimrc
:source ~/.vim/vimrcs/neosnippet.vimrc
:source ~/.vim/vimrcs/unite.vimrc

call neobundle#end()

set hlsearch

"neocomplcacheの補完の色を見やすくする設定
highlight Pmenu ctermbg=8
highlight PmenuSel ctermbg=1
highlight PmenuSbar ctermbg=0
highlight DiffChange ctermfg=black
highlight Search ctermbg=brown
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

nnoremap g* :Ag <cword><CR>

let g:apex_backup_folder=expand('~/temp/apex_backup')
let g:apex_temp_folder=expand('~/temp/apex_temp')
let g:apex_properties_folder=expand('~/temp/apex_properties')
let g:apex_tooling_force_dot_com_path=expand('/Users/hmu/bin/tooling-force.com-0.3.8.0.jar')
let g:apex_workspace_path=expand('~/src/apex_workspaces')

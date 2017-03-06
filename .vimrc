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
Bundle 'szw/vim-tags'
Bundle 'gregsexton/gitv'
Bundle 'kchmck/vim-coffee-script'
Bundle 'majutsushi/tagbar'
Bundle 'neowit/vim-force.com'
Bundle 'lightning-vim'
Bundle 'hmuronaka/json_parser_vim'

call vundle#end()

:source ~/.vim/vimrcs/common.vimrc
:source ~/.vim/vimrcs/vimproject.vimrc
:source ~/.vim/vimrcs/ruby.vimrc
:source ~/.vim/vimrcs/slim.vimrc
:source ~/.vim/vimrcs/python.vimrc
:source ~/.vim/vimrcs/coffee.vimrc
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

"szw/vim-tags
let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"

set clipboard+=unnamed

"set autowrite " not strictly required, but without it you will be getting
               " errors when running commands that open new buffer 
			   " (e.g. :ApexQuery or :ApexExecuteAnonymous) on unsaved file
" (optional) if you want to enable server mode, uncoment 2 lines below
"let g:apex_server=1 " start server on first call
"let g:apex_server_timeoutSec=60*30 " allow server to wait for new connections within 30 minutes

let g:apex_tooling_force_dot_com_path=expand('~/bin/tooling-force.com-0.3.8.0.jar')
if !exists("g:apex_backup_folder")
  " full path required here, relative may not work
  let g:apex_backup_folder=expand('~/temp/apex/backup')
endif

if !exists("g:apex_temp_folder")
  " full path required here, relative may not work
  let g:apex_temp_folder=expand('~/temp/apex/deployment')
endif

if !exists("g:apex_properties_folder")
  " full path required here, relative may not work
  let g:apex_properties_folder=expand('~/temp/apex/secure-properties')
endif

let g:apex_workspace_path=expand('~/src/apex_workspaces')


"tagbar
nmap <F8> :TagbarToggle<CR>

function! s:Gulpwatch()
  exe 'split'
  exe 'resize +15'
  exe 'wincmd j'
  exe 'VimShell'
endfunction

command! -bang -buffer -nargs=0 Gulpwatch call s:Gulpwatch()




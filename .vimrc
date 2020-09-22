set nocompatible " be iMproved
filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'elzr/vim-json'
Plug 'gregsexton/gitv'
Plug 'mattn/emmet-vim'
Plug 'tomtom/tcomment_vim'
Plug 'leafgarland/typescript-vim'
Plug 'rking/ag.vim'
Plug 'neowit/vim-force.com'
Plug 'tpope/vim-surround'
Plug 'lambdalisue/vim-pyenv'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'thinca/vim-quickrun'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'neoclide/coc-tsserver'
Plug 'neoclide/coc-json'
"Plug 'clangd/coc-clangd'
"

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neomru.vim'

call plug#end()

source ~/.vim/vimrcs/common.vimrc

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
set encoding=utf-8
" https://vim-jp.org/vimdoc-ja/options.html#'iskeyword'
" https://qiita.com/YamasakiKenta/items/fee2a366348b9da345e8
set isk+=-
syntax on

"コメントを見やすくする
"syntax on より後にしないとダメ。
highlight Comment ctermfg=93

filetype on
filetype indent on
filetype plugin indent on

nnoremap g* :Ag <cword><CR>

" clipboard有効
set clipboard+=unnamed

"NERDTREE
nnoremap [nerdtree] <Nop>
nmap ,n [nerdtree]
"How can I map a specific key or shortcut to open NERDTree?
nmap <silent> [nerdtree] :NERDTreeToggle<CR>
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1

"emmit
let g:user_emmet_settings = {
  \  'vue' : {
  \    'extends' : 'html',
  \  }
  \}

""""""""""""""""""""""""""""""""""""""""
"easy-motion

" s{char}{char} to move to {char}{char}
nmap ,s <Plug>(easymotion-overwin-f2)

" Move to word
nmap ,w <Plug>(easymotion-overwin-w)"

"fzf
nnoremap [fzf] <Nop>
nmap ,f [fzf]
nnoremap <silent> [fzf] :GFiles<CR>

" show hidden file
let $FZF_DEFAULT_COMMAND='rg --hidden --files -g ''!.git'' '

""""""""""""""""""""""""""""""""""""""""
"prettier
let g:prettier#autoformat = 1
"Allow auto formatting for files without "@format" or "@prettier" tag
let g:prettier#autoformat_require_pragma = 0

" coc
" https://github.com/neoclide/coc.nvim#example-vim-configuration
:source ~/.vim/vimrcs/coc.vimrc

"denite
:source ~/.vim/vimrcs/denite.vimrc

"closing-tag
:source ~/.vim/vimrcs/closing-tag.vimrc

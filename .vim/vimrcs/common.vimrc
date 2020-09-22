" 裏バッファへ切り替える
"nnoremap <C-j> <C-^>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> ,w :w<CR>
nnoremap <silent> [t :tabprevious<CR>
nnoremap <silent> ]t :tabnext<CR>
nnoremap <silent> [c :cprevious<CR>zz
nnoremap <silent> ]c :cnext<CR>zz

nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


inoremap <C-j> <ESC>
inoremap <C-k> <ENTER>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

""vimgrepでQuickFixを表示する。
"augroup grepopen
"  autocmd!
"  autocmd QuickfixCmdPost *grep* cw
"augroup END 

set number



" 裏バッファへ切り替える
"nnoremap <C-j> <C-^>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> ,w :w<CR>
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

inoremap <silent> jj <ESC>
inoremap <silent> <C-j> j

"inoremap <C-j> <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

""vimgrepでQuickFixを表示する。
"augroup grepopen
"  autocmd!
"  autocmd QuickfixCmdPost *grep* cw
"augroup END 

set number

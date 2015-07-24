" 裏バッファへ切り替える
"nnoremap <C-j> <C-^>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> ,w :w<CR>

nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

""vimgrepでQuickFixを表示する。
"augroup grepopen
"  autocmd!
"  autocmd QuickfixCmdPost *grep* cw
"augroup END 

set number

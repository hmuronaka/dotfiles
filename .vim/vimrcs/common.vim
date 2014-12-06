" 裏バッファへ切り替える
nnoremap <C-j> <C-^>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

"vimgrepでQuickFixを表示する。
augroup grepopen
  autocmd!
  autocmd QuickfixCmdPost *grep* cw
augroup END 

set number

augroup rubysyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END

" rubyを実行
" eが潰れるのが嫌なのでコメントアウト
"nnoremap <C-e><C-r> :w<CR> :!ruby %<CR>

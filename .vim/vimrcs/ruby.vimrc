augroup rubysyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END

" rubyを実行
nnoremap <C-e><C-r> :w<CR> :!ruby %<CR>

augroup rubysyntaxcheck
  autocmd!
  autocmd BufWrite *.rb w !ruby -c
augroup END

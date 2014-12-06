"project.vimの設定
:let g:proj_flags="imstc"
:nmap <silent> <Leader>P <Plug>ToggleProject
:nmap <silent> <Leader>p :Project<CR>

autocmd BufAdd .vimprojects silent! %foldopen!

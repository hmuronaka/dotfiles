let g:syntastic_mode_map = { 'mode': 'passive', 
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': [] }

"VimFilerのstatuslineが潰れるのでコメントアウト
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

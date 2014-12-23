"tcommentで使用する形式を追加
if !exists('g:tcomment_types')
  let g:tcomment_types = {}
endif

let g:tcomment_types = {
      \'eruby_surround' : "<%% %s %%>",
      \'eruby_surround_minus' : "<%% %s -%%>",
      \'eruby_surround_equality' : "<%%= %s %%>",
      \'eruby_surround_comment' : "<%%# %s %%>",
\}

" マッピングを追加
function! SetErubyMapping2()
  nmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  nmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  nmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
  nmap <buffer> <C-_># :TCommentAs eruby_surround_comment<CR>
  
  vmap <buffer> <C-_>c :TCommentAs eruby_surround<CR>
  vmap <buffer> <C-_>- :TCommentAs eruby_surround_minus<CR>
  vmap <buffer> <C-_>= :TCommentAs eruby_surround_equality<CR>
  vmap <buffer> <C-_># :TCommentAs eruby_surround_comment<CR>
endfunction

" erubyのときだけ設定を追加
au FileType eruby call SetErubyMapping2()


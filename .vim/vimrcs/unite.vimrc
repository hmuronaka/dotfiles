"Unite
nnoremap <silent> ,u :<C-u>Unite file<CR>

""grep検索
nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

"カーソル位置の単語をgrep
nnoremap <silent> ,wg :<C-u>Unite grep:.  -buffer-name=search-buffer<CR><C-R><C-W>

"grep検索結果の再呼び出し
nnoremap <silent> ,r :<C-u>UniteResume search-buffer<CR>


"unite grep にagを使う
if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unitesource_grep_default_opts='--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt=''
endif

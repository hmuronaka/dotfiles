let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1

"Unite
nnoremap <silent> ,f :<C-u>Unite file file/new -buffer-name=file<CR>
nnoremap <silent> ,ufb :<C-u>Unite file buffer<CR>
nnoremap <silent> ,ub :<C-u>UniteWithBufferDir file file/new<CR>
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> ,ug :<C-u>Unite file_rec/git buffer<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,uh :<C-u>Unite history/yank <CR>

""grep検索
nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

"カーソル位置の単語をgrep
nnoremap <silent> ,wg :<C-u>Unite grep:.  -buffer-name=search-buffer<CR><C-R><C-W>

"grep検索結果の再呼び出し
nnoremap <silent> ,r :<C-u>UniteResume search-buffer<CR>

"unite grep にagを使う
if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt=''
endif

function! s:enable_vim_indent_guides() abort
  let g:indent_guides_enable_on_vim_startup=1
  let g:indent_guides_start_level=2
  let g:indent_guides_guide_size = 1
endfunction

au BufNewFile, BufRead *.coffe call s:enable_vim_indent_guides()


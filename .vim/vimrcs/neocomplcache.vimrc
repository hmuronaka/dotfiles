"neocomplcacheを有効にする
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_quick_match=1

# pythonのオムニ補完を無効にする場合
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = ''


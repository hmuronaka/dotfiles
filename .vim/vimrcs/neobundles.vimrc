NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
    \ },
  \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'othree/html5.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'matchit.zip'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'

"defに対するendなどを補完する.
NeoBundleLazy 'taichouchou2/vim-endwise.git', {
  \ 'autoload' : { 
  \   'insert' : 1,
  \ } } 

"defやendに対する%をマッチさせる.
NeoBundleLazy 'ruby-matchit', {
  \ 'autoload' : { 'filetypes' : ['ruby', 'eruby', 'haml'] } } 

NeoBundleLazy 'Shougo/neosnippet', {
  \ 'autoload' : { 
  \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
  \   'filetypes' : 'snippet',
  \   'insert'  : 1,
  \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
  \ }}

NeoBundleLazy 'thoughtbot/vim-rspec', {
  \ 'depends' : 'tpope/vim-dispatch',
  \ 'autoload' : { 'filetypes' : ['ruby'] }
  \}

let s:bundle = neobundle#get('vim-rspec')
function! s:bundle.hooks.on_source(bundle)
  let g:rspec_command = "Dispatch bundle exec rake spec {spec}"
endfunction


NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
au FileType javascript call JavaScriptFold()

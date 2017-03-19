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
NeoBundle 'vim-utils/vim-man'
NeoBundle 'vim-rails.git'
NeoBundle 'rking/ag.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'ternjs/tern_for_vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'ap/vim-css-color'
NeoBundle 'thinca/vim-quickrun'

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

NeoBundleLazy 'alpaca-tc/alpaca_tags', {
      \ 'depends': ['Shougo/vimproc'],
      \ 'autoload' : {
      \   'commands' : [
      \     { 'name' : 'AlpacaTagsBundle', 'complete': 'customlist,alpaca_tags#complete_source' },
      \     { 'name' : 'AlpacaTagsUpdate', 'complete': 'customlist,alpaca_tags#complete_source' },
      \     'AlpacaTagsSet', 'AlpacaTagsCleanCache', 'AlpacaTagsEnable', 'AlpacaTagsDisable', 'AlpacaTagsKillProcess', 'AlpacaTagsProcessStatus',
      \ ],
      \ }}

"markdownでプレビューを有効にするため
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a "Google Chrome"'

"easy-motion
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

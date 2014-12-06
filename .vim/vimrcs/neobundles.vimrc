NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'jpalardy/vim-slime'

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

if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif
set number
set expandtab
set softtabstop=2
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd VimEnter * NERDTree

Bundle 'gmarik/vundle'

Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
    
syntax on 
set background=dark
colorscheme solarized

set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

if has('gui_running')
  set guifont=Monaco:h12
endif

call pathogen#infect()

" General
filetype plugin on
filetype indent on

autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

autocmd VimEnter * NERDTree

set encoding=utf-8

" Colors and Fonts
syntax enable

set background=dark
colorscheme solarized
if has('win32')
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif has('macunix')
  set guifont=Menlo\ 12
  set shell=/bin/bash
elseif has('unix')
  set guifont=DejaVu\ Sans\ Mono\ 10
  set shell=/bin/bash
endif

" Text, tab and indent related
set number
set expandtab
set softtabstop=2

" Autocompile coffescript
autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Autocomplete for popular languages
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

set nocompatible                " choose no compatibility with legacy vi
set showcmd                     " display incomplete commands

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Files, backups and undo
set noswapfile
set nobackup
set nowb

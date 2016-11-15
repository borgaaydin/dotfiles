set nocompatible
call pathogen#infect()

" -- UI
set title
syntax enable

filetype on
filetype plugin on
filetype indent on

set background=dark
colorscheme desert

set mouse=a
set showmode
set number

set shiftwidth=4
set smarttab
set autoindent

set ruler
set wrap

set scrolloff=5
set colorcolumn=80

" -- Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" -- Beep
set visualbell
set noerrorbells

" -- Plugins
" autocmd vimenter * NERDTree

" -- Misc
set backspace=indent,eol,start
set hidden

" -- Avoid escape key
imap ;; <Esc>
map ;; <Esc>

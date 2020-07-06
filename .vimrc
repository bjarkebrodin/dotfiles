" Disable vi compatibility mode
set nocompatible

" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Enable relative line numbers
set relativenumber

" Disable startup message
set shortmess+=I

" Make backspace more intuitive
set backspace=indent,eol,start

" Make search case-insensitive until case search string is case-mixed
set ignorecase
set smartcase

" Enable search-as-you-type behaviour
set incsearch

" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a 

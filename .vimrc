" set tab to 2 spaces
  set expandtab
  set tabstop=2

" miscellaneous
	set shortmess+=I		" no startup msg
	set nocompatible 		" -vi compatibility

" style
	syntax on						" syntax highlighting

	set number 					" line numbers
	set relativenumber	" relative line numbers

" controls
	set autoindent
	
" better backspace 
	set backspace=indent,eol,start

" case-insensitive until case search string is case-mixed
	set ignorecase
	set smartcase

" search-as-you-type behaviour
	set incsearch
	set hlsearch

" 'Q' in normal mode enters Ex mode. You almost never want this.
	nmap Q <Nop>

" disable audible bell because it's annoying.
	set noerrorbells visualbell t_vb=



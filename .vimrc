filetype indent on

" no backups necessarry
set nobackup
set nowb
set noswapfile

" read when changed outside
set autoread

" miscellaneous
set shortmess+=I		" no startup msg
set nocompatible 		" -vi compatibility

" style
syntax on						" syntax highlighting
"set termguicolors  " broken on current build(arch not mac)
set number 					" line numbers
set relativenumber	" relative line numbers
set background=dark

colorscheme gruvbox

highlight Normal ctermbg=none 
highlight SignColumn ctermbg=none 
highlight LineNr ctermbg=none 

" indent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" controls
set autoindent
set smartindent
set wrap
																							
" better backspace 
set backspace=indent,eol,start

" case-insensitive until case search string is case-mixed
set ignorecase
set smartcase

" search-as-you-type behaviour
set incsearch
set hlsearch
set showmatch

" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" disable audible bell because it's annoying.
set noerrorbells 
set novisualbell 
set t_vb=
"set tm=500mode

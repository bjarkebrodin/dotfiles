filetype plugin on
filetype indent on

" shared clipboard
  set clipboard=unnamed

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
  set termguicolors
  set number 					" line numbers
  set relativenumber	" relative line numbers

  set background=dark
  colorscheme gruvbox

  highlight Normal ctermbg=none guibg=none
  highlight SignColumn ctermbg=none guibg=none
  highlight LineNr ctermbg=none guibg=none

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

" space in normal mode writes the file
  nmap <Space> :w<CR>
  
" disable audible bell because it's annoying.
  set noerrorbells 
  set novisualbell 
  set t_vb=
  set tm=500



"
" Python things
"

" makeshift comment macro -- todo: make a function for making this adaptive
  autocmd FileType python   nmap / i# <Esc>h
  
" lint using flake8 automatically each time you write: 
"   pip install flake8 if you don't have it already
"  autocmd FileType python autocmd BufWritePost *.py call flake8#Flake8()


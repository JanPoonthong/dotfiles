set encoding=utf-8

" Save searches
set viminfo+=/200

" Save history
set history=10000
set viminfo+=:10000

" Display
set nowrap
set ruler
set laststatus=2
set list
set listchars=
set sidescroll=5
set scrolloff=5

" Whitespace, indention, etc.
set sw=4 et
set softtabstop=-1
set ts=8
set nosmartindent
set cin noai
set tw=60 cc=60
set nojoinspaces

" Text manipulation
set bs=indent,eol,start
set completeopt=menu,preview

" Terminal window title
set title
set titlestring=%t
set titleold=

" Navigation
set nofoldenable
set relativenumber
set numberwidth=3
set nostartofline

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Searching
set hlsearch
set incsearch
set smartcase ignorecase

" Command line
set wildmenu
set wildmode=longest,full
set showcmd

" Syntax hilighting
syntax on
filetype on
filetype indent on
filetype plugin on
set background=dark
colorscheme elflord

" File management
set autowrite 

set clipboard=

set exrc secure

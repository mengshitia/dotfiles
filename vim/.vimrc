set nocp

set ruler
set number
set wildmenu

set hlsearch
set incsearch
set smartcase

set autoindent
set smartindent
set expandtab

set cmdheight=1
"set shiftwidth=2
"set tabstop=2
set encoding=utf-8
set fileformats=unix,dos,mac
set backspace=indent,eol,start

syntax enable
syntax on

filetype indent on
filetype plugin on

if has("gui_running")
  set background=dark
  set guifont=Source\ Code\ Pro\ 16
  colorscheme lilypink
  "colorscheme elflord
endif

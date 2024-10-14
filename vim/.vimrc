" vimrc
" 参考：https://github.com/lilydjwg/dotvim

" common
set nocompatible
set number
set cursorline
set cursorcolumn
set ruler
set wildmenu
set visualbell t_vb=

" search
set hlsearch
set incsearch
set smartcase

" edit
set delcombine " 组合字符一个个地删除
set autoindent
set smartindent
set smarttab
set expandtab
set backspace=indent,eol,start
set scrolloff=5
set laststatus=2 " 总是显示状态栏
set fileformats=unix,dos,mac
set fileencodings=utf-8
set encoding=utf-8
set shiftwidth=2

" tricky
try
  set matchpairs=(:),{:},[:],《:》,‘:’,“:”
catch /^Vim\%((\a\+)\)\=:E474/
endtry

syntax enable
syntax on

filetype indent on
filetype plugin on

packadd comment

if has("gui_running")
  set mousemodel=popup
  set columns=90
  set lines=32
  "colorscheme elflord
  colorscheme lilypink
  set guifont=Source\ Code\ Pro\ 16
endif

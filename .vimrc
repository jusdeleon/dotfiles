" Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" ========== General config ==========


" Map esc to jk for faster movement
imap jk <Esc>

set number " Line numbers
syntax on " Syntax highlighting
set autoread " Reload changed files outside vim
set cursorline


" ========== Indentation ==========


set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

filetype plugin on
filetype indent on


" ========== Search ==========


set incsearch " Find the next match as we type the search
set hlsearch " Highlight searches by default
set ignorecase " Ignore case when searching...
set smartcase " ...unless we type a capital
set wrap " Wrap lines


" ========== Turn off swap/undo files ========== 


set noswapfile
set nobackup
set nowb
set noundofile

syntax on
colorscheme jellybeans

set nocp
filetype plugin on

set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set hlsearch
set incsearch
set relativenumber
set scrolloff=8

" Set space to leader
nnoremap <SPACE> <Nop>
let mapleader = " "

" netrw
let g:netrw_winsize = 30
let g:netrw_banner = 0

nnoremap <leader>f :Explore %:p:h<enter>

nnoremap <leader>r :!clear&&%:p <enter>

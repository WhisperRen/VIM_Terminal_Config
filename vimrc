syntax on
syntax enable
set showmatch
set number
set wrap
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set smartcase

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap < <><ESC>i

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
if &term=="xterm"
	set t_Co=8
	set t_Sb=^[[4%dm
	set t_Sf=^[[3%dm
endif
filetype on


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'scrooloose/nerdtree'
Plug 'xavierd/clang_complete'
call plug#end()

"NERD Tree
let NERDTreeWinPos='left'
let NERDTreeWinsize=1
let NERDTreeMouseMode=2
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:clang_use_library=1
let g:clang_library_path = '/usr/lib/llvm-6.0/lib/'

set background=dark
set termguicolors
let g:quantum_black=1
colorscheme quantum

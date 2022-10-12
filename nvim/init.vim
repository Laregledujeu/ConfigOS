
lua require('plugins')

source /home/vym/.config/nvim/keymap.vim

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Enable syntax color
syntax on


let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'

" Number on lines
set number

set cursorline

set history=100

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

set nobackup

" Allow long line 
set nowrap

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Disable highlight brackets
let g:loaded_matchparen=1

" Change Cursor to line 
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" create line
let g:lightline = {
    \ 'colorscheme': 'onedark',
\ }

colo onedark 
" set highlight Cursor ctermbg=darkmagenta


" Press Tab for completion
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
